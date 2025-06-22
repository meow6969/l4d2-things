for i in *.png; do 
  magick $i -filter point -resize 256x144 meow/$i;
  # magick  -scale 50% -filter point scaled/$i; 
done

#magick -delay 10 -loop 0 scale2/*.png scale2/peko.gif
#magick -delay 10 -loop 0 scale2/*.png -scale 750% scale2/pekoscaled.gif
