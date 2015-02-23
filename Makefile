all: modularize-script minify-script create-script-folder copy-swf

include ../../build/modules.mk

MODULE=audiojs
SOURCE_SCRIPT_FILE=audiojs/audio.js
SOURCE_SCRIPT_FOLDER=audiojs
TARGET_SCRIPT_FOLDER=${FOUNDRY_SCRIPTS_FOLDER}/audiojs

copy-swf:
	cp ${SOURCE_SCRIPT_FOLDER}/audiojs.swf ${TARGET_SCRIPT_FOLDER}/audiojs.swf
	cp ${SOURCE_SCRIPT_FOLDER}/player-graphics.gif ${TARGET_SCRIPT_FOLDER}/player-graphics.gif