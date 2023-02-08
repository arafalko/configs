# Defined in - @ line 1
#function ls --wraps='ls -alh' --wraps='ls -alh --color=auto' --description 'alias ls ls -alh --color=auto'
# command ls -alh --color=auto $argv;
#end

function ls
    if command -q exa
       exa -al $argv
    else
       ls -alh $argv
    end
end
