#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    WC="$(wc -w $f | cut -d' ' -f1)"
    SIZE="$(du -sh "${f}" | cut -f1)"
    echo "Processing $f file..."
    echo "File Size: $SIZE"
    echo "$WC"
  fi
done

