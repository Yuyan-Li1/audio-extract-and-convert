OUTPUT_DIR=./audio
mkdir "$OUTPUT_DIR"
for i in *.mkv;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  # ffmpeg -i "$i" "${name}.mov"
  # ffmpeg -i input-video.avi -vn -acodec copy output-audio.aac
  ffmpeg -i "$i" -vn -acodec copy "$OUTPUT_DIR/${name}.aac"
  # ffmpeg -i sample.avi -q:a 0 -map a sample.mp3
done
