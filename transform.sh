echo "transforming!"
cd input
for file in *.mp4
    do
        ffmpeg -y -i $file -c:v libx264 -c:a aac -strict experimental -tune fastdecode -pix_fmt yuv420p -b:a 192k -ar 48000 ../output/$file

done


#echo "please input file name:"
#read -p "name:" path

#ffmpeg -y -i $path -c:v libx264 -c:a aac -strict experimental -tune fastdecode -pix_fmt yuv420p -b:a 192k -ar 48000 ./output/$path
