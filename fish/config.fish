set -gx EDITOR nvim

set -g fish_greeting

if status is-interactive
  echo 1
  if type -q pfetch
    pfetch
  end

  if not set -q SSH_CONNECTION;
    echo 2
    if type -q tmux; and not set -q TMUX; # 1 oznacza że nie znaleziono tej zmiennej
      echo 3
      set output (tmux list-sessions 2>&1) # Wyświetl listę sesji tmuxa gdy nie jesteś w tmuxie
      if string match --invert --quiet 'no server running*' "$output"; and string match --invert --quiet 'error*' "$output"
          echo 5
          echo Tmux sessions
          echo $output
          set sessions_opened (echo $output | wc -l)
          echo $sessions_opened
          if [ "$sessions_opened" = "1" ]
            echo 5
            set first_window (echo $output | sed 's/:.*//g')
            echo Only one window so attaching to $first_window
            tmux a -t $first_window
            kill $fish_pid
          end
      else
        tmux # rozpocznij nową instancję
        kill $fish_pid
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
