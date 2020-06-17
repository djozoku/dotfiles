set nocompatible
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-commentary')
  call dein#add('airblade/vim-rooter')
  call dein#add('norcalli/nvim-colorizer.lua')
  call dein#add('junegunn/rainbow_parentheses.vim')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('drewtempelmeyer/palenight.vim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  call dein#add('vim-airline/vim-airline')
  call dein#add('junegunn/fzf')
  call dein#add('junegunn/fzf.vim')
  call dein#add('mhinz/vim-signify')
  call dein#add('tpope/vim-fugitive')
  call dein#add('junegunn/gv.vim')
  call dein#add('voldikss/vim-floaterm')
  call dein#add('mhinz/vim-startify')
"  call dein#add('liuchengxu/vista.vim')
  call dein#add('liuchengxu/vim-which-key')
  call dein#add('junegunn/goyo.vim')
  call dein#add('neomake/neomake')
  call dein#add('jbgutierrez/vim-better-comments')
  call dein#add('justinmk/vim-sneak')
  call dein#add('unblevable/quick-scope')
  call dein#add('junegunn/limelight.vim')
  call dein#add('Shougo/deol.nvim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('Shougo/echodoc.vim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
