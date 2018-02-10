" Rics vimrc

" Improvements not vi
set nocompatible

" Enable file type detection and file type specific plugin and 
" indent scripts 
filetype plugin indent on

" Syntax on set title
syn on se title

" Tabbing and such
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number
set nowrap
set linespace=8
set spell
set hlsearch
set colorcolumn=80

" Maps
nnoremap <C-n> :NERDTree<CR>
nnoremap <F2> :tabdo winc =<CR>


" COLOUR SCHEAM
colorscheme elflord

" Vim, please dont splatter temp files all over
" my machine, put them all here please.
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" PLUGIN CLOSE TAG HTML
au Filetype html,xml,xsl,html,phtml,php source ~/.vim/scripts/closetag.vim
imap <C-Space> <C-x><C-o>

" BUNDLE PLUGIN CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

" BUNDLE PLUGIN NERDTREE
set runtimepath+=~/.vim/bundle/nerdtree

" Nice delete other buffers script
source ~/.vim/scripts/BufOnly.vim

" Allow Taboo (tab renaming) to save session info
set sessionoptions+=tabpages,globals
