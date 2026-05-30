#!/usr/bin/make

# Make config
.SUFFIXES: # Clear all suffix-based implicit rules
.DELETE_ON_ERROR:
SHELL					:= /usr/bin/bash
.DEFAULT_GOAL := all

# Make arguments
layout ?= layouts/modified-programmers-dvorak
keymap ?= layouts/adv360.keymap

# Variables
BUILD_SYSTEM = Adv360-Pro-ZMK


all: layout

layout:
	@if [[ ! -f $(keymap) ]]; then echo missing keymap: $(keymap); exit 1; fi
	cp $(keymap) $(BUILD_SYSTEM)/config/adv360.keymap

firmware:
	cd $(BUILD_SYSTEM) && make clean_firmware
	cd $(BUILD_SYSTEM) && make
	cp $(BUILD_SYSTEM)/firmware/* .

clean:
	rm -f *.uf2
