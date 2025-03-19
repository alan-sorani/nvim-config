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
