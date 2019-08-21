.PHONY:all

all:server client

server:gobang_server.c datebase.c
	gcc -o $@ $^ -lpthread -lmysqlclient -I/usr/include/mysql -L/usr/lib64/mysql

client:gobang_client.c
	gcc $^ -o $@

.PHONY:clean

clean:
	rm -f all
