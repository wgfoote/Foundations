# Foundations of Data Analytics
Explorations into the foundations of data analytics powered by APL.

This repository contains

- .Ipynb Jupyter notebooks
- APL functions
- APL workspaces
- Articles for reference

____________________________________________________________________

Throughout the various segments of these explorations we will maintain the hypothesis that we deal with objects which must be able to be computed. Computations involve arithmetic and arithmetic's generalization in algebra. A calculus must somehow be based on arithmetic and algebra to be computationally feasible. 

Our primary tool throughout will be linear algebra, but we will also work with data structures which might be nested, certainly multidimensional, each with their own arithmetics and generalizations in algebra. But for now we will content ourselves with linear algebra whose ultimate aim is to solve systems of equations. More than that we will eshew various non-computational ideas like infinity, instead using perspective and affine geometry, or real numbers, instead using notions of approximations of numbers which are not neatly divisible without remainders, or limits, instead developing methods to get at tolerable approximations.

Each of these notions, and more to come, will help to provide a principled approach to the entire analytics cycle, stretching from business requirements to system designs and back again as chain in evolving markets is inevitable.

As we drop into the deep end of the pool and tread water with thumbs up we begin with a principled approach with several _desiderata_, which we might label _sanities_:

- Respect for the objects of our analysis. What are they, are they related one another, in what way, and how basic? This last question is a principle of parsimony where we use only what we need. Finding out what we need and sticking to this minimal or maximal needs is the subject of much decision making analysis. In microeconomics we have the production possibilities curve, in marketing we have the product hierarchy, in organizational work we have efficient sets of practices. This leads to a second desideratum.

