#!/usr/bin/env fish

if test (count $argv) -eq 0
    echo "Usage: process-images.fish <directory>"
    exit 1
end

set input_dir $argv[1]

if not test -d $input_dir
    echo "Error: '$input_dir' is not a directory."
    exit 1
end

set resized_dir "$input_dir/resized"
mkdir -p $resized_dir
echo "📐 Resizing images to width 1920px..."

for f in $input_dir/*.{jpg,jpeg,png}
    if test -f $f
        set ext (string match -r '\.[^.]+$' $f)
        set name (basename $f $ext)
        convert $f -resize 1920x "$resized_dir/$name$ext"
    end
end

set compressed_dir "$input_dir/compressed"
mkdir -p $compressed_dir
echo "🗜️ Compressing resized images..."

for f in $resized_dir/*.{jpg,jpeg}
    if test -f $f
        jpegoptim --max=75 --strip-all --dest=$compressed_dir $f
    end
end

for f in $resized_dir/*.png
    if test -f $f
        pngquant --quality=70-90 --output "$compressed_dir/(basename $f)" $f
    end
end

set webp_dir "$input_dir/webp"
mkdir -p $webp_dir
echo "🌐 Converting compressed images to WebP..."

for f in $compressed_dir/*.{jpg,jpeg,png}
    if test -f $f
        set ext (string match -r '\.[^.]+$' $f)
        set name (basename $f $ext)
        cwebp -q 80 $f -o "$webp_dir/$name.webp"
    end
end

echo "✅ Done!"
echo "Output folders:"
echo " - Resized:    $resized_dir"
echo " - Compressed: $compressed_dir"
echo " - WebP:       $webp_dir"
