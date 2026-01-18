# My config files for Neovim

## Directory Structure

The config files are arranged in the following directory structure.

```
.
└── lua
    ├── plugin_configs
    ├── plugins
    ├── providers
    └── tealeaf
```
- Plugins are added in ./lua/plugins.
- Plugin configs are added to ./lua/plugin_configs and must currently be required through ./lua/plugin_configs/init.lua.
- Neovim providers and their settings are configured in ./lua/providers.
- Configuration of the Lazy plugin manager, remaps, and everything else that isn't specified elsewhere are done in ./lua/tealeaf.

## Fonts

The config file is meant to be used with any of the Nerd Fonts found [here](https://www.nerdfonts.com/font-downloads).
I personally use the Haskling NerdFont.

## Windows notes (native plugin builds)

Some plugins in this config build native code and require a compiler toolchain on Windows.

### telescope-fzf-native.nvim

This plugin uses `make` and `gcc` to build a native extension.  
If you see build errors during `:Lazy sync` involving `gcc`, `make`, or messages like:

- CreateProcess(... gcc ...) failed
- make: *** [Makefile:...] Error
- A subdirectory or file build already exists

You can fix it as follows:

1. Install MSYS2: https://www.msys2.org/
2. Open **MSYS2 MinGW x64** and run:
   pacman -S --needed mingw-w64-x86_64-gcc mingw-w64-x86_64-make
3. Add this directory to your Windows PATH:
   C:\msys64\mingw64\bin
4. Delete the folder:
   %LOCALAPPDATA%\nvim-data\lazy\telescope-fzf-native.nvim\build
5. Restart Neovim and run:
   :Lazy build telescope-fzf-native.nvim

After this, :Lazy sync should complete without errors.
