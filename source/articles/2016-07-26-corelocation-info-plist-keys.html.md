---
layout: post
title: CoreLocation info.plist keys
date: 2016-07-26 19:27 BST
tags: [ios, corelocation]
---

I can never remember the Info.plist keys for requesting iOS location permissions,
and I'd like to start using this site as a collection of reference notes.

To request always permissions:   
  key: `NSLocationAlwaysUsageDescription`   
  value: `{Something meaningful that describes why you need background location}`   

To request in use permissions:   
  key: `NSLocationWhenInUseUsageDescription`   
  value: `{Something meaningful that describes why you need location access}`   

