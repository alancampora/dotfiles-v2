call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'scrooloose/nerdtree',{ 'on':  'NERDTreeToggle' } | Plug 'ryanoasis/vim-devicons' 
Plug 'preservim/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 't9md/vim-choosewin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'SirVer/ultisnips'
Plug 'jparise/vim-graphql' 
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
