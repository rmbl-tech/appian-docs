---
source_url: https://docs.appian.com/suite/help/25.3/what-is-ai.html
original_path: what-is-ai.html
version: "25.3"
title: "What is Artificial Intelligence?"
page_id: "what-is-ai"
section: "What is artificial intelligence?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# What is Artificial Intelligence?

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Every day, artificial intelligence allows users to focus on more critical and meaningful work by delegating routine tasks to intelligent machines and software. Integrating AI capabilities like speech recognition, computer vision, or document extraction into your business applications can make your processes faster and more accurate.

Before you dive into all that Appian has to offer in the realm of artificial intelligence, let's start from the beginning.

## What is artificial intelligence?

**Artificial intelligence (AI)** is a system's capability to mimic human intelligence and apply this intelligence in problem solving, predictions, and other uncertain circumstances.

AI is powerful and compelling because it makes computers capable of responding to situations they weren't necessarily programmed to navigate. In contrast, technologies such as robotic process automation (RPA) are more rigid in their programming: the computer expects certain conditions and responds in predictable ways. It follows a program: if X, then Y. But if the computer encounters a condition it isn't programmed to handle, it stops and requires a human being to intervene.

AI, on the other hand, may be able to rely on past experience and adapt its actions based on what it's done previously. To save you time and effort, these machines rely on this stored knowledge – intelligence – to evaluate the situation, consider the options, and choose the best course of action.

In the realm of software, there are two key types of AI that can supplement your automation: discriminative models and generative models.

### Discriminative models

Discriminative models take an item as input (such as a document or image), evaluate that item for key characteristics, and predicts which established category that item might belong to. For example, a discriminative model can be used to determine if document is an invoice, purchase order, or receipt.

### Generative models

In contrast, generative models create _new_ content. Generative models take a prompt as input (such as a question or request). As the the model evaluates that request, it recalls what it knows about those characteristics. As it begins to formulate a response, it uses probability to determine what comes next.

The output is entirely new content. Rather than regurgitating information word-for-word, generative models can formulate more specific answers, crafted just for that prompt. Examples of generative models include chat bots and image generators.

**Note:**  Generative AI models sometimes produce "hallucinations," or responses that are inaccurate, inappropriate, or undesirable. Users should verify information in these responses for accuracy.

## What is machine learning?

**Machine learning (ML)** is a subset of AI. It is the process by which the system autonomously learns over time. When given large amounts of data, ML enables computers to learn from experience and improve future performance without being programmed to do so.

**Algorithms** are mathematical procedures implemented in code. Machine learning algorithms allow software systems to learn autonomously when given data.

A machine learning **model** is created when an algorithm is given data. The model is the result of what the algorithm learned from the data it analyzed.

Think of AI as the knowledge you have accumulated in preparation for a big test, and ML is your preparation for it. You study similar questions and practice how to solve problems that might arise. When test day comes, you use that knowledge and way of thinking to work through the questions presented to you.

## AI's evolution

As computers became more prevalent in the mid-20th century, scientists, mathematicians, and other experts were already thinking about how these machines could evolve their capabilities to solve problems. [Alan Turing famously devised a test](https://en.wikipedia.org/wiki/Turing_test) for artificial intelligence which challenged a machine to carry on a conversation. If the machine's responses made it difficult for an observer to tell if the conversation was occurring between a person and a machine (as opposed to two people), Turing said it was fair to say the machine was "thinking."

### Modern AI

AI is a concept often thought of in the realm of science fiction. An intelligent machine was represented in literature and media as something powerful and, for better or worse, lacking the things that make us human: emotions, mortality, and mistakes. AI is often represented as sinister, but there have been many light-hearted examples, such as [IBM's Watson competing on Jeopardy!](https://www.ibm.com/history/watson-jeopardy), to show how AI can be used in everyday life.

Societies and businesses are becoming more aware of how AI can make our lives easier and more pleasant. AI is everywhere in modern life, even if you don't notice it. Consider the following list of examples:

-   Do you use a streaming service to watch movies or television? When you finish your program, AI powers the suggestions you see for what to watch next.
-   Does your smartphone suggest apps based on the time of day or what you're currently looking at? AI is familiar with your browsing patterns and showing you something you might find useful.
-   Does your bank show you what the value of your portfolio might be in 10, 20, or 30 years? AI takes your spending behavior and market conditions into account to calculate these numbers.
-   Do you use social media? AI is tailoring your news feeds to show you information you might engage with.
-   Do you contact customer service through a website chat bot? AI is recognizing the words you type, and analyzing your sentiment to help solve your problem or answer your question.
-   Do you notice how your phone or computer predicts the next word you might say when you send texts or emails? AI is making an informed guess based on your previous messages or the context.

These are just a few of the many examples of how AI is part of our daily lives. AI helps us save time by reducing the amount of thinking we have to do. An individual's daily routine is a relatively small scale. Imagine how much time you could save by applying AI in the business context. What if AI could further automate many of the complex, manual tasks we have to do at work?

## How AI works in Appian

You use Appian process models to automate many aspects of your business processes, which follow a clear set of steps based on certain conditions. Rule-based objects, like expression rules, make your application dynamic and responsive. Robotic tasks, like RPA, let your applications interact with legacy systems or user interfaces as a human being does.

These tasks have their place in your workflows, but each requires a developer to consider each possible outcome of the previous node. If the process encounters a condition it's not equipped to handle, it throws an exception. If you haven't built exception handling into the process, it just stops.

AI represents a major shift in automation. Rather than stop and require human intervention in order to navigate the challenge, a task using AI can adapt to unexpected conditions and make an informed decision on how to continue.

### What AI isn't good for

AI is a powerful tool and Appian makes it easier for you to use. However, AI is suited for some use cases more than others and should be intentionally integrated into your processes.

AI is a good candidate for tasks requiring some level of interpretation. For example, if you need to identify images with the color green in them, AI can help because "green" encompasses a lot of different shades in a color family. Other automation features might look for a specific hexadecimal code, and ignore shades of green that don't match it exactly.

Tasks that are objective or based on traditional programming logic likely won't need AI. Examples of these tasks include:

-   Inputting specific text into a web form.
-   Querying data from external systems.

You'll also want to consider the following aspects of your use case to see if AI is a good fit:

-   **Availability**: For your problem, do you have historical data that demonstrates a pattern that can generalize given future inputs? You need to have good, high quality data to do machine learning.
-   **Complexity**: Is your problem handling relatively complex logic? If you can easily solve your problem very accurately with a few _If_ statements, that is a better option. If there is an extremely deterministic pattern easy to implement and solve for, rules are a better option.
-   **Scalability**: Does your problem scale up? ML is usually a good solution to explore if you need to automate a process that is high volume or planning to scale.
-   **Adaptability**: Does your problem change across time? ML may be a better solution than rules-based solutions if you would constantly be updating rules to keep up with this change.
-   **Flexibility**: Do you have reasonable expectations that there might be mistakes made by your system? Machine learning is not deterministic.

Carefully consider your use case to determine if AI is the best fit. Appian offers [many other automation features](Automation_Use_Cases.html) that might be better suited to what you're trying to achieve in your process.

## How to get started

What do you need to get started using AI in Appian? If you're an Appian developer, you're ready to go. We've [outlined our offerings and some guidance](ai-use-cases.html) when each capability is best for you.

We've built AI capabilities into Appian using low-code, like the other [automation features](Automation_Landing.html) you know and love.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...