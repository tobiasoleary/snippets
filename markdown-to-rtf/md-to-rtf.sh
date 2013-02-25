#!/bin/sh

# Install multimarkdown first to /usr/local/bin/mmd (brew install mmd)
# Send multimarkdown formatted text as stdin, your clipboard will then have a copy the text in rtf format.

MD_TMP_FILE="~/.tmp-md-to-rtf.rtf";
MD_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MD_INPUT_FILE="/dev/stdin";
MD_INPUT_FILE="$MD_SCRIPT_DIR/md-to-rtf-input.rtf" #DEBUG

#DEBUG
cat MD_INPUT_FILE | /usr/local/bin/mmd | textutil -convert rtf -stdin -stdout -format html > $MD_TMP_FILE;

if [ ! -f $MD_TMP_FILE ] #If the file did not get created exit
	exit 1;
fi

pbcopy -Prefer rtf < $MD_TMP_FILE;
rm $MD_TMP_FILE;
exit 0;
