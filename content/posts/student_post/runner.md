+++
draft = false
title = 'StudentProject - Runner'
date = '2024-04-20'
tags = [
    "C",
    "CSFML",
    "Graphics",
]
categories = [
    "Student Project"
]
+++

For the second graphical project at EPITECH, we would be asked to create a
runner like game. An exemple of a famous runner is Geometry Dash.

The project needed to be made using the C language and
[CSFML](https://github.com/SFML/csfml).

With a big creative invention, i just created a 'Geometry Dash'-like and called
it 'Geometry Glitch' (*maybe the number of glitch/non wanted beahviour in the
game helped me choose this name*).

![menu](/images/menu_geometry_glitch.png)

---

I started by creating an "game engine". Someone talked about ECS and, without
reading anything on the subject, wanted to implement mine.

Each object entity had an `update` function pointer called each frame.

3 type of object entity:
- sprite
- text
- audio

The lib internal game loop will then proceed to render/play based on the type
of the entity.

---

After that done, a requirements for the project was to load a 'map'
representing a level.

So for simplicity purpose, my format was just:
- each new line => y
- each character => x

Some map are really big line in the file.

exemple:

```txt

                                                                                                                                                                                                                                                                                                                                                                          bbbbbbbbbbbbbbbbbbbbbbbbb
                                                                                                                                                                                                                                                                                                                                                                       bbb
                                                              bbbbbb                                                                                                                                                                                                                                                                                                bbb
                                                           bbbbb   bbb                                                                  s                                                                                                                                                                                                s                       bbb                                  s     s
                                                       bbbbbb        bbbbbb                                            bbbbbbbbbbbbbbbbbb                                                    s           j                                s   s                                                                                                               bbb                                      s     s
                                                                                                               bbbbbbbbbbbbbsbbb                                                           j      j     j                     s               bb                                                           bbb                                             bbb                                          s     sssssssss
                                s      s                                                     bsb        bbbbbbbbbbbbbsbbbb                                                                bbbbbbb   bbb                       s   bbbs sbbbb                sss                                         bbb                                             bbb                                              s
                       bbbbbbbbbbbbbbbbbbbbb  bbb               s                 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb        j      j      j                          gbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb                s s  s  bbb       sss  ssb     sss       s     s   sss  bbb                                                                 j     f
bbbbbbbbbbbbbbbbb bbbbbbbb                       bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb   s bb   s bb                     sbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb   bbbb

```
Legend:
- b => block
- s => spike
- j => jumper boost
- f => the end block (if you don't touch it, you don't win)

---

And before the end of the project, I had the time to implement customisation of
the block, parallax, and playable sprite.

![settings](/images/settings_geometry_glitch.png)

---

Repositories:
- [github](https://github.com/Saverio976/Runner)
- [gitlab](https://gitlab.com/Saverio976/Runner)

---

Showcase:

![game1](/images/game1_geometry_glitch.png)

![game2](/images/game2_geometry_glitch.png)

![game3](/images/game3_geometry_glitch.png)
