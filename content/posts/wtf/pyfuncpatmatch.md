+++
draft = false
title = 'Python - Pattern matching decorator'
date = '2024-04-24'
tags = [
    "python",
]
categories = [
    "wtf",
]
+++

In school, we did some [haskell](https://www.haskell.org/) project.

And I was blown by the pattern matching.

So, for a side project, I wanted to add a "pattern matching"-like experience
to python.

---

[What is a decorator in python ?](https://wiki.python.org/moin/PythonDecorators)

---

Here is an exemple:


```py
from pyfuncpatmatch import pm, _eq

@pm(lambda _: 0, _eq(0))
@pm(lambda _: 1, _eq(1))
def fib_rec(n: int):
    """Calculating fibonacci sequence"""
    return fib_rec(n - 1) + fib_rec(n - 2)

# >>> fib_rec(0)
# 0
# >>> fib_rec(1)
# 1
# >>> fib_rec(2)
# 1
# >>> fib_rec(6)
# 8
```


For more exemples, you can see the test file [here](https://github.com/Saverio976/pyfuncpatmatch/blob/main/pyfuncpatmatch/__main__.py)

---

When calling the `pm` function with the code to execute and it's patterns,
the `pm` function create a new function `inner_decorator` that 'copy' the
parameters passed to `pm` and take a function as its uniq argument.


This function (`inner_decorator`) when called, create a callable class.

> A callable class is just a class that define a `__call__` method.

This class `PM` when created, analyse the signature of the decorated function
and organize the args/kwargs that the `pm` function has.


This `PM` class 'replace' the decorated function. Each time the decorated
function will be called, it will call the `PM` class instead.


The `PM` class when called, will analyse its args/kwargs, check if the pattern
is respected, and if yes, execute the function passed to `pm` function. Else,
it will fallback to the decorated function.

---

Links:
- [pypi](https://pypi.org/project/pyfuncpatmatch/)
- [github](https://github.com/Saverio976/pyfuncpatmatch)
- [gitlab](https://gitlab.com/Saverio976/pyfuncpatmatch)

---

That was a fun experiment.


Before the rewrite, the code was more messy, and the usage was more hacky.

[link to the old implementation](https://github.com/Saverio976/pyfuncpatmatch/tree/0.0.5)
