dasm: dasm.cpp opcode.i
	$(CXX) -g -O2 -o $@ dasm.cpp

opcode.i: opcode.py ops.txt sfrs.txt
	python3 opcode.py

clean::
	rm -f bytesuffix.i opcode.i sfr16.i sfr8.i wordsuffix.i dasm
