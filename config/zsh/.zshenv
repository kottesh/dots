#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# XDG base directory specification

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export JAVA_HOME=/usr/lib/jvm/default
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export CHROME_EXECUTABLE=/usr/bin/chromium
export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts/:$HOME/.cargo/bin:$JAVA_HOME/bin

export ANDROID_SDK_ROOT="/opt/android-sdk/"
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/ # <-- Before all
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin/
export PATH=$PATH:$ANDROID_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/
#<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

export QT_QPA_PLATFORMTHEME=qt5ct

#export _JAVA_AWT_WM_NONREPARENTING=1
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true"
#export _JAVA_OPTIONS="-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
#export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'


export GTK_THEME="Materia-dark-compact"
export MANPAGER="nvim +Man!"

