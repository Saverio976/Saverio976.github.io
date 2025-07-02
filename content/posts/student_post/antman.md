+++
draft = false
title = 'StudentProject - Antman'
date = '2024-04-22'
tags = [
    "C",
]
categories = [
    "Student Project"
]
+++

One of the first year project. 2 people. Lossless compress file.

We choose to create a binary tree and the more a character was present in the
file, the more it was neear the top of the tree.

## Compression

We create the tree of occurence, then we write it as an header.

For each character of the file, we print the path to access it in the tree as
binary.

0 is left.
1 is right.

Each character is 8bit, so we could put 8 direction instruction for each "letter"
of the output.

There is no need to add additional "space" between instruction of different
letters because when we are on a leaf, we know for sure that this is the end
of the instruction for this letter.

## Decompression

We read and recreate the tree from the header of the file

Then, for each character, we read the bit oen by one and follow the instruction
"left" "right" until a leaf.

We print the letter on the leaf.

And we continue until the end.

---

Repositories:
- [github](https://github.com/Saverio976/Antman)
- [gitlab](https://gitlab.com/Saverio976/Antman)
