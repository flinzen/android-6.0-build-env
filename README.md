1. https://github.com/Callahan633/local_manifests/tree/my-hacks

2. docker build ayufan_14.04:latest

3. ./run-build.sh

4.
apt-get update
apt-get install curl

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt install git-lfs

5. In Android directory
cd vendor/opengapps/sources/
"for d in ./*/ ; do (cd  && git lfs pull); done"


If sdcard_image command not working: apt-get install util-linux

6. after successfull make and packing image with sdcard_image command
Use binaries in blob directory

sudo dd conv=notrunc bs=1k seek=8 of=/dev/your_sd_card if=blob/boot0-pine64-sopine.bin
sudo dd conv=notrunc bs=1k seek=19096 of=/dev/your_sd_card if=blob/u-boot-pine64-sopine.bin

7.
add in uEnv.txt in disp section
disp_screen0=hdmi
disp_mode=screen0

8. wait around 10-15 minutes ))00))0))))


