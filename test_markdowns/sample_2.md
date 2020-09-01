---
title: Memory Reservation in Amazon Elastic Container Service
published: true
tags: aws, docker, learning, beginners
cover_image: ./images/cover.jpg
---

The following shows the metrics that we collected during our tests. We tested two different ECS configurations. The first half shows what happened when the memory is properly reserved. The second half was where a very small value was used as `memoryReservation`. We will walkthrough the whole process from `(A)` to `(F)` in the following text.

![Metrics collected during tests.](./images/results.png)
