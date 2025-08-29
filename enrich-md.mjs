import fs from 'node:fs';
import path from 'node:path';

const VER = process.env.VER || (()=>{
  const verRoot = path.join('optimized-md','suite','help');
  if (!fs.existsSync(verRoot)) return '';
  const dirs = fs.readdirSync(verRoot).filter(d => fs.statSync(path.join(verRoot,d)).isDirectory());
  // pick the highest-looking version if multiple
  return dirs.sort().pop() || '';
})();

if (!VER) { console.error('Could not determine version under optimized-md/suite/help'); process.exit(1); }
const ROOT = path.join('optimized-md','suite','help',VER);

function *walk(dir){
  for (const name of fs.readdirSync(dir)) {
    const p = path.join(dir,name);
    const st = fs.statSync(p);
    if (st.isDirectory()) yield* walk(p);
    else if (name.endsWith('.md')) yield p;
  }
}

// crude YAML front-matter parser/updater
function updateFrontMatter(filePath, text) {
  const m = text.match(/^---\n([\s\S]*?)\n---\n([\s\S]*)$/);
  let fm = '', body = text;
  if (m) { fm = m[1]; body = m[2]; }
  const has = (k)=> new RegExp(`^${k}:`, 'm').test(fm);

  // derive fields
  const rel = path.relative(ROOT, filePath).replace(/\\/g,'/').replace(/\.md$/,'');
  const pageId = rel.replace(/--p\d+$/,''); // same id across multi-part chunks
  const h1 = body.match(/^\#\s+(.+)$/m)?.[1]?.trim() || '';
  const h2 = body.match(/^\#\#\s+(.+)$/m)?.[1]?.trim() || '';

  const add = [];
  if (!has('title') && h1) add.push(`title: "${h1.replace(/"/g,'\\"')}"`);
  if (!has('page_id')) add.push(`page_id: "${pageId}"`);
  if (!has('section') && h2) add.push(`section: "${h2.replace(/"/g,'\\"')}"`);
  if (!has('tags')) add.push(`tags: ["appian","docs","v${VER}"]`);

  if (!m) {
    if (!add.length) return text;
    return `---\n${add.join('\n')}\n---\n\n${body}`;
  } else if (add.length) {
    const fmNew = fm + (fm.endsWith('\n')?'':'\n') + add.join('\n');
    return `---\n${fmNew}\n---\n\n${body}`;
  } else {
    return text;
  }
}

let changed = 0, scanned = 0;
for (const f of walk(ROOT)) {
  scanned++;
  const txt = fs.readFileSync(f,'utf-8');
  const out = updateFrontMatter(f, txt);
  if (out !== txt) { fs.writeFileSync(f, out); changed++; }
}
console.log(`Enriched ${changed} of ${scanned} Markdown file(s) under ${ROOT}.`);
