---
layout: post
title: "Observables in Swift"
date: 2014-07-15 00:14
comments: false
categories: [Code, Swift]
---

As you may know, in Swift you cannot perform typical Key-Value Observing on non-NSObject subclasses. Whilst this may be an annoyance for people who make use of KVO on a regular basis, it isn't necessarily a bad thing, KVO is hard and lots of people get it wrong.

Type generic classes and structs in Swift make it pretty trivial to create our own simplistic implementation of Observables, and we get the added benefit of them being opt-in and self documenting. I put a simple example of Observables together here: [Gist](https://gist.github.com/DanielTomlinson/c250f4ce99a2bbb647cb).

<script src="https://gist.github.com/DanielTomlinson/c250f4ce99a2bbb647cb.js"></script>

It has lots of room for improvement, for example: storing Observers inside a Bag to prevent naming collisions, using an underlying event or stream system, and custom operators for adding observers/mutating its value - but it's a nice, safer replacement for KVO.