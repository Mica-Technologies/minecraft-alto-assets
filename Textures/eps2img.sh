set +x
echo NOW CONVERTING ALL EPS IN CURRENT FOLDER TO PNG
find . -type f -iname "*.png" -delete
find . -type f -iname "*.eps" -exec convert -density 300 -trim -resize "256x256!" +repage {} {}.png \;
set -x