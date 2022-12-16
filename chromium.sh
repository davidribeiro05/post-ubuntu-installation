sudo add-apt-repository ppa:xalt7x/chromium-deb-vaapi

cat <<EOF | sudo tee /etc/apt/preferences.d/pin-xalt7x-chromium-deb-vaapi
Package: *
Pin: release o=LP-PPA-xalt7x-chromium-deb-vaapi
Pin-Priority: 1337
EOF

sudo apt-get update

sudo apt install -y --fix-missing chromium-browser chromium-codecs-ffmpeg
