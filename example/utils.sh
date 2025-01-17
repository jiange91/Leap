#!/bin/bash

get_pref_log() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=log
}

linux_readahead() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=readahead
}

leap_pref() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=prefetch wds=$1
}

init_prog() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=init process-name=$1
}

check_pbuf() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=pbuf
}

init_fault_buf() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=fbuf fhs=$1
}

check_fault_buf() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=cfbuf fhs=$1
}
