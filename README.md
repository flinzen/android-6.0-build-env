1. Read instruction http://source.android.com/source/downloading.html

1.1. install repo: https://gerrit.googlesource.com/git-repo/+/refs/heads/master/README.md

1.2. Create a new directory:
  ```
  mkdir android
  cd android
  ```

2. Initialize manifests:
  ```
  repo init -u https://android.googlesource.com/platform/manifest -b android-6.0.1_r74 --depth=1
  git clone https://github.com/flinzen/local_manifests -b my-hacks .repo/local_manifests
  ```

3. Checkout sources:
  ```
  repo sync -c
  ```

4.
```
apt-get update
apt-get install curl
```

4.1. Install git-lfs
```
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt install git-lfs
```

4.2 In Android directory
```
cd vendor/opengapps/sources/
for d in ./*/ ; do (cd  && git lfs pull); done
```

If nothing happens or error appears checkout master branch in subdirectories and use ```git lfs pull``` command manually

5. Install docker engine: https://docs.docker.com/engine/install/ubuntu/ then

```
docker build -t ayufan_14.04:latest ayufan_14.04/.
```

6. ./run-build.sh


7. Compile sources:
  ```
  source build/envsetup.sh
  # tulip_chihpd-eng: use for normal Android build with Launcher
  lunch tulip_chiphd-eng
  make -jN
  ```
  where N number of threads

8. after successfull make and packing image with sdcard_image pine.img.gz sopine

9. wait around 10-15 minutes


