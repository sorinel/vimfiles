call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on
au! BufWritePost $MYVIMRC source $MYVIMRC "reloads .vimrc on save

"mapping romanian keyboard key § to `
map § `
map! § `
map ± ~
map! ± ~


" the order _does_ matter
source ~/.vim/config/settings.vim
source ~/.vim/config/plugins.vim
"source ~/.vim/config/autocommands.vim
"source ~/.vim/config/commands.vim
source ~/.vim/config/mappings.vim

