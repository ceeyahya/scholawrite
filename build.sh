#!/bin/zsh

pandoc template.md -o template.pdf --standalone -F pandoc-crossref --citeproc