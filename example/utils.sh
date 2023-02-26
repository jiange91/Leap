#!/bin/bash

get_pref_log() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=log
}

linux_runahead() {
	sudo rmmod leap_functionality
	sudo insmod leap_functionality.ko cmd=runahead
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
