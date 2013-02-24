#!/bin/sh

cat /dev/stdin | /usr/local/bin/mmd | textutil -convert rtf -stdin -stdout -format html > ~/.tmp-md2rtf.rtf;
pbcopy -Prefer rtf < ~/.tmp-md2rtf.rtf;


# Debug
# cat ~/src/snippets/md2rtf-input.txt | /usr/local/bin/mmd | textutil -convert rtf -stdin -stdout -format html > ~/.tmp-md2rtf.rtf;

# eXtreme Debug
# cat ~/src/snippets/md2rtf-input.txt > ~/.mmd2rtf.md;
# if [ ! -f ~/.mmd2rtf.md ]; then
# 	echo "~/.mmd2rtf.md could not be created.";
# 	exit 1
# fi	
# 
# mmd ~/.mmd2rtf.md > ~/.mmd2rtf.html;
# if [ ! -f ~/.mmd2rtf.html ]; then
# 	echo "~/.mmd2rtf.html could not be created.";
# 	exit 1
# fi
# 
# textutil -convert rtf ~/.mmd2rtf.html;
# 
# if [ ! -f ~/.mmd2rtf.rtf ]; then
# 	echo "~/.mmd2rtf.rtf could not be created.";
# 	exit 1
# fi
# 
# cat ~/.mmd2rtf.rtf;
# exit 0
