Meu setup para o vim/nvim, recomento o [Neovim][1] pois os plugins e documentações são voltados para ele.

**testado apenas no linux**

Requisitos
----------

* Vim8 ou [Neovim][1] :)
* [git][4]
* [vim-plug][2]
* [PHP Composer][3]

Instalação
----------

Geral
* **instalar vim-plug**
* clonar ou baixar o repositorio no seu diretorio $HOME


Para neovim

* copiar arquivo `init.vim` para pasta `~/.config/nvim`
* abrir neovim
* excutar comando `PlugInstall`
* correr para o abraço :)


Para vim

**alguns plugins podem conter comportamento inesperado**

* copiar arquivo `init.vim` para pasta `~/` alterando nome para `.vimrc`
* abrir vim
* excutar comando `PlugInstall`
* para que o deplete funcione corretamente, é nescessário baixar o pacote `neovim` com o gerencidor de pacotes `pip3` do python 3, estranhamente comigo esse passo funciona apenas em sistemas baseados no ubuntu/debian.
* correr para o abraço :)

[1]: https://neovim.io/
[2]: https://github.com/junegunn/vim-plug
[3]: https://getcomposer.org/
[4]: https://git-scm.com/
