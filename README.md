# Idea Note

`idea-note` is a tool to manage your idea or notes in one place,
then you can synchronize the notes to cloud. 

Currently it only support git, but the notes are just a collection of files,
you can support box, s3 or google drive easily by some other tools.

Notes: Only MacOS and Neovim have been tested for now.

![](https://tva1.sinaimg.cn/large/0082zybply1gbqavnj5w2g30dc0ace81.gif)

![](https://tva1.sinaimg.cn/large/0082zybply1gbqavszdd0g30dc0ac4qq.gif)

## Table of Contents

* [Motivation](#motivation)
* [Features](#features)
  * [CLI](#cli)
  * [Vim Plugin](#vim-plugin)
* [Installation(MacOS)](#installationmacos)
  * [CLI](#cli-1)
  * [Vim Plugin](#vim-plugin-1)
* [Usage](#usage)
  * [CLI](#cli-2)
  * [Vim Plugin](#vim-plugin-2)

## Motivation

* Collect small learning notes and idea
* Manage my data by myself
* Add any feature I wanted in any time
* Save money a lot

## Features

### CLI

* Create new note
* List recent notes
* Search notes by keywords
* Synchronize note to git remote repository

### Vim Plugin

* Create new note
* Search notes by keywords

## Installation(MacOS)

First of all, clone the repo to your local environment

```sh
$ git clone git@github.com:sjmyuan/idea-note.git
```

### CLI

1. Install the dependencies

   ```sh
   $ brew install git
   $ brew install the_silver_searcher
   $ brew install neovim
   ```

2. Add the `bin` directory to the `PATH` variable in your `bash_profile/zsh_profile`

   ```sh
   export PATH="<directory>/bin:$PATH"
   ```

3. Configure `IDEA_HOME` to be the directory in which you want to store your notes. 

   If you want `idea-note` to support the git synchronization, the directory should be a git repository.
   The default value of `IDEA_HOME` is `$HOME/.idea/`

   ```sh
   export IDEA_HOME=<note directory>
   ```

4. Check if the `idea` command can work 

   ```sh
   $ idea
   ```

### Vim Plugin

1. Install [fzf](https://github.com/junegunn/fzf)

    ```sh
    $ brew install fzf
    ```

2. Install the dependencies in vimrc, we use [Plug](https://github.com/junegunn/vim-plug) as pulgin manager here.

    ```sh
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
    ```

3. Install the plugin of `idea-note`

    ```sh
    Plug '<idea-note repository directory>'
    ```

4. Configure the notes directory, if you already installed the cli, can use `$IDEA_HOME` directly.

    ```sh
    let g:idea#home = $IDEA_HOME
    ```

5. Check if the `:Idea` command can work 

    ```sh
    :Idea
    ```

## Usage


### CLI

* Create new note

  ```sh
  $ idea
  $ idea new
  ```

* List recent notes

  ```sh
  $ idea ls
  ```

* Search notes

  ```sh
  $ idea search <pattern>
  ```

* Synchronize notes to git remote repo

  ```sh
  $ idea flush
  ```

### Vim Plugin

* Create new note

  ```sh
  :Idea
  ```

* Search notes

  ```sh
  :Idea <pattern>
  ```

