#/data/data/com.termux/files/usr/bin/bash
export HHH="$(pwd)"
cd /sdcard/Android/data/com.mojang.minecraft/files/games/com.mojang/resource-pack/ZhangKunze/
zip -r ZhangKunze.mcpack.zip *
cp -f ZhangKunze.mcpack.zip ~/ZhangKunze.github.io/minecraft/ZhangKunze.zip
cd $HHH
git add .
read -p "提交内容 " YYN
git commit -m "$YYN"
git push git@github.com:ZhangKunze/ZhangKunze.github.io
