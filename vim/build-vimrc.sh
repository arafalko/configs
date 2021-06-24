#!/bin/bash

echo \"------------ Vundle ------------\" > vimrc
cat vimrc-parts/vundle.vimrc >> vimrc
#echo \"------------- COC --------------\">> vimrc
#cat vimrc-parts/coc.vimrc >> vimrc
echo \"------------- Moje -------------\">> vimrc
cat vimrc-parts/moje.vimrc >> vimrc
echo \"------------- End --------------\">> vimrc
