" Plugins List {{{
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.config/nvim'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/denite.nvim')

" Completing
call dein#add('Valloric/YouCompleteMe', {'build': './install.py'})
call dein#add('haya14busa/dein-command.vim')
"call dein#add('Shougo/deoplete.nvim')

" Unite.vim
call dein#add('Shougo/unite.vim')
call dein#add('tsukkee/unite-tag')
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/unite-session')
"call dein#add('junegunn/fzf.vim', { 'dir': '~/.fzf', 'do': './install --all' })
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

" statup page
call dein#add('mhinz/vim-startify')

" ctags
call dein#add('craigemery/vim-autotag')

call dein#add('mattn/emmet-vim')
"call dein#add('majutsushi/tagbar')
call dein#add('bling/vim-airline')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/nerdcommenter')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('ryanoasis/vim-devicons')
"call dein#add('chiel92/vim-autoformat')
call dein#add('qpkorr/vim-bufkill')

" Highlight enclosers
call dein#add('Valloric/MatchTagAlways')

" Git
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')

" Syntax
call dein#add('tmux-plugins/vim-tmux', {'on_ft': 'tmux'})
call dein#add('vim-syntastic/syntastic')
call dein#add('vimperator/vimperator.vim', {'on_ft': 'vimperator'})

" Python
call dein#add('klen/python-mode', {'on_ft': 'python'})
"call dein#add('davidhalter/jedi-vim')

" CSS
call dein#add('hail2u/vim-css3-syntax', {'on_ft': 'css'})
call dein#add('ap/vim-css-color', {'on_ft': 'css'})

" Jinja
call dein#add('glench/vim-jinja2-syntax', {'on_ft': ['jinja', 'html']})
call dein#add('lepture/vim-jinja')

" HTML
call dein#add('othree/html5.vim', {'on_ft': 'html'})

" JavaScript
"call dein#add('pangloss/vim-javascript', {'on_ft': 'javascript'})
"call dein#add('burnettk/vim-angular', {'on_ft': ['angular', 'javascript', 'html']})
"call dein#add('othree/yajs.vim', {'on_ft': 'javascript'})
"call dein#add('othree/javascript-libraries-syntax.vim')

" TypeScrypt
call dein#add('leafgarland/typescript-vim', {'on_ft': 'TypeScrypt'})

" Angular 2


call dein#end()
" }}}
" Plugins Settings {{{

" NerdTree
let NERDTreeShowHidden=1 " show hidden files
let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

" Airline
let g:airline_powerline_fonts=1
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 0 " tabs enable
let g:airline#extensions#tabline#fnamemod = ':t' " name without full path
let g:airline#extensions#whitespace#checks = [ 'indent' ] " off whitespaces indicator
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Tagbar
"let g:tagbar_autofocus = 1
"let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
"let g:tagbar_foldlevel = 0 "close tagbar folds by default
"let g:tagbar_iconchars = ['+', '-']
"let g:tagbar_width = 30

" WebDevIcons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Python Mode
let g:pymode_python = 'python3'
set completeopt=menu " show docs only while menu open
let g:pymode_options_max_line_length = 120
let g:pymode_options_colorcolumn = 1
let g:pymode_lint_on_fly = 1
let g:pymode_lint_ignore = "E501, E115"
"let g:pymode_lint_on_fly = 0 Vim-Javascript


"let g:javascript_plugin_jsdoc = 1 "enables syntax highlighting for JSDocs.
"let g:javascript_plugin_ngdoc = 1 " Enables some additional syntax highlighting for NGDocs. Requires JSDoc plugin to be enabled as well.
"let g:javascript_plugin_flow = 1 " Enables syntax highlighting for Flow.
"set foldmethod=syntax " Enables code folding based on our syntax file. 

" Deoplete
let g:deoplete#enable_at_startup = 1
autocmd FileType unite call s:unite_settings()

" Suntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
let g:syntastic_typescript_tsc_args = '--target ES5 --noEmit'

" TypeScrypt
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"}}}
" Vim Settings {{{  
filetype plugin indent on

syntax enable
colorscheme monrovia

" Undo
set undofile
set undodir=~/.backups/nvim

"set nohlsearch
"set nocompatible
set showcmd         " display incomplete commands
"set ttyfast
set laststatus=2    " keep the status line showing
set incsearch       " enabe encremental searching
set encoding=utf-8
set autoread        " autoreload for opened files
set showmatch       " show matching braces
set mat=5           " quick blink when a match is made
set noswapfile
set nobackup
"set wrap            " wrap long lines
"set autowriteall       " autowrite changes
set viewoptions=cursor
"set sessionoptions=blank,buffers,curdir,help,localoptions,tabpages,winsize
set relativenumber
set number
"set ruler
set ignorecase smartcase
set foldmethod=marker
"set foldlevel=99
set fillchars=
set clipboard+=unnamedplus
set linebreak

" Default tab config, use spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=100   " Too narrow for my tastes, but satisfies most standards.
set smarttab
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab
set termguicolors

