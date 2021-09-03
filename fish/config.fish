set -gx EDITOR nvim

fish_vi_key_bindings
fish_user_key_bindings
fzf_key_bindings

set -g fish_greeting

if type -q pfetch
  pfetch
end
