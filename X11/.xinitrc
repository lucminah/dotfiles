# fcitx (if not defined in ~/.pam_environment)
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export QT_QPA_PLATFORMTHEME=qt6ct
export PATH="$PATH:~/.local/bin/"
export LANG=ja_JP.UTF-8

nvidia-settings --load-config-only &
nvidia-settings -a [gpu:0]/GpuPowerMizerMode=1 &
picom --experimental-backends &
flameshot &
xrdb ~/.Xresources &
dunst &
unclutter --timeout 1 &
setxkbmap -layout "us,br" &
fcitx &
xsetroot -cursor_name left_ptr &

exec awesome
