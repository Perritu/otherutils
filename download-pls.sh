yt-dlp \
  -f bestaudio \
  -x --audio-format vorbis --audio-quality 192kbps \
  --embed-metadata --embed-thumbnail \
  -o "dl/%(id)s.%(ext)s" \
  https://music.youtube.com/watch?v=R_BO8C05XLA
  # https://music.youtube.com/playlist?list=PL6IX5ZZXpghkIxeLilsdIr0y6RI4FaDw4