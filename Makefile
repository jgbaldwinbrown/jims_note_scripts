all: bin/allnote bin/allnotepath bin/allnotepath1 bin/arnote bin/arnotepath bin/arnotepath1 bin/gnote bin/note bin/notepath bin/pdfnote bin/renote bin/renotepath

NOTEDIR=~/Documents/notes

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
