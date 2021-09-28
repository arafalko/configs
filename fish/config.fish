set -gx EDITOR nvim

set -g fish_greeting

if status is-interactive
  if type -q pfetch
    pfetch
  end
end

fish_vi_key_bindings
fish_user_key_bindings

# fzf bindings for alt-j/k navigation
export FZF_DEFAULT_OPTS='--bind=alt-j:down,alt-k:up'
