docker run --name ruby
           -p 9424:3000 \
           -v /media/usbraid/docker/ruby/dev:/usr/src/ruby \
           -d paperinik/rpi-ruby
