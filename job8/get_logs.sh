Date=$(date +%d-%m-%y-%H:%M)
document=number_connection-$Date
last gabriel | wc -l >>$document
tar -czvf /home/gabriel/Shell.exe/job8/$document.tar.gz $document
mv $document.tar.gz /home/gabriel/Shell.exe/job8/Backup
rm $document
