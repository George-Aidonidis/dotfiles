" Open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree
" Go to previous (last accessed) window.
"autocmd VimEnter * wincmd p
" Close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" Open path of active file and navigate to right buffer
" map <leader><leader> :NERDTreeFind<cr><C-w>l
" Open path of active file
map <leader>nn :NERDTreeFind<cr>
" Toggle nerd tree
map <leader>nb :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1

let NERDTreeIgnore = ['\.tern-config$', '\.tern-port$', '\.netrwhist$']
