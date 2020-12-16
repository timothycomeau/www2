# run bash min.sh from root /ww2
# or run zsh min.sh ... whatever your shell is
# requires npm minify to be installed
# https://www.npmjs.com/package/minify

rm d/css/style.min.css
cd d/css/css_dev
for f in *.css
do minify $f > min/$f.min.css
done
cd min
cat *min.css > style-temp1.min.css
minify style-temp1.min.css > style-temp2.min.css
echo -n "$(<style-temp2.min.css)" > style.min.css
mv -f style.min.css ../..
rm *min.css