if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/skesh/.config/nvim/init.vim', '/Users/skesh/.config/nvim/rc/plugins.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/skesh/.config/nvim'
let g:dein#_runtime_path = '/Users/skesh/.config/nvim/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/skesh/.config/nvim/.cache/init.vim'
let &runtimepath = '/Users/skesh/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/skesh/.config/nvim,/etc/xdg/nvim,/Users/skesh/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/skesh/.config/nvim/repos/github.com/Valloric/YouCompleteMe,/Users/skesh/.config/nvim/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.1.7/share/nvim/runtime,/Users/skesh/.config/nvim/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/skesh/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/skesh/.config/nvim/after'
filetype off
