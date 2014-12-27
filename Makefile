# Change the following as required:
CC	= gcc

CFLAGS	=  -Wall 

PROGS =	sock
OBJS = buffers.o cliopen.o crlf.o error.o loop.o main.o \
	   servopen.o sockopts.o sourcesink.o  \
	   tellwait.o writen.o
# Can delete strerror.o on systems that already support it (4.4BSD)
# I delete it in Linux 
#
all:	${PROGS}

${OBJS}: sock.h

sock:	${OBJS}
		${CC} ${CCFLAGS} -o $@ ${OBJS} ${LIBS}

clean:
		rm -f ${PROGS} core core.* *.o temp.* *.out typescript*
