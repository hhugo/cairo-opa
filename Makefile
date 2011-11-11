INCLUDE=-I +cairo
LINK=--mllopt cairo.cmxa
OPB=opa-plugin-builder --js-validator-off
OPA=opa $(OPAOPT)

all: cairo.opx

cairo.opp: src/cairo.ml
	$(OPB) $(INCLUDE) src/cairo.ml -o cairo

cairo.opx: cairo.opp
	$(OPA) -c $(INCLUDE) src/cairo.opa cairo.opp
clean:
	rm -Rf *.exe _build _tracks *.log *.opp
