Do ~/.config/lvim/config.lua (`~/Appdata/Local/lvim/config.lua`)
Trzeba dodać taką linijkę na końcu 
->
  dofile(vim.fn.expand('$HOME/configs/vim/lunarvim/config.lua'))
<-
Przy okazji $HOME powinno się rozwijać do folderu użytkowinka.

Do tego samego katalogu trzeba skopiować/zlinkować ginit.lua
To konfiguracja dla klienta graficznego.
