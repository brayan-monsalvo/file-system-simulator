path = $(shell pwd)

.ONESHELL: #indicamos que cada dependencia se va a ejecutar en una shell independiente

ejecutar1: extraer compilar crearfs
	cd $(path)/file-system-simulator/
	echo "texto ejemplo 1" | java tee /t.txt
	echo "texto ejemplo 2" | java tee /t.txt
	java ls /
	java cp3 /t.txt /t.txt
	java ls /
	java cp3 /t.txt /nuevo.txt
	java ls /
	java cat /nuevo.txt

extraer:
	tar -tvf $(path)/equipo7.tar
	tar -xf $(path)/equipo7.tar
	chmod 777 $(path)/file-system-simulator/*

compilar:
	cd $(path)/file-system-simulator/ 
	javac *.java


crearfs:
	cd $(path)/file-system-simulator/
	java mkfs filesys.dat 256 40

clean:
	rm -rf $(path)/file-system-simulator/
	clear
