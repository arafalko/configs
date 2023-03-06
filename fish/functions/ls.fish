# Defined in - @ line 1
#function ls --wraps='ls -alh' --wraps='ls -alh --color=auto' --description 'alias ls ls -alh --color=auto'
# command ls -alh --color=auto $argv;
#end

function ls --wraps='ls -lh --color=auto' --description 'alias na exa -l lub ls -lh'
    if command -q exa
       exa -l $argv;
    else
       command ls -lh --color=auto $argv;
    end
end
