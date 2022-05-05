a.out: main.cc v8api.cc v8api.h
	cc -g v8api.cc main.cc -I /usr/include/nodejs/deps/v8 -I /usr/include/nodejs/deps/v8/include -lv8 -lstdc++ -o a.out

clean:
	@rm -f a.out
