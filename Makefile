obj-m += drv.o

CC=arm-lg115x-linux-gnueabi-gcc

KERNEL_SRC := /home4/wonhong.kwon/kernel/linux-lg115x
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules
	# compile the trigger
	$(CC) trigger.c -O2 -o trigger

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
	rm -fr ./trigger
