# Install package
```
sudo apt-get install build-essential cmake
sudo apt-get install pkg-config
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev
sudo apt-get install libv4l-dev v4l-utils
sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt-get install libqt4-dev
sudo apt-get install mesa-utils libgl1-mesa-dri libqt4-opengl-dev
sudo apt-get install libatlas-base-dev gfortran libeigen3-dev
sudo apt-get install python2.7-dev python3-dev python-numpy python3-numpy
```

# download source of opencv 3.4.0
```
wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.0.zip
unzip opencv.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.0.zip
unzip opencv_contrib.zip
ls -l
total 144736
drwxrwxr-x 11 ubuntu ubuntu     4096 Dec 23 04:46 opencv-3.4.0
drwxrwxr-x  6 ubuntu ubuntu     4096 Dec 23 01:15 opencv_contrib-3.4.0
-rw-rw-r--  1 ubuntu ubuntu 57147512 Feb 12 21:02 opencv_contrib.zip
-rw-rw-r--  1 ubuntu ubuntu 91041793 Feb 12 20:12 opencv.zip
```

# Build opencv 3.4.0
```
cd opencv-3.4.0/
mkdir build
cd build/

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_TBB=OFF \
-D WITH_IPP=OFF \
-D WITH_1394=OFF \
-D BUILD_WITH_DEBUG_INFO=OFF \
-D BUILD_DOCS=OFF \
-D INSTALL_C_EXAMPLES=ON \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D BUILD_EXAMPLES=OFF \
-D BUILD_TESTS=OFF \
-D BUILD_PERF_TESTS=OFF \
-D WITH_QT=ON \
-D WITH_OPENGL=ON \
-D OPENCV_EXTRA_MODULES_PATH=/home/ubuntu/Documents/02_OpenCV/opencv_contrib-3.4.0/modules \
-D WITH_V4L=ON  \
-D WITH_FFMPEG=ON \
-D WITH_XINE=ON \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D PYTHON2_INCLUDE_DIR=/usr/include/python2.7 \
-D PYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2.7/dist-packages/numpy/core/include/ \
-D PYTHON2_PACKAGES_PATH=/usr/lib/python2.7/dist-packages \
-D PYTHON2_LIBRARY= /usr/lib/x86_64-linux-gnu/libpython2.7.so \
-D PYTHON3_INCLUDE_DIR=/usr/include/python3.5m \
-D PYTHON3_NUMPY_INCLUDE_DIRS=/usr/lib/python3/dist-packages/numpy/core/include/ \
-D PYTHON3_PACKAGES_PATH=/usr/lib/python3.5/dist-packages \
-D PYTHON3_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.5m.so \
../

lscpu
make -j8
sudo make install
cat /etc/ld.so.conf.d/*

pkg-config --modversion opencv
3.4.0

pkg-config --libs --cflags opencv
-I/usr/local/include/opencv -I/usr/local/include -L/usr/local/lib -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_dpm -lopencv_face -lopencv_photo -lopencv_fuzzy -lopencv_img_hash -lopencv_line_descriptor -lopencv_optflow -lopencv_reg -lopencv_rgbd -lopencv_saliency -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_surface_matching -lopencv_tracking -lopencv_datasets -lopencv_text -lopencv_dnn -lopencv_plot -lopencv_xfeatures2d -lopencv_shape -lopencv_video -lopencv_ml -lopencv_ximgproc -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_flann -lopencv_xobjdetect -lopencv_imgcodecs -lopencv_objdetect -lopencv_xphoto -lopencv_imgproc -lopencv_core
```

