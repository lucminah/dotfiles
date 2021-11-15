xset r rate 200 30 &
nvidia-settings --load-config-only &
nvidia-settings -a [gpu:0]/GpuPowerMizerMode=1 &
picom --experimental-backends &
dwmbar &
mpdupdate &
flameshot &
xrdb ~/.Xresources &
dunst &
unclutter --timeout 1 &
setxkbmap -layout "us,br" &
xmodmap -e "keycode any = Tab" &
xcape -e "Super_R=Tab" &
xcape -e "Hyper_L=Escape" &
fcitx &
xsetroot -cursor_name left_ptr &

# fcitx (if not defined in ~/.pam_environment)
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

exec awesome
