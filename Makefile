all: modularize-script minify-script copy-swf copy-assets

include ../../build/modules.mk

MODULE=audiojs
MODULARIZE_OPTIONS = -jq
SOURCE_SCRIPT_FILE=audiojs/audio.js
SOURCE_SCRIPT_FOLDER=audiojs
TARGET_STYLE_FOLDER=${FOUNDRY_STYLES_FOLDER}/audiojs
SOURCE_STYLE_FOLDER=includes

copy-swf:
	rm -rf ${TARGET_SCRIPT_FOLDER}
	mkdir -p ${TARGET_SCRIPT_FOLDER}
	cp ${SOURCE_SCRIPT_FOLDER}/audiojs.swf ${TARGET_SCRIPT_FOLDER}/audiojs.swf
	cp ${SOURCE_SCRIPT_FOLDER}/player-graphics.gif ${TARGET_SCRIPT_FOLDER}/player-graphics.gif