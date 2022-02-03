# Scholawrite

Scholarwrite is a personal setup for University and Academic writing built after [Shaping Openness](https://www.youtube.com/watch?v=J86Pm62XM_Q)'s video.
It uses [Pandoc](https://pandoc.org) to build a PDF from the Markdown source, [pandoc-crossref](https://lierdakil.github.io/pandoc-crossref) for numbering figures,
tables, equations and cross reference them.

## Text Editor and Extensions Recommendations

// TODO

## Setup

### 1. Pandoc

Make sure pandoc is installed on your system by opening up a terminal and running:

```sh
$ pandoc -v
```
The correct output should be something like this:

```
pandoc 2.17.1.1
Compiled with pandoc-types 1.22.1, texmath 0.12.4, skylighting 0.12.2,
citeproc 0.6.0.1, ipynb 0.2
User data directory: /Users/macbookpro/.local/share/pandoc
Copyright (C) 2006-2022 John MacFarlane. Web:  https://pandoc.org
This is free software; see the source for copying conditions. There is no
warranty, not even for merchantability or fitness for a particular purpose.
```
If you get a `Command not Found` or similar error navigate to [Pandoc](https://pandoc.org/installing.html)'s website and follow the installation instructions based
on your operating system.

### 2. pandoc-crossref (optional)

If you need references pandoc-crossref is a must, make sure it's installed by running:

```sh
$ pandoc-crossref -v
```
Again the correct output should be something like this:

```
pandoc 2.17.1.1
Compiled with pandoc-types 1.22.1, texmath 0.12.4, skylighting 0.12.2,
citeproc 0.6.0.1, ipynb 0.2
User data directory: /Users/macbookpro/.local/share/pandoc
Copyright (C) 2006-2022 John MacFarlane. Web:  https://pandoc.org
This is free software; see the source for copying conditions. There is no
warranty, not even for merchantability or fitness for a particular purpose.
```
If you get a `Command not Found` or similar error navigate to [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref)'s github repository and follow the installation instructions based
on your operating system.

### 3. LaTeX

Pandoc under the hood uses LaTeX to generate pdf documents so you will need some sort of LaTeX distribution on your system, all the instructions to download and install them
are available on [Pandoc](https://pandoc.org/installing.html)'s website.

### 4. Clone the repository

Navigate to a folder on your system and clone the repository using the following command:

```sh
 $ git clone https://github.com/ceeyahya/scholawrite.git
```
### 5. Configure the `build.sh` script

Open the foler on VSCode (Recommended) or any other text editor. Navigate to the `build.sh` file it should look like this:

```sh
#!/bin/zsh

pandoc template.md -o template.pdf --standalone -F pandoc-crossref --citeproc
```

* I'm using zsh so my shebang is `#!bin/zsh` feel free to change it if you using bash or any other shell.
* Change `template.md` to your markdown source file's name and `template.pdf` to whatever you want the generated pdf's name to be.
* Add any [Pandoc Arguments](https://pandoc.org) you want note however that the order on `-F pandoc-crossref` and `--citeproc` is important and might break if changed

### 6. Make the `build.sh` script runnable

By default your system won't let you run a script you downloaded from the internet, or wrote yourself you can however give it permission to run by running:

```sh
$ chmod +x ./build.sh
```

### 7. Start Writing !

You can now simply modify your `source.md` and press:

* <kbd>Cmd</kbd> or <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> 
* `Terminal` > `Run Build Task` on the top menu


On Mac and Linux the system default pdf viewers support automatic reload on file `.md` modification, so simply typing some text or changing the metadata in the frontmatter
and re-running the build script should automatically update the pdf viewer. 

If it doesn't however, I'd recommend changing windows, alt+tab-ing to VSCode and back often fixes the problem in my opinion otherwise, downloading a pdf viewer that
supports it such as [Okular](https://okular.kde.org) (Linux) or [Skim](https://skim-app.sourceforge.io) (Mac and Linux).

