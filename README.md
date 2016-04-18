# syntoggle.vim

This plugin provides manually controlled per buffer syntax highlighting.
Setting `syntax manual` allows setting syntax highlighting on a per buffer
basis, but does not remember the setting when changing buffers. This plugin
extends the functionality so that highlighting is remembered when switching
away from buffers.

[![demo](https://asciinema.org/a/42646.png)](https://asciinema.org/a/42646?autoplay=1)

## Features

- Enhances manual syntax to persist when switching buffers
- A global setting for syntax highlighting. This defaults to off, but can be
  changed.
- Allows overriding the global setting for a list of filetypes.

See `:h syntoggle` for configuration and mappings.

## Installation

[vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'BoltsJ/syntoggle.vim'
```

or just copy `doc/` and `plugin/` into your vim folder.

## Troubleshooting

[Bugtracker](https://gitlab.com/BoltsJ/syntoggle.vim/issues)

- If syntax toggling is not working as expected, it may be necessary to place
  `syntax manual` in your `.vimrc`/`init.vim`. The plugin attempts to set this,
  but if another plugin could override it.

## License
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
