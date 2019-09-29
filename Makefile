
OBJC=objc
MFLAGS=-q -O
IFLAGS=
OBJFILES=main.o QuadraticForm.o

.SUFFIXES: .m

.m.o:
	$(OBJC) -c $*.m $(MFLAGS) $(IFLAGS)

qform: $(OBJFILES)
	$(OBJC) -o qform $(OBJFILES)

clean::
	rm -f $(OBJFILES) qform

