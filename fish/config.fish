set -gx EDITOR nvim

set -g fish_greeting

if type -q pfetch
  pfetch
end

fish_vi_key_bindings
fish_user_key_bindings

