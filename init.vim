if !exists('g:vscode')
if(has("win32") || has("win64"))
    source $HOME/AppData/Local/nvim/core.vim
    source $HOME/AppData/Local/nvim/normalBinding.vim
else
	source $HOME/.config/nvim/core.vim
    source $HOME/.config/nvim/normalBinding.vim
endif

lua require('init')

if(has("win32") || has("win64"))
    source $HOME/AppData/Local/nvim/plugBinding.vim
else
    source $HOME/.config/nvim/plugBinding.vim
endif

endif "vscode
