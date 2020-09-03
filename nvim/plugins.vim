call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'scrooloose/nerdtree',{ 'on':  'NERDTreeToggle' } | Plug 'ryanoasis/vim-devicons' 
Plug 'preservim/nerdcommenter'
Plug 'chriskempson/base16-vim'
Plug 't9md/vim-choosewin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
