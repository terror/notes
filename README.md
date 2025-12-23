## notes 📝

[![build](https://img.shields.io/github/actions/workflow/status/terror/notes/ci.yaml?branch=master&style=flat&labelColor=1d1d1d&color=424242&logo=GitHub%20Actions&logoColor=white&label=build)](https://github.com/terror/notes/actions/workflows/ci.yaml)

**notes** is a simple command-line utility that helps with managing a flat
directory of notes powered by fzf, fd and ripgrep.

<img width="1667" alt="screenshot" src="screenshot.png" />

## Installation

You can install the script onto your machine by simply copying it into the
appropriate location:

```bash
curl https://raw.githubusercontent.com/terror/notes/master/notes -o /usr/local/bin/notes
chmod +x /usr/local/bin/notes
```

## Dependencies

**notes** requires a few environment variables to be set, namely:

- `$EDITOR`: The text editor you'll be editing your notes with [default: `vim`]
- `$NOTE_DIR`: Path to your notes directory [default: `~/notes`]
- `$NOTE_EXT`: File extension of your notes [default: `md`]
- `$NOTE_FORMAT_COMMAND`: Command to run when formatting notes [default: `prettier --print-width 80 --prose-wrap always --single-quote true --tab-width 2 --write`]

Moreover, a few external dependencies are required for full usage of the
program, namely:

- [`bat`](https://github.com/sharkdp/bat) - A cat clone
- [`fd`](https://github.com/sharkdp/fd) - A fast and user-friendly alternative to find
- [`fzf`](https://github.com/junegunn/fzf) - A fuzzy file finder
- [`prettier`](https://github.com/prettier/prettier) (if `$NOTE_FORMAT_COMMAND` is set to use it) - A document formatter
- [`rg`](https://github.com/BurntSushi/ripgrep) - A line-oriented search tool

## Usage

Below are the available ways you can interact with the program:

```present notes help
A simple note management CLI powered by fzf, fd, and ripgrep.

Usage: notes [COMMAND]

Available commands:
  d | daily         Open up todays note
  h | help          Show this message
  k | keybindings   View all fzf window keybindings
  s | search        Start a full-text search
```

Running `notes` without any arguments will spawn an interactive `fzf` window
that lets you perform actions on your notes directory.

`notes` sets a bunch of keybindings within the `fzf` window for note
interactions:

```
<ctrl-\> Toggle the preview window
<ctrl-c> Exit
<ctrl-d> Delete the selected file
<ctrl-e> Create a new file whose name is the current query string
<ctrl-f> Format the selected file
<ctrl-j> Scroll down the preview window
<ctrl-k> Scroll up the preview window
<ctrl-r> Reload the result buffer
<enter>  Edit the selected file
```

Most notably, you can create and remove notes using `ctrl-e` and `ctrl-d`.

## Prior Art

I'm not aware of any similar tool out there. I suppose it is loosely inspired by
zettelkasten-based tools, with the goal of being very simple to use.
