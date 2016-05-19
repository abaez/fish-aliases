[![twitter][1i]][1p]
[![licence][2i]][2p]

# fish-aliases

A set of aliases for [fish].

### Install

With [fisherman]:

``` fish
fisher abaez/fish-aliases
```

### Usage
The aliases are written in functions for autoloading but are similar to the following:

``` fish
alias errs  "rustc --explain"
alias ls    "exa"
alias j     "journalctl"
alias s     "systemctl"
```

The rest of the aliases are built as functions for ease of use:

``` fish
dpms --description "turn on or off dpms mode"
rr --desciription "rustup run shorthand with n=nightly, b=beta, s=stable"
```

[1i]: https://img.shields.io/badge/twitter-a_baez-blue.svg
[1p]: https://twitter.com/a_baez
[2i]: https://img.shields.io/badge/licence-MIT-green.svg
[2p]: LICENSE
[fisherman]: http://github.com/fisherman/fisherman
[fish]: http://fishshell.com/