" Ignores
set wildignore+=*DS_Store*,*.pyc,*.so,*.jpg,*.png,*.gif,*.ttf,*.jpeg
call unite#custom#source('file_rec/async', 'ignore_globs', split(&wildignore, ','))

      let dot = '\%(^\|/\)\.'
      let dirs = '\%(^\|/\)\%(' . join(
            \ ['node_modules', 'bower_components', 'dist', 'venv', 'migrations'], '\|')
            \ . '\)\%($\|/\)'
      let files = join(['\.pyc\%($\)'], '\|')
      let pattern = join([dot, dirs, files], '\|')
      call unite#custom#source('file_rec/async', 'ignore_pattern', pattern)


" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
" }}} 
" Unite.vim {{{
" Unite search -- not sure about this yet...
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup --smart-case --hidden'
  let g:unite_source_grep_recursive_opt = ''
endif

" Close Unite modal on esc
function! s:unite_settings() "{
   imap <buffer><Esc> :UniteClose<CR>
 endfunction

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"}}}
" Keymap {{{
let mapleader=","

map J 5j
map K 5k
map L 5l
map H 5h

map <F2> :TagbarToggle<CR>
map <F3> :NERDTreeToggle<CR>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

vnoremap <space> za
nnoremap <space> za
nnoremap <esc> :noh<return><esc>

" Quick create new lines
"nnoremap o o<ESC>
"nnoremap O O<ESC>
" in write mode
imap <c-o> <esc>o

" Unite
nnoremap <c-p> :Unite -buffer-name=files -no-split -wipe -start-insert file_rec/git<CR>
nnoremap <c-b> :Unite -no-split -toggle buffer<CR>
nnoremap <c-f>l :Unite -no-split -start-insert line<CR>
nnoremap <c-f>c :UniteWithCursorWord -no-split tag<CR>
nnoremap <leader>sc :<C-u>Unite -no-split -no-quit grep<cr>

" Git
nnoremap <leader>gc :vsplit Gcommit<CR><c-w>k
nnoremap <leader>gs :vsplit Gstatus<CR>

nnoremap <Leader>gm :Denite -auto-resize menu:git <CR>
"set showtabline=0

"autocmd FileType unite call s:uniteinit()
"augroup END
"function! s:uniteinit()
    "set nonumber
    "set norelativenumber
    "nunmap <buffer> d
    "nunmap <buffer> a
    "nunmap <buffer> <c-n>
    "nunmap <buffer> <c-k>
    "nunmap <buffer> <c-p>

    "nmap <silent> <Esc> <Plug>(unite_all_exit)
    "nmap <silent> <c-n> <Plug>(unite_loop_cursor_down)
    "nmap <silent> <c-p> <Plug>(unite_loop_cursor_up)

"endfunction
"call unite#custom#profile('default', 'context', {
"\   'winheight': 40,
"\   'direction': 'botright',
"\   'no-resize': 1
"\ })

"call denite#custom#option('default', 'prompt', '❯')
""  \     'rg', '--glob', '!.git', ''

"call denite#custom#source(
"\ 'file_rec', 'vars', {
"\   'command': [
"\      'ag', '--follow','--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png'
"\   ] })
"let s:menus = {}
"call denite#custom#var('grep', 'command', ['rg'])
"call denite#custom#var('grep', 'default_opts',
        "\ ['--vimgrep', '--no-heading'])
"call denite#custom#var('grep', 'recursive_opts', [])
"call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
"call denite#custom#var('grep', 'separator', ['--'])
"call denite#custom#var('grep', 'final_opts', [])
"" call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
"" call denite#custom#option('default', 'statusline', 0)
"call denite#custom#option('default', 'highlight-matched-char', '')
"call denite#custom#option('default', 'highlight-matched-range', '')
"hi deniteMatched guibg=None
"hi deniteMatchedChar guibg=None

"nnoremap <silent> <c-p> :Denite file_rec<CR>
"nnoremap <silent> <leader>h :Denite  help<CR>
"nnoremap <silent> <leader>c :Denite colorscheme<CR>
"nnoremap <silent> <leader>u :call dein#update()<CR>
"nnoremap <silent> <leader>b :Denite buffer<CR>
"call denite#custom#map(
    "\ 'insert',
    "\ '<C-n>',
    "\ '<denite:move_to_next_line>',
    "\ 'noremap'
    "\)
"call denite#custom#map(
        "\ 'insert',
        "\ '<C-p>',
        "\ '<denite:move_to_previous_line>',
        "\ 'noremap'
        "\)

"call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
"\ [ '.git/', '.ropeproject/', '__pycache__/',
"\   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

"call denite#custom#var('menu', 'menus', s:menus)
"nnoremap <silent> <Leader>i :Denite -auto-resize menu:ionic <CR>

"}}}
" GUI {{{

" Mouse
if has('mouse')
    set mouse=a
endif

if has('gui_running')
	set guioptions-=T           " remove the toolbar
	set guioptions-=L           " remove the scrollbar
	set guioptions-=r           " remove the scrollbar
	set guifont=Source\ Code\ Pro\ Light:h14
endif

"Font
"set guifont=SourceCodePro\+Powerline\+Awesome\ Regular:h14

"Bold off
if !has('gui_running')
    set t_Co=8 t_md=
endif

" }}}
" Python {{{
let g:python_host_prog = '/usr/local/Cellar/python/2.7.13/bin/python2'
let g:python3_host_prog = '/usr/local/Cellar/python3/3.6.1/bin/python3'

"}}}
" Navigation on rus language {{{
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >/
" }}}
