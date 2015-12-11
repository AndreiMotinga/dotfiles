call plug#begin()

" text object ruby block
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'

" improving vim navigation by disabling hjkl and others
Plug 'wikitopian/hardmode'

" syntax check
Plug 'benekastah/neomake'
"
Plug 'Shougo/deoplete.nvim'
Plug 'christoomey/vim-tmux-navigator' "vim tmux integration
Plug 'tpope/vim-endwise'
Plug 'benjaminwhite/Benokai'
Plug 'bbatsov/rubocop'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'thoughtbot/vim-rspec'
Plug 'Yggdroot/indentLine' " indentation
Plug 'mustache/vim-mustache-handlebars' " handlebars support
Plug 'tpope/vim-eunuch' " :Rename filename
Plug 'tpope/vim-ragtag' " ^x= for <%= %> and ^x for <% %>
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdtree'
Plug 'ggreer/the_silver_searcher'
Plug 'ervandew/ag'
Plug 'airblade/vim-gitgutter'  " git gutter
Plug 'godlygeek/tabular' " align things
Plug 'rizzatti/dash.vim' " docs

call plug#end()

" ====== general ======================
" =====================================
" set clipboard=unnamed
set cursorline
set shell=/bin/zsh
syntax on
set hidden "move between unsaved files
set clipboard=unnamed "so I can copy in and out
set colorcolumn=80
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set t_Co=256
set nolist
set nobackup
set noswapfile
set number
set ignorecase
set smartcase

syntax enable
set background=light
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 16
colorscheme benokai

" resize focused window
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

" set wildmode=longest:full,list    " tab completion
" set wildmenu                      " tab completion
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
"  trail whitespace from the end of the line
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" =========== mappings ===================
" ======================================

"leader settings  ======================
let mapleader = ","
let g:mapleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>
nnoremap <leader>c :CtrlPClearCache<CR>
nnoremap <leader>q :bd <C-a><CR>
nnoremap <leader>r :source ~/dev/dotfiles/init.vim<CR>

" RSpec.vim mappings
nnoremap <Leader>e :!rspec<cr>
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

noremap <leader>w :w<CR>

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap ,f :NERDTreeFind<CR>
nnoremap <space><space> :b#<CR>
nnoremap 0 ^
nnoremap k gk
nnoremap j gj
nnoremap === mmgg=G`m^zz`<Esc> :w<CR>

inoremap jk <Esc>
inoremap uu <Esc>u

if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif
nmap <silent> <DOWN> :cnext<CR>
nmap <silent> <UP> :cprev<CR>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"=========================================
" =============== plugins =================
" =======================================

" Markdown
let g:instant_markdown_slow = 1

" Airline settings
" set ambiwidth=double breakcs russian layout
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='badwolf'

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|tmp'
set wildignore+=*/tmp/*               " ctrlp - ignore files in tmp directories
set wildignore+=*/target/*            " ctrlp - ignore files in target directories
set wildignore+=*.so                  " ctrlp - ignore .so files
set wildignore+=*.o                   " ctrlp - ignore .o files
set wildignore+=*.class               " ctrlp - ignore .class files
set wildignore+=*.swp                 " ctrlp - ignore .swp files
set wildignore+=*.zip                 " ctrlp - ignore .zip files
set wildignore+=*.pdf                 " ctrlp - ignore .pdf files
set wildignore+=*/node_modules/*      " ctrlp - ignore node modules
set wildignore+=*/bower_components/*  " ctrlp - ignore bower compone

" emmet
let g:user_emmet_mode='a'

" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 1

" vimrspec
" let g:rspec_command = "!spring rspec --drb {spec}"
let g:rspec_command = "!rspec --drb {spec}"

" vim tmux integration
let g:tmux_navigator_no_mappings = 1

nnoremap <C-j> :TmuxNavigateDown<cr>
nnoremap <C-k> :TmuxNavigateUp<cr>
nnoremap <C-l> :TmuxNavigateRight<cr>
nnoremap <C-h> :TmuxNavigateLeft<cr>
" nnoremap <C-a> :TmuxNavigatePrevious<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" enable hardmode
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" syntax check
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['jshint']
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop', 'reek']

"russian layout
set langmap=ЖйцукенгшщзфывапролдячсмитьхъЙЦУКЕНГШЩЗФЫВАПРОЛДЯЧСМИТЬ;:qwertyuiopasdfghjklzxcvbnm[]QWERTYUIOPASDFGHJKLZXCVBNM
nnoremap бц <Esc>:w<cr>
inoremap ол <Esc>:w<cr>

" =================================================
" ==========" abbreviations =================================
" ===============================================
iabbrev r require
iabbrev rr require_relative
iabbrev cl console.log()
iabbrev bp binding.pry
iabbrev init initialize
