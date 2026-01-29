
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