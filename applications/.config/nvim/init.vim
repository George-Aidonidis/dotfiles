" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
" Autocomplete

Plug 'w0rp/ale'
Plug 'mgee/lightline-bufferline'
Plug 'christoomey/vim-sort-motion'
Plug 'rakr/vim-one'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-system-copy'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

"""""""""""""""""""""""
" Performance options "
"""""""""""""""""""""""
set lazyredraw

so ~/dotfiles/applications/.config/nvim/custom/key-bindings.vim
so ~/dotfiles/applications/.config/nvim/custom/search.vim
so ~/dotfiles/applications/.config/nvim/custom/text-render.vim
so ~/dotfiles/applications/.config/nvim/custom/indent.vim
so ~/dotfiles/applications/.config/nvim/custom/folding.vim
so ~/dotfiles/applications/.config/nvim/custom/misc.vim
so ~/dotfiles/applications/.config/nvim/custom/commands.vim
so ~/dotfiles/applications/.config/nvim/custom/user-interface.vim

let g:neosnippet#enable_completed_snippet = 1

autocmd BufWritePost ~/dotfiles/homeconfig/.bm* !shortcuts