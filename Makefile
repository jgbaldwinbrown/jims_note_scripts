all: bin/allnote bin/allnotepath bin/allnotepath1 bin/arnote bin/arnotepath bin/arnotepath1 bin/gnote bin/note bin/notepath bin/pdfnote bin/renote bin/renotepath

NOTEDIR=~/Documents/work_stuff/notes

INSTALLDIR=~/mybin

install: bin/allnote bin/allnotepath bin/allnotepath1 bin/arnote bin/arnotepath bin/arnotepath1 bin/gnote bin/note bin/notepath bin/pdfnote bin/renote bin/renotepath
	cp bin/allnote ${INSTALLDIR}/allnote
	cp bin/allnotepath ${INSTALLDIR}/allnotepath
	cp bin/allnotepath1 ${INSTALLDIR}/allnotepath1
	cp bin/arnote ${INSTALLDIR}/arnote
	cp bin/arnotepath ${INSTALLDIR}/arnotepath
	cp bin/arnotepath1 ${INSTALLDIR}/arnotepath1
	cp bin/gnote ${INSTALLDIR}/gnote
	cp bin/note ${INSTALLDIR}/note
	cp bin/notepath ${INSTALLDIR}/notepath
	cp bin/pdfnote ${INSTALLDIR}/pdfnote
	cp bin/renote ${INSTALLDIR}/renote
	cp bin/renotepath ${INSTALLDIR}/renotepath

uninstall:
	rm ${INSTALLDIR}/allnote
	rm ${INSTALLDIR}/allnotepath
	rm ${INSTALLDIR}/allnotepath1
	rm ${INSTALLDIR}/arnote
	rm ${INSTALLDIR}/arnotepath
	rm ${INSTALLDIR}/arnotepath1
	rm ${INSTALLDIR}/gnote
	rm ${INSTALLDIR}/note
	rm ${INSTALLDIR}/notepath
	rm ${INSTALLDIR}/pdfnote
	rm ${INSTALLDIR}/renote
	rm ${INSTALLDIR}/renotepath

bin/allnote: allnote
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/allnotepath: allnotepath
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/allnotepath1: allnotepath1
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/arnote: arnote
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/arnotepath: arnotepath
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/arnotepath1: arnotepath1
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/gnote: gnote
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/note: note
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/notepath: notepath
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/pdfnote: pdfnote
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/renote: renote
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
bin/renotepath: renotepath
	mkdir -p bin
	cat $^ | sed "s|NOTEDIR|${NOTEDIR}|g" > $@
	chmod +x $@
