setxkbmap us &
xset r rate 200 30 &
nvidia-settings --load-config-only &
nvidia-settings -a [gpu:0]/GpuPowerMizerMode=1 &
picom --experimental-backends &
dwmbar &
mpdupdate &
flameshot &
xrdb ~/.Xresources &
dunst &
mpd-notification &
unclutter --timeout 1 &
xmodmap -e "keycode any = Tab" &
xwallpaper --zoom ~/storage/Pictures/wallpapers/eva-wallpaper-05-crop.jpg &
fcitx &

# fcitx (if not defined in ~/.pam_environment)
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

while :; do
  ssh-agent dwm
done