# run example
```
cd /usr/local/share/OpenCV/samples/
ll
total 124
drwxr-xr-x 31 root root 4096 Feb 14 16:37 ./
drwxr-xr-x  5 root root 4096 Feb 14 16:37 ../
drwx------  2 root root 4096 Feb 14 16:37 aruco/
drwx------  2 root root 4096 Feb 14 16:37 bgsegm/
drwxr-xr-x  4 root root 4096 Feb 14 16:37 bioinspired/
drwx------  2 root root 4096 Feb 14 16:37 ccalib/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 cpp/
drwx------  2 root root 4096 Feb 14 16:37 datasets/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 dnn/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 dpm/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 face/
drwx------  2 root root 4096 Feb 14 16:37 fuzzy/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 gpu/
drwx------  2 root root 4096 Feb 14 16:37 img_hash/
drwx------  2 root root 4096 Feb 14 16:37 line_descriptor/
drwx------  2 root root 4096 Feb 14 16:37 optflow/
drwx------  2 root root 4096 Feb 14 16:37 phase_unwrapping/
drwx------  2 root root 4096 Feb 14 16:37 plot/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 python/
drwx------  2 root root 4096 Feb 14 16:37 reg/
drwx------  2 root root 4096 Feb 14 16:37 rgbd/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 saliency/
drwx------  2 root root 4096 Feb 14 16:37 stereo/
drwx------  2 root root 4096 Feb 14 16:37 structured_light/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 surface_matching/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 tapi/
drwx------  2 root root 4096 Feb 14 16:37 text/
drwx------  2 root root 4096 Feb 14 16:37 tracking/
drwx------  2 root root 4096 Feb 14 16:37 xfeatures2d/
drwx------  2 root root 4096 Feb 14 16:37 ximgproc/
drwx------  2 root root 4096 Feb 14 16:37 xphoto/

cp cpp/facedetect.cpp ~/Documents/02_OpenCV/opencv-3.4.0/build/
cd ~/Documents/02_OpenCV/opencv-3.4.0/build/
g++ -o facedetect facedetect.cpp $(pkg-config --libs --cflags opencv)

./facedetect --cascade="/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --nested-cascade="/usr/local/share/OpenCV/haarcascades/haarcascade_eye_tree_eyeglasses.xml " --scale=1.3
Video capturing has been started ...
[ INFO:0] Initialize OpenCL runtime...
detection time = 228.778 ms
detection time = 29.156 ms
detection time = 35.3474 ms

python /usr/local/share/OpenCV/samples/python/facedetect.py --cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --nested-cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_eye_tree_eyeglasses.xml" /dev/video0

face detection using haar cascades

USAGE:
    facedetect.py [--cascade <cascade_fn>] [--nested-cascade <cascade_fn>] [<video_source>]

[ INFO:0] Initialize OpenCL runtime...
^CTraceback (most recent call last):
  File "/usr/local/share/OpenCV/samples/python/facedetect.py", line 71, in <module>
    if cv.waitKey(5) == 27:
KeyboardInterrupt

python3 /usr/local/share/OpenCV/samples/python/facedetect.py --cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --nested-cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_eye_tree_eyeglasses.xml" /dev/video0

face detection using haar cascades

USAGE:
    facedetect.py [--cascade <cascade_fn>] [--nested-cascade <cascade_fn>] [<video_source>]

[ INFO:0] Initialize OpenCL runtime...
^CTraceback (most recent call last):
  File "/usr/local/share/OpenCV/samples/python/facedetect.py", line 57, in <module>
    rects = detect(gray, cascade)
  File "/usr/local/share/OpenCV/samples/python/facedetect.py", line 23, in detect
    flags=cv.CASCADE_SCALE_IMAGE)
KeyboardInterrupt
```

