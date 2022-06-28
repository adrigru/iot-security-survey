#!/bin/bash
pdflatex slides.tex
bibtex slides.aux
pdflatex slides.tex
pdflatex slides.tex
open slides.pdf