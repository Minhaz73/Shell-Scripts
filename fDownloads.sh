#! /bin/bash

cd ~/Downloads

# checking if files are available in ~/Downloads directory
isoF=$(ls -1 *.iso* 2> /dev/null | wc -l)
packages=$(ls -1 *.deb *.rpm 2> /dev/null | wc -l)
books=$(ls -1 *.pdf *.epub *.cbz *.mobi 2> /dev/null | wc -l)
images=$(ls -1 *.jpg *.png *.jpeg *.webp *.svg 2> /dev/null | wc -l)
torrents=$(ls -1 *.torrent 2> /dev/null | wc -l)
video=$(ls -1 *.mkv *.mp4 2> /dev/null | wc -l)
music=$(ls -1 *.mp3 2> /dev/null | wc -l)
archive=$(ls -1 *.tar* *.zip *.7z *.rar 2> /dev/null | wc -l)
document=$(ls -1 *.txt *.doc *.docx *.html *.text 2> /dev/null | wc -l)


# Moving files from ~/Download folder to ther own folder by there extensions
if [ $isoF -gt 0 ]
then
	mv *.iso* Iso
	echo "All iso file is moved"
fi

if [ $packages -gt 0 ]
then
	mv *.deb *.rpm Packages 2> /dev/null
	echo "All package file is moved"
fi

if [ $books -gt 0 ]
then
	mv *.pdf *.epub *.cbz *.mobi Books 2> /dev/null
	echo "All book file is moved"
fi

if [ $images -gt 0 ]
then
	mv *.jpg *.png *.jpeg *.webp *.svg Pictures 2> /dev/null
	echo "All image file is moved"
fi

if [ $torrents -gt 0 ]
then
	mv *.torrent Torrents 2> /dev/null
	echo "All torrent file is moved"
fi

if [ $video -gt 0 ]
then
	mv *.mkv *.mp4 Video 2> /dev/null
	echo "All video file is moved"
fi

if [ $archive -gt 0 ]
then
	mv *.tar* *.zip *.7z *.rar Archives 2> /dev/null
	echo "All archive file is moved"
fi

if [ $music -gt 0 ]
then
	mv *.mp3 Musics
	echo "All music file is moved"
fi

if [ $document -gt 0 ]
then
	mv *.txt *.doc *.docx *.html *.text Documents 2> /dev/null
	echo "All document file is moved"
fi
echo "Downloads directory is clean  "

