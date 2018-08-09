call plug#begin()
Plug 'suan/vim-instant-markdown' "markdown
Plug 'mattn/emmet-vim' "emmet
Plug 'elzr/vim-json' "json
Plug 'benekastah/neomake' " syntax check
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-rails' " rails navigation
Plug 'janko-m/vim-test' " running tests
Plug 'christoomey/vim-tmux-runner' " running tests
Plug 'Shougo/deoplete.nvim' " text completion
Plug 'christoomey/vim-tmux-navigator' "vim tmux integrated naviagation
Plug 'tpope/vim-endwise'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'
Plug 'pbrisbin/vim-mkdir'
Plug 'Yggdroot/indentLine' " indentation
Plug 'tpope/vim-eunuch' " :Rename filename
Plug 'tpope/vim-ragtag' " ^x= for <%= %> and ^x for <% %>
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'  " git, shows changed lines
Plug 'godlygeek/tabular' " align things
Plug 'rking/ag.vim'
Plug 'gregsexton/MatchTag' "highlight matching tags in html
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'OrangeT/vim-csharp'
Plug 'mxw/vim-jsx'

call plug#end()

colorscheme desert
set hidden "move between unsaved files
set clipboard=unnamed "so I can copy in and out
set colorcolumn=80
set tabstop=2
set shiftwidth=2
set expandtab
set t_Co=256
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set nobackup
set noswapfile
set number
set smartcase
set splitright    " Puts new vsplit windows to the right of the current
set splitbelow    " Puts new split windows to the bottom of the current
set ic " case insensitive search
set iskeyword+=- " Allow to autocomplete hyphenated words

" resize focused window
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

let g:loaded_ruby_provider = 1

" mappings
let mapleader = ","
let g:mapleader = ","

" RSpec.vim mappings
nnoremap <Leader>t :wa<cr>:TestFile<CR>
nnoremap <Leader>s :wa<cr>:TestNearest<CR>
nnoremap <Leader>l :wa<cr>:TestLast<CR>
nnoremap <Leader>a :wa<cr>:TestSuite<CR>
nnoremap <Leader>g :wa<cr>:TestVisit<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>
nnoremap <leader>c :CtrlPClearCache<CR>
nnoremap <leader>q :bd <C-a><CR>
nnoremap <leader>r :source ~/dev/dotfiles/init.vim<CR>
nnoremap <leader>et :e ~/dev/dotfiles/todo<cr>
nnoremap <leader>ev :e ~/dev/dotfiles/init.vim<cr>
nnoremap <leader>ez :e ~/dev/dotfiles/.zshrc<cr>

nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <space><space> :b#<CR>
nnoremap 0 ^
nnoremap k gk
nnoremap j gj
inoremap jk <Esc>
inoremap uu <Esc>u
nnoremap === mmgg=G`m^zz`<Esc> :w<CR>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap <C-j> :TmuxNavigateDown<cr>
nnoremap <C-k> :TmuxNavigateUp<cr>
nnoremap <C-l> :TmuxNavigateRight<cr>
nnoremap <C-h> :TmuxNavigateLeft<cr>
nnoremap бц <Esc>:w<cr>
set langmap=ЖйцукенгшщзфывапролдячсмитьхъЙЦУКЕНГШЩЗФЫВАПРОЛДЯЧСМИТЬ;:qwertyuiopasdfghjklzxcvbnm[]QWERTYUIOPASDFGHJKLZXCVBNM " russian layout

let g:instant_markdown_autostart = 1 " autostart  instant markdown
let g:tmux_navigator_no_mappings = 1 " vim tmux integration
let g:deoplete#enable_at_startup = 1 " Use deoplete.
let g:airline#extensions#tabline#enabled = 1 " Airline settings
let g:airline#extensions#tabline#fnamemod = ':t' " Airline settings
" let NERDTreeShowHidden=1 " show .dotfiles
let g:vim_json_syntax_conceal = 0 "disabe hiding in json files

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" test
let test#ruby#rspec#executable = 'spring rspec'
let test#strategy = "vtr"

" syntax check
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_markers = ['jshint', 'jscs']
let g:neomake_ruby_enabled_makers = ['mri', 'rubocop', 'reek']

" Neosnippet settings
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" persist undo after write
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif

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
set wildignore+=*/google-maps-utility-library-v3/*

" abbreviations
iabbrev r require
iabbrev rr require_relative
iabbrev cl console.log()
iabbrev bp binding.pry
iabbrev init initialize

autocmd BufWritePre * :%s/\s\+$//e " Remove trailing white space on save
autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
augroup END

if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --column
  set grepformat=%f:%l:%m
endif
