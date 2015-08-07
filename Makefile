INCDRS = -Iinclude

SRCFLS = ex-1.c list.c
         
OBJFLS = ex-1.o list.o

EXE    = ex-1.exe

CC     = gcc
LL     = gcc
CFLAGS =
LFLAGS =


$(EXE): $(OBJFLS)
	$(LL) $(LFLAGS) -o $@ $(OBJFLS) $(LIBDRS) $(LIBFLS)

.c.o:
	$(CC) $(CFLAGS) -o $@ -c $(INCDRS) $<

all:
	make clean
	make depend

depend:
	makedepend $(INCDRS) $(SRCFLS)
	make $(EXE)

clean:
	$(RM) $(EXE)
	$(RM) $(OBJFLS)
