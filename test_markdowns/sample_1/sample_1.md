---
title: How to read CSV file from Amazon S3 in Python
published: true
tags: python, codenewbie, beginners, aws
description: A detailed post about how to read CSV file from Amazon S3 with #python.
---

The final piece of the puzzle is: How do we create the `codecs.StreamReader`? That's where the [`codecs.getreader()`](https://docs.python.org/3/library/codecs.html#codecs.getreader) function comes in play. We pass the codec of our choice (in this case, `utf-8`) into the `codecs.getreader()`, which creates the`codecs.StreamReader`. This allows us to read the CSV file row-by-row into dictionary by passing the `codec.StreamReader` into `csv.DictReader`:

![Reading botocore.response.StreamingBody through csv.DictReader.](./images/streaming.png)
