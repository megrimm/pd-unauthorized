# Makefile for iemnet

lib.name = unauthorized

class.sources = \
	spigot~.c \
	beatify~.c \
	compressor~.c \
	countund.c \
	disto~.c \
	exciter.c \
	filterbank~.c \
	randomblock~.c \
	wahwah~.c \
	scrolllist.c \
	sonogram~.c
	# vocoder~.c
	# speexin~.c
	# speexout~.c
	#
	# scratcher~.c
	# samplebox~.c
	# probalizer.c
	# playlist.c
	# pianoroll.c
	# mp3write~.c
	# mp3streamout~.c
	# mp3fileout~.c
	# mp3streamin~.c
	# mp3cast~.c
	# mp3amp~.c
	# grid.c
	# formant~.c
	# cooled~.c
	# blinkenlights.c
	# audience~.c


datafiles = \
	sonogram~-help.pd \
	unauthorized-meta.pd \
	LICENSE.txt \
	README.txt \
	$(empty)

cflags += -std=c99

# link to dynlibs
ldlibs = \
-lpthread \
#-lmp3lame
#-lspeex \

# This Makefile is based on the Makefile from pd-lib-builder written by
# Katja Vetter. You can get it from:
# https://github.com/pure-data/pd-lib-builder

PDLIBBUILDER_DIR=pd-lib-builder/
include $(PDLIBBUILDER_DIR)/Makefile.pdlibbuilder
