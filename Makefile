
echo:
	echo "Makefile for Knuth's SAT programs"

c:
	ctangle knuth/sat0.w - src/sat0.c
	ctangle knuth/sat0w.w - src/sat0w.c
	ctangle knuth/sat8.w - src/sat8.c
	ctangle knuth/sat9.w - src/sat9.c
	ctangle knuth/sat10.w - src/sat10.c
	ctangle knuth/sat11.w - src/sat11.c
	ctangle knuth/sat11.w knuth/sat11k.ch src/sat11k.c
	ctangle knuth/sat12.w - src/sat12.c
	ctangle knuth/sat12-erp.w - src/sat12-erp.c
	ctangle knuth/sat13.w - src/sat13.c
	ctangle knuth/sat-nfa.w - src/sat-nfa.c

pdf:
	cweave knuth/sat0.w - tex/sat0.tex && cd tex && tex sat0.tex && dvipdfm sat0.dvi
	cweave knuth/sat0w.w - tex/sat0w.tex && cd tex && tex sat0w.tex && dvipdfm sat0w.dvi
	cweave knuth/sat8.w - tex/sat8.tex && cd tex && tex sat8.tex && dvipdfm sat8.dvi
	cweave knuth/sat9.w - tex/sat9.tex && cd tex && tex sat9.tex && dvipdfm sat9.dvi
	cweave knuth/sat10.w - tex/sat10.tex && cd tex && tex sat10.tex && dvipdfm sat10.dvi
	cweave knuth/sat11.w - tex/sat11.tex && cd tex && tex sat11.tex && dvipdfm sat11.dvi
	cweave knuth/sat11.w knuth/sat11k.ch tex/sat11k.tex && cd tex && tex sat11k.tex && dvipdfm sat11k.dvi
	cweave knuth/sat12.w - tex/sat12.tex && cd tex && tex sat12.tex && dvipdfm sat12.dvi
	cweave knuth/sat12-erp.w - tex/sat12-erp.tex && cd tex && tex sat12-erp.tex && dvipdfm sat12-erp.dvi
	cweave knuth/sat13.w - tex/sat13.tex && cd tex && tex sat13.tex && dvipdfm sat13.dvi
	cweave knuth/sat-nfa.w - tex/sat-nfa.tex && cd tex && tex sat-nfa.tex && dvipdfm sat-nfa.dvi

fetch:
	cd knuth \
		&& rm -rf * \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat0.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat0w.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat8.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat9.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat10.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat11.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat11k.ch \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat12.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat12-erp.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat13.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat-nfa.w \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/sat-life.tgz \
		&& wget --no-verbose https://cs.stanford.edu/~knuth/programs/SATexamples.tgz