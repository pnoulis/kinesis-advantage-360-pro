#!/usr/bin/make

# Make config
.SUFFIXES: # Clear all suffix-based implicit rules
.DELETE_ON_ERROR:
SHELL					:= /usr/bin/bash
.DEFAULT_GOAL := all

# Make arguments
layout ?= layouts/modified-programmers-dvorak

# Variables
BUILD_SYSTEM = Adv360-Pro-ZMK


all: layout

layout:
	@if [[ ! -d $(layout) ]]; then echo missing layout directory: $(layout); exit 1; fi
	cd $(layout) && make
	cp $(layout)/*.keymap $(BUILD_SYSTEM)/config/adv360.keymap

firmware: layout
	cd $(BUILD_SYSTEM) && make clean_firmware
	cd $(BUILD_SYSTEM) && make
	cp $(BUILD_SYSTEM)/firmware/* .

clean:
	rm -f *.uf2
