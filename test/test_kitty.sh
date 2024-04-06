#!/usr/bin/env ysh

source $_this_dir/../src/kitty.ysh 
cat $_this_dir/../res/screenshot.png | display-png-chunked (chunk_size = 2048)
# display-png-local $_this_dir/../res/screenshot.png 
