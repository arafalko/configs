set -gx EDITOR nvim

set -g fish_greeting

if status is-interactive
  if type -q pfetch
    pfetch
  end

  if not set -q SSH_CONNECTION;
    if type -q tmux; and not set -q TMUX; # 1 oznacza że nie znaleziono tej zmiennej
      set output (tmux list-sessions 2>&1) # Wyświetl listę sesji tmuxa gdy nie jesteś w tmuxie
      if string match --invert --quiet 'no server running*' "$output"
        if string match --invert --quiet 'error' "$output"
          echo Tmux sessions
          echo $output
        end
      else
        tmux # rozpocznij nową instancję
      end
    end
  end
end

if type -q dotnet
  complete -f -c dotnet -a "(dotnet complete (commandline -cp))"
end

fish_vi_key_bindings
fish_user_key_bindings

# fzf bindings for alt-j/k navigation
export FZF_DEFAULT_OPTS='--bind=alt-j:down,alt-k:up'

# fish command timer
set fish_command_timer_color yellow
set fish_command_timer_millis 0
set fish_command_timer_min_cmd_duration 1000
set fish_command_timer_time_format '%H:%M:%S'

# fist_prompt_pwd
set fish_prompt_pwd_dir_length 6