# real log
```
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install build-essential cmake
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install pkg-config
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install libv4l-dev v4l-utils
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install libqt4-dev
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install mesa-utils libgl1-mesa-dri libqt4-opengl-dev
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install libatlas-base-dev gfortran libeigen3-dev
ubuntu@ubuntu:~/Documents/02_OpenCV$ sudo apt-get install python2.7-dev python3-dev python-numpy python3-numpy

ubuntu@ubuntu:~/Documents/02_OpenCV$ wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.0.zip
ubuntu@ubuntu:~/Documents/02_OpenCV$ unzip opencv.zip
ubuntu@ubuntu:~/Documents/02_OpenCV$ wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.0.zip
ubuntu@ubuntu:~/Documents/02_OpenCV$ unzip opencv_contrib.zip

ubuntu@ubuntu:~/Documents/02_OpenCV$ ls -l
total 144736
drwxrwxr-x 11 ubuntu ubuntu     4096 Dec 23 04:46 opencv-3.4.0
drwxrwxr-x  6 ubuntu ubuntu     4096 Dec 23 01:15 opencv_contrib-3.4.0
-rw-rw-r--  1 ubuntu ubuntu 57147512 Feb 12 21:02 opencv_contrib.zip
-rw-rw-r--  1 ubuntu ubuntu 91041793 Feb 12 20:12 opencv.zip

ubuntu@ubuntu:~/Documents/02_OpenCV$ cd opencv-3.4.0/
ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0$ mkdir build
ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0$ cd build/
ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_TBB=OFF \
-D WITH_IPP=OFF \
-D WITH_1394=OFF \
-D BUILD_WITH_DEBUG_INFO=OFF \
-D BUILD_DOCS=OFF \
-D INSTALL_C_EXAMPLES=ON \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D BUILD_EXAMPLES=OFF \
-D BUILD_TESTS=OFF \
-D BUILD_PERF_TESTS=OFF \
-D WITH_QT=ON \
-D WITH_OPENGL=ON \
-D OPENCV_EXTRA_MODULES_PATH=/home/ubuntu/Documents/02_OpenCV/opencv_contrib-3.4.0/modules \
-D WITH_V4L=ON  \
-D WITH_FFMPEG=ON \
-D WITH_XINE=ON \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D PYTHON2_INCLUDE_DIR=/usr/include/python2.7 \
-D PYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2.7/dist-packages/numpy/core/include/ \
-D PYTHON2_PACKAGES_PATH=/usr/lib/python2.7/dist-packages \
-D PYTHON2_LIBRARY= /usr/lib/x86_64-linux-gnu/libpython2.7.so \
-D PYTHON3_INCLUDE_DIR=/usr/include/python3.5m \
-D PYTHON3_NUMPY_INCLUDE_DIRS=/usr/lib/python3/dist-packages/numpy/core/include/ \
-D PYTHON3_PACKAGES_PATH=/usr/lib/python3.5/dist-packages \
-D PYTHON3_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.5m.so \
../

...

-- General configuration for OpenCV 3.4.0 =====================================
--   Version control:               unknown
--
--   Extra modules:
--     Location (extra):            /home/ubuntu/Documents/02_OpenCV/opencv_contrib-3.4.0/modules
--     Version control (extra):     unknown
--
--   Platform:
--     Timestamp:                   2018-02-14T08:04:03Z
--     Host:                        Linux 4.4.0-112-generic x86_64
--     CMake:                       3.5.1
--     CMake generator:             Unix Makefiles
--     CMake build tool:            /usr/bin/make
--     Configuration:               RELEASE
--
--   CPU/HW features:
--     Baseline:                    SSE SSE2 SSE3
--       requested:                 SSE3
--     Dispatched code generation:  SSE4_1 SSE4_2 FP16 AVX AVX2
--       requested:                 SSE4_1 SSE4_2 AVX FP16 AVX2
--       SSE4_1 (3 files):          + SSSE3 SSE4_1
--       SSE4_2 (1 files):          + SSSE3 SSE4_1 POPCNT SSE4_2
--       FP16 (1 files):            + SSSE3 SSE4_1 POPCNT SSE4_2 FP16 AVX
--       AVX (5 files):             + SSSE3 SSE4_1 POPCNT SSE4_2 AVX
--       AVX2 (9 files):            + SSSE3 SSE4_1 POPCNT SSE4_2 FP16 FMA3 AVX AVX2
--
--   C/C++:
--     Built as dynamic libs?:      YES
--     C++ Compiler:                /usr/bin/c++  (ver 5.4.0)
--     C++ flags (Release):         -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Winit-self -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -fvisibility-inlines-hidden -O3 -DNDEBUG  -DNDEBUG
--     C++ flags (Debug):           -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Winit-self -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -fvisibility-inlines-hidden -g  -O0 -DDEBUG -D_DEBUG
--     C Compiler:                  /usr/bin/cc
--     C flags (Release):           -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wuninitialized -Winit-self -Wno-narrowing -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -O3 -DNDEBUG  -DNDEBUG
--     C flags (Debug):             -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wmissing-prototypes -Wstrict-prototypes -Wundef -Winit-self -Wpointer-arith -Wshadow -Wuninitialized -Winit-self -Wno-narrowing -Wno-comment -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -g  -O0 -DDEBUG -D_DEBUG
--     Linker flags (Release):
--     Linker flags (Debug):
--     ccache:                      NO
--     Precompiled headers:         YES
--     Extra dependencies:          dl m pthread rt /usr/lib/x86_64-linux-gnu/libGLU.so /usr/lib/x86_64-linux-gnu/libGL.so
--     3rdparty dependencies:
--
--   OpenCV modules:
--     To be built:                 aruco bgsegm bioinspired calib3d ccalib core datasets dnn dpm face features2d flann fuzzy highgui img_hash imgcodecs imgproc line_descriptor ml objdetect optflow phase_unwrapping photo plot python2 python3 python_bindings_generator reg rgbd saliency shape stereo stitching structured_light superres surface_matching text tracking video videoio videostab xfeatures2d ximgproc xobjdetect xphoto
--     Disabled:                    js world
--     Disabled by dependency:      -
--     Unavailable:                 cnn_3dobj cudaarithm cudabgsegm cudacodec cudafeatures2d cudafilters cudaimgproc cudalegacy cudaobjdetect cudaoptflow cudastereo cudawarping cudev cvv dnn_modern freetype hdf java matlab ovis sfm ts viz
--     Applications:                apps
--     Documentation:               NO
--     Non-free algorithms:         NO
--
--   GUI:
--     QT:                          YES (ver 4.8.7 EDITION = OpenSource)
--       QT OpenGL support:         YES (/usr/lib/x86_64-linux-gnu/libQtOpenGL.so)
--     GTK+:                        NO
--     OpenGL support:              YES (/usr/lib/x86_64-linux-gnu/libGLU.so /usr/lib/x86_64-linux-gnu/libGL.so)
--     VTK support:                 NO
--
--   Media I/O:
--     ZLib:                        /usr/lib/x86_64-linux-gnu/libz.so (ver 1.2.8)
--     JPEG:                        /usr/lib/x86_64-linux-gnu/libjpeg.so (ver )
--     WEBP:                        build (ver encoder: 0x020e)
--     PNG:                         /usr/lib/x86_64-linux-gnu/libpng.so (ver 1.2.54)
--     TIFF:                        /usr/lib/x86_64-linux-gnu/libtiff.so (ver 42 / 4.0.6)
--     JPEG 2000:                   /usr/lib/x86_64-linux-gnu/libjasper.so (ver 1.900.1)
--     OpenEXR:                     build (ver 1.7.1)
--
--   Video I/O:
--     FFMPEG:                      YES
--       avcodec:                   YES (ver 56.60.100)
--       avformat:                  YES (ver 56.40.101)
--       avutil:                    YES (ver 54.31.100)
--       swscale:                   YES (ver 3.1.101)
--       avresample:                NO
--     GStreamer:                   NO
--     libv4l/libv4l2:              NO
--     v4l/v4l2:                    linux/videodev2.h
--     Xine:                        YES (ver 1.2.6)
--     gPhoto2:                     NO
--
--   Parallel framework:            pthreads
--
--   Trace:                         YES (with Intel ITT)
--
--   Other third-party libraries:
--     Lapack:                      NO
--     Eigen:                       YES (ver 3.2.92)
--     Custom HAL:                  NO
--
--   NVIDIA CUDA:                   NO
--
--   OpenCL:                        YES (no extra features)
--     Include path:                /home/ubuntu/Documents/02_OpenCV/opencv-3.4.0/3rdparty/include/opencl/1.2
--     Link libraries:              Dynamic load
--
--   Python 2:
--     Interpreter:                 /usr/bin/python2.7 (ver 2.7.12)
--     Libraries:                   /usr/lib/x86_64-linux-gnu/libpython2.7.so (ver 2.7.12)
--     numpy:                       /usr/lib/python2.7/dist-packages/numpy/core/include (ver 1.11.0)
--     packages path:               /usr/lib/python2.7/dist-packages
--
--   Python 3:
--     Interpreter:                 /usr/bin/python3 (ver 3.5.2)
--     Libraries:                   /usr/lib/x86_64-linux-gnu/libpython3.5m.so (ver 3.5.2)
--     numpy:                       /usr/lib/python3/dist-packages/numpy/core/include (ver 1.13.1)
--     packages path:               /usr/lib/python3.5/dist-packages
--
--   Python (for build):            /usr/bin/python2.7
--
--   Java:
--     ant:                         NO
--     JNI:                         NO
--     Java wrappers:               NO
--     Java tests:                  NO
--
--   Matlab:                        NO
--
--   Install to:                    /usr/local
-- -----------------------------------------------------------------
--
-- Configuring done
-- Generating done
-- Build files have been written to: /home/ubuntu/Documents/02_OpenCV/opencv-3.4.0/build

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ lscpu
Architecture:          x86_64
CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                8
On-line CPU(s) list:   0-7
Thread(s) per core:    2
Core(s) per socket:    4
Socket(s):             1
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 94
Model name:            Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz
Stepping:              3
CPU MHz:               800.007
CPU max MHz:           3500.0000
CPU min MHz:           800.0000
BogoMIPS:              5184.47
Virtualization:        VT-x
L1d cache:             32K
L1i cache:             32K
L2 cache:              256K
L3 cache:              6144K
NUMA node0 CPU(s):     0-7
Flags:                 fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch epb invpcid_single intel_pt kaiser tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx rdseed adx smap clflushopt xsaveopt xsavec xgetbv1 dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ make -j8
...
[100%] Built target opencv_python2
[100%] Built target opencv_python3

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ sudo make install
...

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ cat /etc/ld.so.conf.d/*
/usr/lib/x86_64-linux-gnu/libfakeroot
# Multiarch support
/lib/i386-linux-gnu
/usr/lib/i386-linux-gnu
/lib/i686-linux-gnu
/usr/lib/i686-linux-gnu
# libc default configuration
/usr/local/lib
# Multiarch support
/lib/x86_64-linux-gnu
/usr/lib/x86_64-linux-gnu
/usr/lib/nvidia-384
/usr/lib32/nvidia-384
/usr/lib/nvidia-384
/usr/lib32/nvidia-384
# Legacy biarch compatibility support
/lib32
/usr/lib32

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ pkg-config --modversion opencv
3.4.0

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ pkg-config --libs --cflags opencv
-I/usr/local/include/opencv -I/usr/local/include -L/usr/local/lib -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_dpm -lopencv_face -lopencv_photo -lopencv_fuzzy -lopencv_img_hash -lopencv_line_descriptor -lopencv_optflow -lopencv_reg -lopencv_rgbd -lopencv_saliency -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_surface_matching -lopencv_tracking -lopencv_datasets -lopencv_text -lopencv_dnn -lopencv_plot -lopencv_xfeatures2d -lopencv_shape -lopencv_video -lopencv_ml -lopencv_ximgproc -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_flann -lopencv_xobjdetect -lopencv_imgcodecs -lopencv_objdetect -lopencv_xphoto -lopencv_imgproc -lopencv_core

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ cd /usr/local/share/OpenCV/samples/
ubuntu@ubuntu:/usr/local/share/OpenCV/samples$ ll
total 124
drwxr-xr-x 31 root root 4096 Feb 14 16:37 ./
drwxr-xr-x  5 root root 4096 Feb 14 16:37 ../
drwx------  2 root root 4096 Feb 14 16:37 aruco/
drwx------  2 root root 4096 Feb 14 16:37 bgsegm/
drwxr-xr-x  4 root root 4096 Feb 14 16:37 bioinspired/
drwx------  2 root root 4096 Feb 14 16:37 ccalib/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 cpp/
drwx------  2 root root 4096 Feb 14 16:37 datasets/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 dnn/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 dpm/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 face/
drwx------  2 root root 4096 Feb 14 16:37 fuzzy/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 gpu/
drwx------  2 root root 4096 Feb 14 16:37 img_hash/
drwx------  2 root root 4096 Feb 14 16:37 line_descriptor/
drwx------  2 root root 4096 Feb 14 16:37 optflow/
drwx------  2 root root 4096 Feb 14 16:37 phase_unwrapping/
drwx------  2 root root 4096 Feb 14 16:37 plot/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 python/
drwx------  2 root root 4096 Feb 14 16:37 reg/
drwx------  2 root root 4096 Feb 14 16:37 rgbd/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 saliency/
drwx------  2 root root 4096 Feb 14 16:37 stereo/
drwx------  2 root root 4096 Feb 14 16:37 structured_light/
drwxr-xr-x  3 root root 4096 Feb 14 16:37 surface_matching/
drwxr-xr-x  2 root root 4096 Feb 14 16:37 tapi/
drwx------  2 root root 4096 Feb 14 16:37 text/
drwx------  2 root root 4096 Feb 14 16:37 tracking/
drwx------  2 root root 4096 Feb 14 16:37 xfeatures2d/
drwx------  2 root root 4096 Feb 14 16:37 ximgproc/
drwx------  2 root root 4096 Feb 14 16:37 xphoto/

ubuntu@ubuntu:/usr/local/share/OpenCV/samples$ cp cpp/facedetect.cpp ~/Documents/02_OpenCV/opencv-3.4.0/build/
ubuntu@ubuntu:/usr/local/share/OpenCV/samples$ cd ~/Documents/02_OpenCV/opencv-3.4.0/build/
ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ g++ -o facedetect facedetect.cpp $(pkg-config --libs --cflags opencv)

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$ ./facedetect --cascade="/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --nested-cascade="/usr/local/share/OpenCV/haarcascades/haarcascade_eye_tree_eyeglasses.xml " --scale=1.3
Video capturing has been started ...
[ INFO:0] Initialize OpenCL runtime...
detection time = 228.778 ms
detection time = 29.156 ms
detection time = 35.3474 ms
...

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$  python /usr/local/share/OpenCV/samples/python/facedetect.py --cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --nested-cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_eye_tree_eyeglasses.xml" /dev/video0

face detection using haar cascades

USAGE:
    facedetect.py [--cascade <cascade_fn>] [--nested-cascade <cascade_fn>] [<video_source>]

[ INFO:0] Initialize OpenCL runtime...
^CTraceback (most recent call last):
  File "/usr/local/share/OpenCV/samples/python/facedetect.py", line 71, in <module>
    if cv.waitKey(5) == 27:
KeyboardInterrupt

ubuntu@ubuntu:~/Documents/02_OpenCV/opencv-3.4.0/build$  python3 /usr/local/share/OpenCV/samples/python/facedetect.py --cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml" --nested-cascade "/usr/local/share/OpenCV/haarcascades/haarcascade_eye_tree_eyeglasses.xml" /dev/video0

face detection using haar cascades

USAGE:
    facedetect.py [--cascade <cascade_fn>] [--nested-cascade <cascade_fn>] [<video_source>]

[ INFO:0] Initialize OpenCL runtime...
^CTraceback (most recent call last):
  File "/usr/local/share/OpenCV/samples/python/facedetect.py", line 57, in <module>
    rects = detect(gray, cascade)
  File "/usr/local/share/OpenCV/samples/python/facedetect.py", line 23, in detect
    flags=cv.CASCADE_SCALE_IMAGE)
KeyboardInterrupt
```
