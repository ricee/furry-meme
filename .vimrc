" Rics vimrc
execute pathogen#infect()

" Improvements not vi
" set nocompatible

" Enable file type detection and file type specific plugin and 
" indent scripts 
filetype plugin indent on

" Syntax on set title
syntax on 

set title

" Tabbing and such
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set nowrap
set linespace=8
set spell
set hlsearch
set colorcolumn=80

" Maps
nnoremap <F2> :tabdo winc =<CR>

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|vendor\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" COLOUR SCHEAM
colorscheme elflord

" Vim, please dont splatter temp files all over
" my machine, put them all here please.
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" PLUGIN CLOSE TAG HTML
imap <C-Space> <C-x><C-o>

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*blade.php,*.vue'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" BUNDLE PLUGIN CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir' : '\.git$\|build$\|bower_components\|vendor\|node_modules\|dist\|target' ,
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

" BUNDLE PLUGIN NERDTREE
nnoremap <C-n> :NERDTree<CR>

" Nice delete other buffers script
source ~/.vim/scripts/BufOnly.vim

" Allow Taboo (tab renaming) to save session info
set sessionoptions+=tabpages,globals
