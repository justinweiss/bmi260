# BMI260 IMU driver

This is a kernel module driver for the Bosch BMI260 IMU. This module is based off of the existing kernel BMI160 implementation. The 260 appears to follow the same specifications as the 270, or close enough to work at least. The configuration binary comes from [Chromium OS](https://chromium.googlesource.com/chromiumos/platform/ec/+/2adede07783d40c6115a96f5f70dbf94ea9a2215/third_party/bmi260/accelgyro_bmi260_config_tbin.h).

Currently only i2c connections are supported, SPI may come later.
