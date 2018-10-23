Meu setup para o vim/nvim, recomento o [Neovim][1] pois os plugins e documentações são voltados para ele.

**testado apenas no linux**

Requisitos
----------

* Vim8 ou Neovim :)
* [git][3]
* [vim-plug][2]
* [PHP Composer][3]

Instalação
----------

Para neovim

* copiar pasta `plugconf` para pasta `~/.config/nvim`
* copiar arquivo `init.vim` para pasta `~/.config/nvim`
* criar pasta chamda `plugged` em `~/.config/nvim`
* abrir neovim
* excutar comando `PlugInstall`
* correr para o abraço :)


Para vim

**alguns plugins podem conter comportamento inesperado**

* copiar pasta `plugconf` para pasta `~/.vim`
* copiar arquivo `init.vim` para pasta `~/` alterando nome para `.vimrc` 
* criar pasta chamda `plugged` em `~/.vim`
* abrir vim
* excutar comando `PlugInstall`
* para que o deplete funcione corretamente, é nescessário baixar o pacote `neovim` com o gerencidor de pacotes `pip3` do python 3, estranhamente comigo esse passo funciona apenas em sistemas baseados no ubuntu.
* correr para o abraço :)
