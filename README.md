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

If you are proposing significant changes, it's probably best to create
a feature branch (and perhaps open a pull request), and then merge
with ``--squash``.

## Compilation

If all dependencies are installed, compile the pdf and html output like this:

```
make
```

Use ``make html`` or ``make pdf`` to compile only one or the other;
see the Makefile for other options.

## Dependencies

You'll need R version 4.x with ``rmarkdown`` installed.

PDF output requires LaTeX.

```
brew cask install mactex
```

HTML generation requires ``pandoc`` and ``pandoc-crossref``

```
brew install pandoc pandoc-crossref
```

Even easier is to use Docker:

```
docker run --rm -v $PWD:/report -w /report rocker/verse:latest make html
```

## References

Citations are stored in bibtex format in ``master.bib``. There are
many sites and open source tools for creating and managing references
in bibtex format:

- get citations in bibtex from a pubmed search: http://www.bioinformatics.org/texmed/
- http://www.jabref.org (be sure to search Medline; other databases may not return complete records)