- Respect for the analyst. Unlike Immanuel Kant and, perhaps a reading of Plato about triangles, we will not hold in these Foundations that triangles exist because they already exist in our minds. We will hold that we observe objects in nature, or perhaps as the work of our hands, that when we take 3 pencils and join them in the closed order of the point of one pencil touches (a vertex or node) the eraser end of another pencil and that all the pencils must be joined. Our minds abstract from the experience and call the edges of any three sided closed object a triangle. We will avoid what E.T. Jaynes called the _mind projection fallacy_, which, in logic, is the fallacy of [reification](https://en.wikipedia.org/wiki/Reification_(fallacy)). 

- We might simply call for common sense. It is common from the point of view of being able to share the experiences, reasoning, and judgments of analysts with other analysts and clients of analysts. If our math, computations, intuition and experience do not line up with the results, we should be a tad skeptical of those results and at the least have a conversation about differences and why they occur! 

- There will be other desired, required, needed principles as we proceed! For example we should discuss topics of relevance, selection, operation, completeness, and the all important issue of concrete situations in which plans go awry, systems do not failover, reports do not make sense, people flee the premises, among other things.

We begin with a basic primitive data structure called an ordered list, _o-list_. This is distince from an unordered list, for example, a list of attributes for a product we are manufacturing. A most basal o-list is _binary_ o-list is composed of two number primitives one is a token for _nothing there_, the other is a token for _something is there_, and in the Hindu-Arabic number system this is the ordered set of {0, 1}. Zero comes before 1, and 1 after 0. Naturally this happens because if we start with an empty glass, 0, then pour a tasty beverage into the glass, 1, we observe an order. 

We build on this binary o-list and count how many times the 0 or the 1 occurs and map these to the [Hindu-Arabic number system](https://en.wikipedia.org/wiki/Hindu%E2%80%93Arabic_numeral_system) we will call the basic integers with zero. When objects are taken away from a list we get a reflection of the numbers and put a `¯` as part of the number and call this a negatively-signed integer. From signed integers fast extend to rational numbers, those which can be factored in ratios. Any non-rational number will be an approximation to a sequence of rational numbers for as long as we have patience, or the computer has memory, to compute. 

We walk now into our initial foray with analysis accompanied by a naturally occurring and on-going sequence we humans have noticed for the past 3 millenia named for an [Italian mathematician from Pisa in the 12th-13th century.]# Foundations of Data Analytics 1 -- Finding Fibonacci

In this inaugural segment of data analytics foundations, we will maintain a hypothesis that we deal with objects which must be able to be computed. Computations involve arithmetic and arithmetic's generalization in algebra. A calculus must somehow be based on arithmetic and algebra to be computationally feasible. 

Our primary tool throughout will be linear algebra, but with data structures which might be nested, certainly multidimensional, each with their own arithmetics and generalizations in algebra. But for now we will content ourselves with linear algebra whose ultimate aim is to solve systems of equations. More than that we will eshew various non-computational ideas like infinity, instead using perspective, real numbers, instead using notions of approximations of numbers which are not neatly divisible without remainders, and limits, instead developing methods to get at tolerable approximations.

Each of these notions, and more to come, will help to provide a principled approach to the entire analytics cycle, from stretching from business requirements to system designs and back again as chain in evolving markets is inevitable.

As we drop into the deep end of the pool and tread water we begin with a principled approach with several _desiderata_, which we might label _sanities_:

- Respect for the objects of our analysis. What are they, are they related one another, in what way, and how basic? This last question is a principle of parsimony where we use only what we need. Finding out what we need and sticking to this minimal or maximal needs is the subject of much decision making analysis. In microeconomics we have the production possibilities curve, in marketing we have the product hierarchy, in organizational work we have efficient sets of practices. This leads to a second desideratum.

- Respect for the analyst. Unlike Immanuel Kant and, perhaps a reading of Plato about triangles, we will not hold in these Foundations that triangles exist because they already exist in our minds. We will hold that we observe objects in nature, or perhaps as the work of our hands, that when we take 3 pencils and join them in the closed order of the point of one pencil touches (a vertex or node) the eraser end of another pencil and that all the pencils must be joined. Our minds abstract from the experience and call the edges of any three sided closed object a triangle. We will avoid what E.T. Jaynes called the _mind projection fallacy_, which, in logic, is the fallacy of [reification](https://en.wikipedia.org/wiki/Reification_(fallacy)). 

- We might simply call for common sense. It is common from the point of view of being able to share the experiences, reasoning, and judgments of analysts with other analysts and clients of analysts. If our math, computations, intuition and experience do not line up with the results, we should be a tad skeptical of those results and at the least have a conversation about differences and why they occur! 

- There will be other desired, required, needed principles as we proceed! For example we should discuss topics of relevance, selection, operation, completeness, and the all important issue of concrete situations in which plans go awry, systems do not failover, reports do not make sense, people flee the premises, among other things.

We begin with a basic primitive data structure called an ordered list, _o-list_. This is distince from an unordered list, for example, a list of attributes for a product we are manufacturing. A most basal o-list is _binary_ o-list is composed of two number primitives one is a token for _nothing there_, the other is a token for _something is there_, and in the Hindu-Arabic number system this is the ordered set of {0, 1}. Zero comes before 1, and 1 after 0. Naturally this happens because if we start with an empty glass, 0, then pour a tasty beverage into the glass, 1, we observe an order. 

We build on this binary o-list and count how many times the 0 or the 1 occurs and map these to the [Hindu-Arabic number system](https://en.wikipedia.org/wiki/Hindu%E2%80%93Arabic_numeral_system) we will call the basic integers with zero. When objects are taken away from a list we get a reflection of the numbers and put a `¯` as part of the number and call this a negatively-signed integer. From signed integers fast extend to rational numbers, those which can be factored in ratios. Any non-rational number will be an approximation to a sequence of rational numbers for as long as we have patience, or the computer has memory, to compute. 

We walk now into our initial foray with analysis accompanied by a naturally occurring and on-going sequence we humans have noticed for the past 3 millenia named for an [Italian mathematician from Pisa in the 12th-13th century.](https://en.wikipedia.org/wiki/Fibonacci)

## FDA1 - Finding Fibonacci

The Fibonacci sequence finds its way into myriad nooks and crannies of our universe, physical and mental. Physically it maps to the spiral development of a nautilus shell. Mentally we use the sequence to model growth, chaos, market behavior, and even use it to score tasks in Agile project management. There are even spiral software development models. Ancient Sanskit prosody around 200 BCE developed the sequence to describe patterns of syllables. Visual artists use the sequence to divide the picture plane according to the Golden Ratio. Commodity traders Such sequences from nature have inspired myriad attempts to find sequential patterns in human behavior and in fact have provided the basis for understanding the relationships among very complex objects as they are. We abstract patterns from what we experience and observe. Based on these findings and using some sort of ordering of preferences, often stored habitually in our virtuous hearts, we decide on courses of action. We begin our foundational journey with this storied sequence of integers.

## FDA2 - Incursions, Excursions, Recursions

Ultimately we will get to interpolations and representations of sequences, not functions, as polynomials. Several will come to the fore during this segment including the Pascal, Harriot, Bernoulli, Bernstein, Lagrange polynomials. Each of these famous mathematicians will help us expose the arithmetic, algebra, and calculus under rational numbers. We will foray into finite fields of primes very initially as well. The goal is to provide decision analysts with easy to digest and use tools. More visualizations will be on the menu along with recursions, instead of iteration loops. There is much to explore.

## FDA3 - _Stay Tuned!_

