set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim/

call dein#begin(expand('~/.cache/dein'))
call dein#load_toml('~/.config/nvim/plugins.toml', {'lazy': 0})
call dein#end()

" Options {{{

"---------------------------------------------------------------------------
" Colors:
"

" Enable 256 colors terminal
set t_Co=256
" set term=xterm-256color
set termguicolors

colorscheme monrovia

"---------------------------------------------------------------------------
" Python:
"
let g:python_host_prog = '/usr/local/Cellar/python/2.7.14/bin/python2'
let g:python3_host_prog = '/usr/local/Cellar/python3/3.6.3/bin/python3'

"---------------------------------------------------------------------------
" Search:
"

" Ignore the case of normal letters.
set ignorecase
" If the search pattern contains upper case characters, override ignorecase
" option.
set smartcase
" Enable incremental search.
set incsearch
" Don't highlight search result.
set nohlsearch
" Searches wrap around the end of the file.
set wrapscan


"---------------------------------------------------------------------------
" Edit:
"

" Smart insert tab setting.
set smarttab
" Exchange tab to spaces.
set noexpandtab
" Substitute <Tab> with blanks.
set tabstop=4
" Spaces instead <Tab>.
" set softtabstop=4
" Autoindent width.
set shiftwidth=4
" Round indent by shiftwidth.
set shiftround

" Enable smart indent.
set autoindent smartindent

" Disable modeline.
set modelines=0
set nomodeline

" Use clipboard register.
set clipboard+=unnamedplus

" Enable backspace delete indent and newline.
set backspace=indent,eol,start

" Highlight <>.
" set matchpairs+=<:>

" Display another buffer when current buffer isn't saved.
set hidden

" Search home directory path on cd.
" But can't complete.
"  set cdpath+=~

" Enable folding.
set foldenable
set foldmethod=marker
set foldlevel=0
set fillchars=vert:\|
" set foldmarker={#----------}
set commentstring=%s

" Use vimgrep.
" set grepprg=internal
" Use grep.
set grepprg=grep\ -inH

" Exclude = from isfilename.
set isfname-==

" Keymapping timeout.
set timeout timeoutlen=3000 ttimeoutlen=100

" CursorHold time.
set updatetime=1000

" Set swap directory.
set directory-=.

" Set undofile.
set undofile
let &g:undodir = &directory

" Enable virtualedit in visual block mode.
set virtualedit=block

"---------------------------------------------------------------------------
" View:
"

" Colorscheme

" Show line number.
set number

" Line width
set textwidth=0

" Show <TAB> and <CR>
set list
" set listchars=tab:|,trail:_,extends:»,precedes:«,nbsp:%
set showbreak=↪\
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set listchars=tab:.\ ,trail:_,extends:>,precedes:<,nbsp:~

" Always display statusline.
set laststatus=2

" Height of command line.
set cmdheight=1

" Not show command on statusline.
set noshowcmd

" Show title.
set title

" Title length.
set titlelen=95

" Title string.
let &g:titlestring="
      \ %{expand('%:p:~:.')}%(%m%r%w%)
      \ %<\(%{WidthPart(
      \ fnamemodify(&filetype ==# 'vimfiler' ?
      \ substitute(b:vimfiler.current_dir, '.\\zs/$', '', '') : getcwd(), ':~'),
      \ &columns-len(expand('%:p:.:~')))}\) - VIM"

" Disable tabline.
set showtabline=0

" Turn down a long line appointed in 'breakat'
set linebreak
set showbreak=\
set breakat=\ \	;:,!?
" Wrap conditions.
set whichwrap+=h,l,<,>,[,],b,s,~
if exists('+breakindent')
  set breakindent
  set wrap
else
  set nowrap
endif

" Do not display the greetings message at the time of Vim start.
set shortmess=aTI

" Do not display the completion messages
set noshowmode
if has('patch-7.4.314')
  set shortmess+=c
else
  autocmd MyAutoCmd VimEnter *
        \ highlight ModeMsg guifg=bg guibg=bg |
        \ highlight Question guifg=bg guibg=bg
endif

" Do not display the edit messages
if has('patch-7.4.1570')
  set shortmess+=F
endif

" Don't create backup.
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.

" Disable bell.
set t_vb=
set novisualbell
set belloff=all

" Display candidate supplement.
set nowildmenu
set wildmode=list:longest,full
" Increase history amount.
set history=1000
" Display all the information of the tag by the supplement of the Insert mode.
set showfulltag
" Can supplement a tag in a command-line.
set wildoptions=tagfile

if has('nvim')
  set shada=!,'300,<50,s10,h
else
  set viminfo=!,'300,<50,s10,h
endif

" Disable menu
let g:did_install_default_menus = 1

" Completion setting.
set completeopt=menuone
if has('patch-7.4.775')
  set completeopt+=noinsert
endif
" Don't complete from other buffer.
set complete=.
" Set popup menu max height.
set pumheight=20

" Report changes.
set report=0

" Maintain a current line at the time of movement as much as possible.
set nostartofline

" Splitting a window will put the new window below the current one.
set splitbelow
" Splitting a window will put the new window right the current one.
set splitright
" Set minimal width for current window.
set winwidth=30
" Set minimal height for current window.
" set winheight=20
set winheight=1
" Set maximam maximam command line window.
set cmdwinheight=5
" No equal window size.
set noequalalways

" Adjust window size of preview and help.
set previewheight=8
set helpheight=12

set ttyfast

" When a line is long, do not omit it in @.
set display=lastline
" Display an invisible letter with hex format.
"set display+=uhex

function! WidthPart(str, width) abort "{{{
  if a:width <= 0
    return ''
  endif
  let ret = a:str
  let width = strwidth(a:str)
  while width > a:width
    let char = matchstr(ret, '.$')
    let ret = ret[: -1 - len(char)]
    let width -= strwidth(char)
  endwhile

  return ret
endfunction"}}}

" For conceal.
set conceallevel=2 concealcursor=niv

set colorcolumn=79
set showmatch
set relativenumber
" }}} 
" Keymap {{{
let mapleader=","

nnoremap K <NOP>
nnoremap . <NOP>
nnoremap , <NOP>
map J 5j
map K 5k
map L 5l
map H 5h
map <leader>s :w<ESC>

map <F2> :TagbarToggle<CR>
map <F3> :NERDTreeToggle<CR>

nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

vnoremap <space> za
nnoremap <space> za
nnoremap <esc> :noh<return><esc>

" in write mode
imap <c-o> <esc>o

nnoremap <Leader>f :NERDTreeToggle<Enter>
" Denite {{{
nnoremap <C-b> :Denite -mode=normal buffer -cursor-pos=0 -force-quit -statusline=false -highlight_matched_char=CursorLine -highlight_matched_range=CursorLine -highlight_mode_insert=CursorLine<CR>
nnoremap <C-o> :Denite -mode=insert file_rec -auto-resize -cursor-pos=0 -force-quit <CR>
"}}}
" Git {{{
nnoremap <leader>gs :Denite -mode=normal gitstatus<CR>
nnoremap <leader>gl :Denite -mode=normal gitlog<CR>
" nnoremap <leader>gc :vsplit Gcommit<CR><c-w>k
" nnoremap <leader>gs :vsplit :Gstatus<CR>
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
map Ю >
" }}}
"}}}
