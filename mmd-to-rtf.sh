#!/bin/sh

# Install multimarkdown first to /usr/local/bin/mmd (brew install mmd)
# Send multimarkdown formatted text as stdin, your clipboard will then have a copy the text in rtf format.

cat /dev/stdin > ~/.mmd2rtf.mmd;

if [ ! -f ~/.mmd2rtf.mmd ]; then
	echo "~/.mmd2rtf.mmd could not be created.";
	exit 1
fi	

/usr/local/bin/mmd ~/.mmd2rtf.mmd;
if [ ! -f ~/.mmd2rtf.html ]; then
	echo "~/.mmd2rtf.html could not be created.";
	exit 1
fi

textutil -convert rtf ~/.mmd2rtf.html;

if [ ! -f ~/.mmd2rtf.rtf ]; then
	echo "~/.mmd2rtf.rtf could not be created.";
	exit 1
fi

pbcopy < ~/.mmd2rtf.rtf
exit 0
