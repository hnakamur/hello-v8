hello-world: hello-world.cc
	cc -g hello-world.cc -I /usr/include/nodejs/deps/v8 -I /usr/include/nodejs/deps/v8/include -lv8 -lstdc++ -o hello-world

clean:
	@rm -f hello-world
