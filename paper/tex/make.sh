#!/bin/bash
pdflatex report
bibtex report
pdflatex report
pdflatex report
open report.pdf