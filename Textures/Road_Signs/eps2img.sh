set +x
echo NOW CONVERTING ALL EPS IN CURRENT FOLDER TO PNG
find . -type f -iname "*.png" -delete
find . -type f -iname "*.eps" -exec convert -trim +repage {} {}.png \;
set -x