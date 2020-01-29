# Jim's Note Scripts
Scripts for note-taking on the command line

# Installation

To configure, edit the following two lines in the makefile:

```sh
NOTEDIR=~/Documents/work_stuff/notes
INSTALLDIR=~/mybin
```

such that `NOTEDIR` corresponds to the directory where notes should be stored,
and INSTALLDIR corresponds to a directory in your PATH where all scripts should be placed.

Then, to install, simply run:

```sh
make
make install
```

# Using the note software

## Note

The `note` script is the primary script included here. Most other scripts are modified versions
of it, or are accessory scripts. Usage is as follows:

```sh
note name
```

Where `name` is the name of the note. This will generate a new note in the `NOTEDIR` directory
with a name of the format YYYY/YYYY-MM-DD_name_HH.MM.SS.txt, appends the
current date to the file, and opens the file in `vim`.

## ArNote

`arnote`, short for "Archive Note", works exactly like `note`, but instead of creating a new note
with the specified name, it opens in vim all notes with that same name.

## ReNote

`renote` works just like `arnote`, but in addition to opening existing notes with the specified name,
it also creates a new note with that name.

## AllNote

`allnote` opens all notes ever created.

## NotePath

`notepath` does not create a note or open an editor, but merely prints the path that would be created
if the `note` command were run with the same name. This is useful for writing notes in alternative editors.
To write a note in ed, for example, the following command line invocation could be used:

```sh
ed `notepath seminar_note`
```

The similar commands `arnotepath`, `renotepath`, `allnotepath`, `arnotepath1`, and `allnotepath1`, perform the same function,
but provide the paths that would be produced by their corresponding commands. Versions of the path
command with a 1 appended are guaranteed to only produce 1 path in case you are using an editor that can only edit
1 file at a time.

## gnote

`gnote` adds all notes to a git repository and commits them, with the current date as the comment.
Note that, in order to use `gnote`, you must first initialize a git repository in your notedir
by `cd`ing to the note directory and running the following command:

```sh
git init
```

Thereafter, the invocation for `gnote` is simply:

```sh
gnote
```

## pdfit

`pdfit` converts markdown-formatted files into PDFs using LaTeX's typesetting engine. `pdfit` requires `pandoc` in order to
function -- the user must ensure that `pandoc` is installed. Usage:

```sh
pdfit source_file.txt dest_file.pdf
```

## pdfnote

`pdfnote` runs `pdfit` on the newest note with the specified name, saves the pdf in the file `~/temp.pdf`, then opens
the file with the `evince` PDF viewer. Please manually modify the script if a different image viewer is preferred.

Usage:

```sh
pdfnote name
```
