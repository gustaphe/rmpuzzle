.PHONY: all install uninstall

INSTALL_PATH?=/usr/local/bin

all : install

install :
	! ln ./logic-masters2pdf.sh ${INSTALL_PATH}/logic-masters2pdf
	! ln ./rmpuzzle.sh ${INSTALL_PATH}/rmpuzzle
	! rmapi mkdir /Puzzles

uninstall :
	${RM} ${INSTALL_PATH}/logic-masters2pdf ${INSTALL_PATH}/rmpuzzle
