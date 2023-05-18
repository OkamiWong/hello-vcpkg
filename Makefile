.PHONY: configure
configure:
	cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=~/my-sources/resources/vcpkg/scripts/buildsystems/vcpkg.cmake

.PHONY: build
build:
	cmake --build build
