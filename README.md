# Whitepaper: software development best practices for the clinical laboratory

An attempt to organize a description of software development best
practices for the clinical laboratory community.

## What's in this repository?

This repository contains the manuscript text in Markdown format - or
more specifically, a Markdown variant RMarkdown, compiled using the
reproducible research tool ``Knitr``. Further explanation,
instructions, and examples are here:

- http://rmarkdown.rstudio.com
- http://svmiller.com/blog/2016/02/svm-r-markdown-manuscript/
- https://github.com/svmiller/svm-r-markdown-templates

Citations are stored in bibtex format in ``master.bib``. Here's a site
that can provide citations in bibtex from a pubmed search:
http://www.bioinformatics.org/texmed/

## Collaborating on this paper

Ok, in many ways, Google Docs, etc would be simpler, but here are some
reasons that collaboration on a plain-text markup hosted on GitHub is
appealing:

- Version control!
- Can edit offline, each using our favorite editor.
- Can use issues for discussion and to delegate tasks
- There are many models for collaboration (eg, users can collaborate by forking followed by a pull request without being added to the project first).
- Can compile to various media types.
- Serves as a demonstration of collaboration using open source tools!

If you are proposing significant changes, it's probably best to create a feature branch (and perhaps open a pull request), and then merge with ``--squash``.

## Dependencies

PDF output requires LaTeX.

```
brew cask install mactex
```

HTML generation requires ``pandoc`` and ``pandoc-citeproc``

```
brew install pandoc pandoc-citeproc
```

## Compilation

If all dependencies are installed, compile the pdf and html output like this:

```
make
```

Use ``make html`` or ``make pdf`` to compile only one or the other;
see the Makefile for other options.

