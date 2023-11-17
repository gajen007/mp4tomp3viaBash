# mp4tomp3viaBash
Simple bash script to convert all mp4 files to mp3 files in a Linux (Debian/Ubuntu) os

This bash script I developed based on the FFmpeg converter for linux, described here: https://www.fosslinux.com/44788/how-to-convert-mp4-to-mp3-in-linux.htm

Please install the FFmpeg converter via terminal.
**sudo apt -y install ffmpeg lame**

We can just convert a single mp4 file to mp3 file, with the below command.

**ffmpeg -i spbSong.mp4 -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 spbSong.mp3**

Execute the bash script inside where you keep several mp4 files.

Please enhance this repo, with your branches such as...

1.Save the converted files in a different folder

2.Convert the file with different encoding and/or bitRate etc.

Thanks for using this repo..!
