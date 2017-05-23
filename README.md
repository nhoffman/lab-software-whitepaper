# Whitepaper: software development best practices for the clinical laboratory

An attempt to organize a description of software development best
practices for the clinical laboratory community.

## What's in this repository?

This repository contains the manuscript text in Markdown format - or
more specifically, a Markdown variant intended to be compiled using
the reproducible research tool ``Knitr`` called RMarkdown. Here are
some links that explain:

- http://svmiller.com/blog/2016/02/svm-r-markdown-manuscript/
- https://github.com/svmiller/svm-r-markdown-templates

Citations are stored in bibtex format in ``master.bib``. Here's a site
that can provide citations in bibtex from a pubmed search:
http://www.bioinformatics.org/texmed/

## Dependencies

You must have a version of latex installed.

```

```

HTML generation requires ``pandoc`` and ``pandoc-citeproc``

```
brew install pandoc pandoc-citeproc
```

## Compilation

After cloning the repo, you must initialize a git submodule containing
the latex stylesheets:

```
git submodule init
```

If all dependencies are installed, compile the pdf and html output like this:

```
make
```

Specify ``make html`` or ``make pdf`` to compile only one or the
other; see the Makefile for other options.

