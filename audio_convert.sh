for dir in ./*/; do
    # create the directory in dir
    output_dir="./$dir/mp3"
    mkdir "$output_dir"
    # find files aac inside $dir/
    for i in "$dir"/*.aac; do
       name=$(basename "$i" .acc)
       echo "$name"
       ffmpeg -i "$i" -vn -ar 44100 -ac 2 -b:a 192k "$output_dir/${name}.mp3"
    done
done
