"import plugins and initial configs
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
call plug#end()
colorscheme wal
set number
set relativenumber

"""BASIC TOOLS
"Navigating with jump points
inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
noremap <Space><Tab> <Esc>/<++><Enter>"_c4l
inoremap ;jmp <++>

"Make calcurse notes markdown compatible:
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd Bufread,BufNewFile ~/.calcurse/notes/* set filetype=markdown

map <F6> :setlocal spell! spelllang=en_us<CR>
