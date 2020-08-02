ACT_BYTE="dcc60f04"
WORK_DIR="/Volumes/NiftyUSB/Downloads/Audible"

cd $WORK_DIR

while IFS= read -r orig_file <&3;
do
      #do something with "$f"
      new_file="${orig_file%aax}m4a"
      echo "Converting: $orig_file to $new_file"
      ffmpeg -activation_bytes $ACT_BYTE -i "$orig_file" -vn -c:a copy "$new_file"
      rm -r $orig_file

done 3< book_list.txt

#ffmpeg -activation_bytes dcc60f04 -i The\ Adventure\ of\ the\ Blue\ Carbuncle\ \(Unabridged\).aax -vn -c:a copy ~/Desktop/output.m4a
