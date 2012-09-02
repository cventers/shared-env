" show me extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set shiftwidth=4 ts=4
" set incsearch ignorecase hlsearch
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" Improve the function of '.' by keeping it from moving the cursor
nmap . .`[

set laststatus=2
set ruler

function! InitPlugins()
  call CmdAlias('makesd', 'Makesd')
  call CmdAlias('makecsd', 'Makecsd')
  au! InitPlugins VimEnter
endfunction

aug InitPlugins
  au!
  au VimEnter * :call InitPlugins()
aug END

set guifont=Monospace\ 9

let g:localvimrc_ask=0

" reselect block after indent/outdent
vnoremap < <gv
vnoremap > >gv

