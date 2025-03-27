for i in *.png; do 
  magick \( $i -scale 50% -filter point -background transparent -gravity northwest -splice 3x5 -gravity southeast -splice 0x4 -filter point -fill 'rgb(19,37,63)' -opaque 'rgb(62,62,62)' \) nobg/$i;
  magick \( meow/bg.png \) \( $i -scale 50% -filter point -background transparent -gravity northwest -splice 3x5 -gravity southeast -splice 0x4 -filter point -fill 'rgb(19,37,63)' -opaque 'rgb(62,62,62)' \) -compose over -composite bgadded/$i;
  magick \( meow/bg.png \) \( shadows/$i \) -compose over -composite \( $i -scale 50% -filter point -background transparent -gravity northwest -splice 3x5 -gravity southeast -splice 0x4 -filter point -fill 'rgb(19,37,63)' -opaque 'rgb(62,62,62)' \) -compose over -composite bgshadowadded/$i;
  magick bgshadowadded/$i -scale 750% -filter point bgshadowaddedscaled/$i;
  magick \( bgshadowadded/$i \) \( meow/letterbox.png \) -compose over -composite bgshadowaddedletterbox/$i;
done

if [[ $1 == "-g" ]]; then
  magick -delay 10 -loop 0 -dispose previous nobg/*.png gif/peko.gif
  magick -delay 10 -loop 0 -dispose previous nobg/*.png -scale 750% gif/pekoscaled.gif
  magick -delay 10 -loop 0 bgadded/*.png gif/pekobg.gif
  magick -delay 10 -loop 0 bgadded/*.png -scale 750% gif/pekobgscaled.gif
  magick -delay 10 -loop 0 bgshadowadded/*.png gif/pekobgshadow.gif
  magick -delay 10 -loop 0 bgshadowaddedletterbox/*.png -scale 750% gif/pekobgshadowscaledletterbox.gif
  magick -delay 10 -loop 0 bgshadowaddedscaled/*.png gif/pekobgshadowscaled.gif
  magick gif/pekobgshadowscaled.gif -chop 840x0 -filter point -resize 512x512 gif/pekobgshadowscaledsquare.gif
fi
