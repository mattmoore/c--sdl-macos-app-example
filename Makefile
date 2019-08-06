build: binary package

binary: prepare
	@g++ \
		-o build/game \
		-I/usr/local/include/SDL2 \
		-lsdl2 \
		game.cpp

package:
	@mkdir -p build/Game.app/Contents/MacOS
	@cp Info.plist build/Game.app/Contents
	@cp build/game build/Game.app/Contents/MacOS

prepare:
	@if [ ! -d build ]; then mkdir build; fi

clean:
	@if [ -d build ]; then rm -rf build; fi
