ifneq ($(KERNELRELEASE),)
# kbuild частина makefile
obj-m   := hello.o
else
# звичайний makefile
KDIR ?= /lib/modules/$(shell uname -r)/build

default:
 $(MAKE) -C $(KDIR) M=$$PWD
clean:
 $(MAKE) -C $(KDIR) M=$$PWD clean
endif
