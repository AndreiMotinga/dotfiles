call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim' " colorscheme

"" neivim enhancements
Plug 'tomtom/tcomment_vim' " commenting in/out
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim' "fuzzy find files
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'  " git, shows changed lines
Plug 'tpope/vim-fugitive' " see who made a change, commit history
" Plug 'Yggdroot/indentLine' " indentation
Plug 'pbrisbin/vim-mkdir'
Plug 'christoomey/vim-tmux-navigator' "vim tmux integrated naviagation
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

"" rails
Plug 'jgdavey/tslime.vim' " running tests
Plug 'janko-m/vim-test' " running tests
Plug 'tpope/vim-rails' " rails navigation

"" langauge specific
Plug 'elzr/vim-json' "json
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag' " ^x= for <%= %> and ^x for <% %>
Plug 'mattn/emmet-vim' "emmet
Plug 'gregsexton/MatchTag' "highlight matching tags in html
Plug 'hail2u/vim-css3-syntax'
Plug 'chr4/nginx.vim' " nginx syntax highlight
Plug 'ekalinin/Dockerfile.vim'
Plug 'shime/vim-livedown' "markdown preview, requires `npm install -g livedown`
Plug 'slim-template/vim-slim'

call plug#end()

"" settings
colorscheme onedark
set hidden "move between unsaved files
set clipboard=unnamed "so I can copy in and out
set colorcolumn=95
set termguicolors
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set t_Co=256
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set nobackup
set nowritebackup
set noswapfile
set number
set smartcase
set splitright    " Puts new vsplit windows to the right of the current
set splitbelow    " Puts new split windows to the bottom of the current
set ic " case insensitive search
set iskeyword+=- " Allow to autocomplete hyphenated words
" line number colors
hi LineNr ctermfg=DarkGrey
" resize focused window
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
" persist undo after write
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif
set langmap=ЖйцукенгшщзфывапролдячсмитьхъЙЦУКЕНГШЩЗФЫВАПРОЛДЯЧСМИТЬ;:qwertyuiopasdfghjklzxcvbnm[]QWERTYUIOPASDFGHJKLZXCVBNM " russian layout

iabbrev bp binding.pry
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
 autocmd BufRead,BufNewFile .erb set filetype=html
augroup END

" trigger `autoread` when files changes on disk
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
 \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

"" mappings
let mapleader = ","
let g:mapleader = ","
nnoremap <leader>w :w<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>m :bp<CR>
nnoremap <leader>c :CtrlPClearCache<CR>
nnoremap <leader>q :bd <C-a><CR>
nnoremap <leader>r :source ~/dev/dotfiles/init.vim<CR>
nnoremap <leader>et :e ~/dev/dotfiles/todo<cr>
nnoremap <leader>ev :e ~/dev/dotfiles/init.vim<cr>
nnoremap <leader>ez :e ~/dev/dotfiles/.zshrc<cr>
nnoremap <space><space> :b#<CR>
nnoremap 0 ^
nnoremap k gk
nnoremap j gj
inoremap jk <Esc>
inoremap uu <Esc>u
nnoremap === mmgg=G`m^zz`<Esc> :w<CR>
"disable Ex mode
map q: <Nop>
nnoremap Q <nop>
nnoremap бц <Esc>:w<cr>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"" nerdtree
let NERDTreeShowHidden=1 " show .dotfiles
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

"" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1 " vim tmux integration
nnoremap <C-j> :TmuxNavigateDown<cr>
nnoremap <C-k> :TmuxNavigateUp<cr>
nnoremap <C-l> :TmuxNavigateRight<cr>
nnoremap <C-h> :TmuxNavigateLeft<cr>

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " Airline settings
let g:airline#extensions#tabline#fnamemod = ':t' " Airline settings

" vim-json
let g:vim_json_syntax_conceal = 0

"" tslime
let test#ruby#rspec#executable = 'be rspec'
let test#strategy = "tslime"
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

"" vim-test
nnoremap <Leader>t :wa<cr>:TestFile<CR>
nnoremap <Leader>s :wa<cr>:TestNearest<CR>
nnoremap <Leader>l :wa<cr>:TestLast<CR>
nnoremap <Leader>a :wa<cr>:TestSuite<CR>
nnoremap <Leader>g :wa<cr>:TestVisit<CR>

" " indentline
" let g:indentLine_color_term = 240

"" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
" ignore infinite db/migrate in dialogEDU for easer navigation
let g:ctrlp_custom_ignore = 'db/migrate'
let g:ctrlp_match_window = 'min:4,max:40'
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


"" ag
if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --column
  set grepformat=%f:%l:%m
endif

"" coc
let g:coc_global_extesions = [
      \ 'coc-tsserver',
      \ 'coc-prettier',
      \ 'coc-solargraph',
      \ ]

"set cmdheight=2 " Give more space for displaying messages.
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
set shortmess+=c " Don't pass messages to |ins-completion-menu|.

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"


"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"" Use L to show documentation in preview window.
nnoremap <silent> L :call <SID>show_documentation()<CR>
function! s:show_documentation()
 if (index(['vim','help'], &filetype) >= 0)
   execute 'h '.expand('<cword>')
 elseif (coc#rpc#ready())
   call CocActionAsync('doHover')
 else
   execute '!' . &keywordprg . " " . expand('<cword>')
 endif
endfunction

"" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
 autocmd!
 " Setup formatexpr specified filetype(s).
 autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
 " Update signature help on jump placeholder.
 autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
 nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
 nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
 inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
 inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
 vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
 vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

nmap <leader>do <Plug>(coc-codeaction)

let g:rails_projections = {
      \  "app/controllers/*_controller.rb": {
      \      "test": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/requests/{}/index_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \      "alternate": [
      \        "spec/requests/{}_spec.rb",
      \        "spec/controllers/{}_controller_spec.rb",
      \        "test/controllers/{}_controller_test.rb"
      \      ],
      \   },
      \   "spec/requests/*_spec.rb": {
      \      "command": "request",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \   "spec/requests/*/index_spec.rb": {
      \      "command": "request",
      \      "alternate": "app/controllers/{}_controller.rb",
      \      "template": "require 'rails_helper'\n\n" .
      \        "RSpec.describe '{}' do\nend",
      \   },
      \ }
