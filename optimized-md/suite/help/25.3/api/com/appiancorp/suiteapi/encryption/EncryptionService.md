---
source_url: https://docs.appian.com/suite/help/25.3/api/com/appiancorp/suiteapi/encryption/EncryptionService.html
original_path: api/com/appiancorp/suiteapi/encryption/EncryptionService.html
version: "25.3"
title: "Interface EncryptionService"
page_id: "api/com/appiancorp/suiteapi/encryption/EncryptionService"
tags: ["appian","docs","v25.3"]
---


Package [com.appiancorp.suiteapi.encryption](package-summary.html)

# Interface EncryptionService

* * *

public interface EncryptionService

Service that provides the capability to encrypt plaintext values and decrypt values of type Encrypted Text.

Like other services, this service can be injected into plug-ins. In order for a plug-in to be authorized to use the \`EncryptionService\`, the plug-in must be granted access to it via the Plug-ins page of the Administration Console.

Do not create plug-in functions or smart services with these methods that simply take a plaintext value and return an encrypted form of it, or take an Encrypted Text value and return a decrypted form of it. Doing so will introduce the ability for designers to inadvertently expose sensitive data because the plaintext value passed to or returned from the encryption function or smart service will end up in the engine transaction logs.

Instead, use the [`encrypt(java.lang.String)`](#encrypt\(java.lang.String\)) method to safely return a sensitive value from a function or smart service that generates that sensitive value or retrieves it from an external source. Similarly, use the [`decrypt(com.appiancorp.suiteapi.type.TypedValue)`](#decrypt\(com.appiancorp.suiteapi.type.TypedValue\)) method within a function or smart service that takes an Encrypted Text input to decrypt the value before processing it or sending it securely to an external system.

See Also:

-   [`EncryptedTextDataType`](EncryptedTextDataType.html "annotation interface in com.appiancorp.suiteapi.encryption")

-   ## Method Summary

    All MethodsInstance MethodsAbstract Methods

    Modifier and Type

    Method

    Description

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[decrypt](#decrypt\(com.appiancorp.suiteapi.type.TypedValue\))([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") encryptedText)`

    Decrypts an [`AppianType.ENCRYPTED_TEXT`](../type/AppianType.html#ENCRYPTED_TEXT) value.

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[decryptFromString](#decryptFromString\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") myCypherText)`

    `[TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type")`

    `[encrypt](#encrypt\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") plaintext)`

    Encrypts a plaintext string into a [`TypedValue`](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") of type [`AppianType.ENCRYPTED_TEXT`](../type/AppianType.html#ENCRYPTED_TEXT).

    `[String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang")`

    `[encryptToString](#encryptToString\(java.lang.String\))([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") plaintext)`

-   ## Method Details

    -   ### encrypt

        [TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") encrypt([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") plaintext) throws [EncryptionException](../common/exceptions/EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Encrypts a plaintext string into a [`TypedValue`](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") of type [`AppianType.ENCRYPTED_TEXT`](../type/AppianType.html#ENCRYPTED_TEXT).

        Parameters:

        `plaintext` - plaintext string to encrypt

        Returns:

        EncryptedText representation of the encrypted value

        Throws:

        `[EncryptionException](../common/exceptions/EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the system cannot encrypt the given text

    -   ### encryptToString

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") encryptToString([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") plaintext) throws [EncryptionException](../common/exceptions/EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Parameters:

        `plaintext` - plaintext string to encrypt

        Returns:

        String representation of the encrypted text

        Throws:

        `[EncryptionException](../common/exceptions/EncryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if the system cannot encrypt the given text

    -   ### decrypt

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") decrypt([TypedValue](../type/TypedValue.html "class in com.appiancorp.suiteapi.type") encryptedText) throws [DecryptionException](../common/exceptions/DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Decrypts an [`AppianType.ENCRYPTED_TEXT`](../type/AppianType.html#ENCRYPTED_TEXT) value.

        Parameters:

        `encryptedText` - encrypted value to decrypt

        Returns:

        Plaintext string representation of the decrypted value

        Throws:

        `[DecryptionException](../common/exceptions/DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if decryption fails or if the encryptedText typed value is not of type [`AppianType.ENCRYPTED_TEXT`](../type/AppianType.html#ENCRYPTED_TEXT)

    -   ### decryptFromString

        [String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") decryptFromString([String](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/lang/String.html "class or interface in java.lang") myCypherText) throws [DecryptionException](../common/exceptions/DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")

        Parameters:

        `myCypherText` - encrypted string to decrypt

        Returns:

        Plaintext string representation of the decrypted value

        Throws:

        `[DecryptionException](../common/exceptions/DecryptionException.html "class in com.appiancorp.suiteapi.common.exceptions")` - if decryption fails