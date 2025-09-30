#!/usr/bin/make

# Make config
.SUFFIXES: # Clear all suffix-based implicit rules
.DELETE_ON_ERROR:
SHELL					:= /usr/bin/bash
.DEFAULT_GOAL := all

# Directories
DISTDIR = dist

# Programs
M4				= /usr/bin/m4
M4_FLAGS	= --prefix-builtins
M4_CONFIG = ../../m4-config.m4 ../../keymap.m4
M4TIDY		= ../../m4tidy.sh
RM				= /usr/bin/rm

# Variables
KEYMAP		= modified-programmers-dvorak
LAYERS		= layer-dvorak layer-kbd-control layer-media
DEFINES		= defines
BEHAVIORS = behaviors

all: $(KEYMAP).keymap

$(KEYMAP).keymap: $(KEYMAP).m4 $(M4_CONFIG) $(LAYERS) $(DEFINES) $(BEHAVIORS)
	$(M4) $(M4_FLAGS) $(M4_CONFIG) $< | $(M4TIDY) > $@

$(LAYERS): %: %.m4 $(M4_CONFIG)
	$(M4) $(M4_FLAGS) $(M4_CONFIG) $< | $(M4TIDY) > $@

clean:
	$(RM) -f $(LAYERS)
	$(RM) -f $(KEYMAP).keymap
