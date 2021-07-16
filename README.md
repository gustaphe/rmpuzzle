# rmpuzzle

Download puzzles from [Logic Masters Germany](https://logic-masters.de) to a
ReMarkable tablet.

Contains two bash scripts: `logic-masters2pdf` and `rmpuzzle`.

## logic-masters2pdf

Takes a html link or a puzzle id and prints that puzzle to a pdf.

```bash
$ logic-masters2pdf 0006YV
0006YV.pdf

$ logic-masters2pdf 0006YV Laser.pdf
Laser.pdf
```

## rmpuzzle

Takes a html link or a puzzle id, converts that puzzle to a pdf and sends it to
your ReMarkable.

```bash
$ rmpuzzle 0006YV
```
puts a `/Puzzles/puzzle_0006YV.pdf` on your tablet.


## Prerequisites

* Written for and tested on linux with bash
* ReMarkable communication requires [juruen's `rmapi`](https://github.com/juruen/rmapi)
* Conversion to pdf requires [`wkhtml2pdf`](https://wkhtmltopdf.org/)
* The steps in the Makefile need to be performed (to some extent), and `~/bin` must be on your path
