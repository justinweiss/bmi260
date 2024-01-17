# SPDX-License-Identifier: GPL-2.0-only
#
# Makefile for Bosch BMI260 IMU
#
obj-m += bmi260_core.o
obj-m += bmi260_i2c.o
# TODO: bmi260_spi

KERNEL_SRC ?= /lib/modules/$(shell uname -r)/build

all default: modules
install: modules_install

modules modules_install help clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(shell pwd) $@
