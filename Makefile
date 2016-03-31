p1:
	cp alu.circ regfile.circ tests
	cd tests && python ./sanity_test.py p1 | tee ../TEST_LOG

p2:
	cp alu.circ regfile.circ mem.circ cpu.circ tests
	cd tests && python ./sanity_test.py p2 | tee ../TEST_LOG

all:
	python assembler.py tests/mytests/add_and_test.s
	python assembler.py tests/mytests/simplebranch.s
	python assembler.py tests/mytests/simplej.s
	python assembler.py tests/mytests/beqbnej.s
	python assembler.py tests/mytests/jr.s
	python assembler.py tests/mytests/jalswlw.s
	python assembler.py tests/mytests/swinc.s
	python assembler.py tests/mytests/lui.s
	python assembler.py tests/mytests/orsub.s
	python assembler.py tests/mytests/shift.s
	python assembler.py tests/mytests/slt.s