## notes 📝

**notes** is a simple command-line utility that helps with managing a flat
directory of notes with fzf.

### Installation

You can install the script onto your machine by simply copying it into the
appropriate location:

```bash
$ curl https://raw.githubusercontent.com/terror/notes/master/notes -o /usr/local/bin/notes
$ chmod +x /usr/local/bin/notes
```

### Dependencies

**notes** requires a few environment variables to be set:

- `$EDITOR`: The text editor you'll be editing your notes with [default: vim]
- `$NOTE_DIR`: Path to your notes directory
- `$NOTE_EXT`: File extension of your notes

Moreover, a few external dependencies are required for full usage of the
program, namely:

- [`bat`](https://github.com/sharkdp/bat) - A cat clone
- [`fzf`](https://github.com/junegunn/fzf) - A fuzzy file finder
- [`prettier`](https://github.com/prettier/prettier) - A document formatter

### Usage

Below are the available ways you can interact with the program:

```
A simple note management CLI powered by fzf.

Usage: notes [COMMAND]

Available commands:
  enter   Interact with the notes directory
  format  Format all files with prettier
  journal Open up todays journal
  help    Show this message
```

**notes** also sets a bunch of keybindings within the `fzf` window for note
interactions:

```
<ctrl-\> Toggle the preview window
<ctrl-c> Exit
<ctrl-d> Delete the selected file
<ctrl-e> Create a new file whose name is the current query string
<ctrl-j> Scroll down the preview window
<ctrl-k> Scroll up the preview window
<ctrl-r> Reload the result buffer
<enter>  Edit the selected file
```
