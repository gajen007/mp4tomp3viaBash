echo "This script will convert all mp4 files as mp3 files in this folder!"
echo "This script uses FFmpeg tool"
echo "More info: https://www.fosslinux.com/44788/how-to-convert-mp4-to-mp3-in-linux.htm "
echo "Install the FFmpeg as... sudo apt -y install ffmpeg lame"

#getting mp4 files' names into an array
mp4Files=($(ls *.mp4))

#get the number of mp4 files by counting that array's length
filesCount=${#mp4Files[@]}

#inform the user
echo "Found ${filesCount} mp4 file(s) in this folder!"

#confirm with user by getting user-input
echo "Ready to convert them all as mp3 ? (Y/N)"

#
read confirmed

#validate user-input by 'if-else'
if [[ $confirmed = "Y" ]]
then
	for (( i=0;i<$filesCount;i++)); do
		mp4Ext="${mp4Files[$i]}"
		mp3Ext="${mp4Ext%.*}.mp3"
		echo "converting ${mp4Ext} as ${mp3Ext}..."
		ffmpeg -i ${mp4Ext} -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 ${mp3Ext}
	done
else
	echo "Operation cancelled!"
fi