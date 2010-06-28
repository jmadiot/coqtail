##########################################################################
##  v      #                  The Coq Proof Assistant                   ##
## <O___,, # CNRS-Ecole Polytechnique-INRIA Futurs-Universite Paris Sud ##
##   \VV/  #                                                            ##
##    //   #   Makefile automagically generated by coq_makefile V8.2    ##
##########################################################################

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

#
# This Makefile was generated by the command line :
# coq_makefile -I . -I Arith -I Complex -I Hierarchy -I Modulo -I mytheories/myReals -I Reals -I Sets -I Subseq -I Topology ./Complex/CFsequence.v ./Complex/Cpow.v ./Complex/Csequence_facts.v ./Complex/Cpolar.v ./Complex/Cseries_facts.v ./Complex/Canalysis_diff.v ./Complex/Croot_n.v ./Complex/Cmet.v ./Complex/Cpser_facts.v ./Complex/Cdefinitions.v ./Complex/Cnorm.v ./Complex/Ctacfield.v ./Complex/Csequence.v ./Complex/Cpow_plus.v ./Complex/Cexp.v ./Complex/Canalysis_def.v ./Complex/CFsequence_facts.v ./Complex/Cfunctions.v ./Complex/Canalysis_cont.v ./Complex/Complex.v ./Complex/Cbase.v ./Complex/Cprop_base.v ./Complex/Cpser_def.v ./Complex/Canalysis_basic_facts.v ./Complex/Cderiv.v ./Complex/Canalysis_deriv.v ./Complex/Cseries.v ./Sets/Cartesian_product.v ./Sets/Cartesian_product_facts.v ./Sets/My_Finite_sets_facts.v ./Sets/My_Sets_facts.v ./Reals/Rsequence_facts.v ./Reals/Rtactic.v ./Reals/Rintegral_usual.v ./Reals/Rintegral_tactic.v ./Reals/Runcountable.v ./Reals/RFsequence_facts.v ./Reals/Ranalysis5.v ./Reals/Rsequence.v ./Reals/Rpser_def.v ./Reals/Rsequence_subsequence.v ./Reals/Rseries_def.v ./Reals/Rsequence_ring.v ./Reals/Wallis.v ./Reals/Rpser_facts.v ./Reals/Rsequence_tactics.v ./Reals/Rsequence_usual_facts.v ./Reals/Rsequence_base_facts.v ./Reals/Ratan.v ./Reals/RTaylor.v ./Reals/RStirling.v ./Reals/Ranalysis_def.v ./Reals/Rintegral.v ./Reals/Rfunction_def.v ./Reals/RIVT.v ./Reals/Rsequence_cv_facts.v ./Reals/Rsequence_rel_facts.v ./Reals/Rseries_RiemannInt.v ./Reals/Rseries_facts.v ./Reals/Rmarkov.v ./Reals/C_n.v ./Reals/Rfunction_facts.v ./Reals/RFsequence.v ./Reals/Rpser_usual.v ./Reals/Rzeta2.v ./Reals/Reirr.v ./Topology/TFunctions.v ./Topology/Topology.v ./Topology/Sets.v ./Topology/TContinuity.v ./Topology/Metrics.v ./Topology/Inner_product.v ./Topology/Vectors.v ./Tools.v ./mytheories/myReals/MyRbasic_fun.v ./mytheories/myReals/MyRbase.v ./mytheories/myReals/MyRIneq.v ./mytheories/myReals/MyReals.v ./mytheories/myReals/MyRfunctions.v ./Modulo/Modulo.v ./Subseq/Subseq.v ./Arith/Nfinite_prod.v ./Arith/Nfinite_sum.v ./Arith/Nk_ind.v ./Arith/Nnewton.v ./Arith/Nminus.v ./Arith/Nlittle_fermat.v ./Arith/Npow.v ./Arith/Nle.v ./Arith/Nbinomial.v ./Arith/Ndiv.v ./Arith/Ntools.v ./Hierarchy/Type_class_instance_beta.v ./Hierarchy/Vector_space_facts.v ./Hierarchy/Type_class_definition_beta.v ./Hierarchy/Type_class_instance.v ./Hierarchy/Commutative_ring_binomial.v ./Hierarchy/Type_class_definition.v -no-install -opt 
#

# 
# This Makefile may take 3 arguments passed as environment variables:
#   - COQBIN to specify the directory where Coq binaries resides;
#   - CAMLBIN and CAMLP4BIN to give the path for the OCaml and Camlp4/5 binaries.
COQLIB:=$(shell $(COQBIN)coqtop -where | sed -e 's/\\/\\\\/g')
CAMLP4:="$(shell $(COQBIN)coqtop -config | awk -F = '/CAMLP4=/{print $$2}')"
ifndef CAMLP4BIN
  CAMLP4BIN:=$(CAMLBIN)
endif

CAMLP4LIB:=$(shell $(CAMLP4BIN)$(CAMLP4) -where)

##########################
#                        #
# Libraries definitions. #
#                        #
##########################

OCAMLLIBS:=-I .\
  -I Arith\
  -I Complex\
  -I Hierarchy\
  -I Modulo\
  -I mytheories/myReals\
  -I Reals\
  -I Sets\
  -I Subseq\
  -I Topology
COQSRCLIBS:=-I $(COQLIB)/kernel -I $(COQLIB)/lib \
  -I $(COQLIB)/library -I $(COQLIB)/parsing \
  -I $(COQLIB)/pretyping -I $(COQLIB)/interp \
  -I $(COQLIB)/proofs -I $(COQLIB)/tactics \
  -I $(COQLIB)/toplevel -I $(COQLIB)/contrib/cc -I $(COQLIB)/contrib/dp \
  -I $(COQLIB)/contrib/extraction -I $(COQLIB)/contrib/field \
  -I $(COQLIB)/contrib/firstorder -I $(COQLIB)/contrib/fourier \
  -I $(COQLIB)/contrib/funind -I $(COQLIB)/contrib/interface \
  -I $(COQLIB)/contrib/micromega -I $(COQLIB)/contrib/omega \
  -I $(COQLIB)/contrib/ring -I $(COQLIB)/contrib/romega \
  -I $(COQLIB)/contrib/rtauto -I $(COQLIB)/contrib/setoid_ring \
  -I $(COQLIB)/contrib/subtac -I $(COQLIB)/contrib/xml
COQLIBS:=-I .\
  -I Arith\
  -I Complex\
  -I Hierarchy\
  -I Modulo\
  -I mytheories/myReals\
  -I Reals\
  -I Sets\
  -I Subseq\
  -I Topology 
COQDOCLIBS:= $(COQDOCOPTIONS) 

##########################
#                        #
# Variables definitions. #
#                        #
##########################

ZFLAGS=$(OCAMLLIBS) $(COQSRCLIBS) -I $(CAMLP4LIB)
OPT:=
COQFLAGS:=-q $(OPT) $(COQLIBS) $(OTHERFLAGS) $(COQ_XML)
ifdef CAMLBIN
  COQMKTOPFLAGS:=-camlbin $(CAMLBIN) -camlp4bin $(CAMLP4BIN)
endif
COQC:=$(COQBIN)coqc
COQDEP:=$(COQBIN)coqdep -c
GALLINA:=$(COQBIN)gallina
COQDOC:=$(COQBIN)coqdoc
COQMKTOP:=$(COQBIN)coqmktop
CAMLC:=$(CAMLBIN)ocamlc.opt -c -rectypes
CAMLOPTC:=$(CAMLBIN)ocamlopt.opt -c -rectypes
CAMLLINK:=$(CAMLBIN)ocamlc.opt -rectypes
CAMLOPTLINK:=$(CAMLBIN)ocamlopt.opt -rectypes
GRAMMARS:=grammar.cma
CAMLP4EXTEND:=pa_extend.cmo pa_macro.cmo q_MLast.cmo
CAMLP4OPTIONS:=
PP:=-pp "$(CAMLP4BIN)$(CAMLP4)o -I . $(COQSRCLIBS) $(CAMLP4EXTEND) $(GRAMMARS) $(CAMLP4OPTIONS) -impl"

###################################
#                                 #
# Definition of the "all" target. #
#                                 #
###################################

VFILES:=Complex/CFsequence.v\
  Complex/Cpow.v\
  Complex/Csequence_facts.v\
  Complex/Cpolar.v\
  Complex/Cseries_facts.v\
  Complex/Canalysis_diff.v\
  Complex/Croot_n.v\
  Complex/Cmet.v\
  Complex/Cpser_facts.v\
  Complex/Cdefinitions.v\
  Complex/Cnorm.v\
  Complex/Ctacfield.v\
  Complex/Csequence.v\
  Complex/Cpow_plus.v\
  Complex/Cexp.v\
  Complex/Canalysis_def.v\
  Complex/CFsequence_facts.v\
  Complex/Cfunctions.v\
  Complex/Canalysis_cont.v\
  Complex/Complex.v\
  Complex/Cbase.v\
  Complex/Cprop_base.v\
  Complex/Cpser_def.v\
  Complex/Canalysis_basic_facts.v\
  Complex/Cderiv.v\
  Complex/Canalysis_deriv.v\
  Complex/Cseries.v\
  Sets/Cartesian_product.v\
  Sets/Cartesian_product_facts.v\
  Sets/My_Finite_sets_facts.v\
  Sets/My_Sets_facts.v\
  Reals/Rsequence_facts.v\
  Reals/Rtactic.v\
  Reals/Rintegral_usual.v\
  Reals/Rintegral_tactic.v\
  Reals/Runcountable.v\
  Reals/RFsequence_facts.v\
  Reals/Ranalysis5.v\
  Reals/Rsequence.v\
  Reals/Rpser_def.v\
  Reals/Rsequence_subsequence.v\
  Reals/Rseries_def.v\
  Reals/Rsequence_ring.v\
  Reals/Wallis.v\
  Reals/Rpser_facts.v\
  Reals/Rsequence_tactics.v\
  Reals/Rsequence_usual_facts.v\
  Reals/Rsequence_base_facts.v\
  Reals/Ratan.v\
  Reals/RTaylor.v\
  Reals/RStirling.v\
  Reals/Ranalysis_def.v\
  Reals/Rintegral.v\
  Reals/Rfunction_def.v\
  Reals/RIVT.v\
  Reals/Rsequence_cv_facts.v\
  Reals/Rsequence_rel_facts.v\
  Reals/Rseries_RiemannInt.v\
  Reals/Rseries_facts.v\
  Reals/Rmarkov.v\
  Reals/C_n.v\
  Reals/Rfunction_facts.v\
  Reals/RFsequence.v\
  Reals/Rpser_usual.v\
  Reals/Rzeta2.v\
  Reals/Reirr.v\
  Topology/TFunctions.v\
  Topology/Topology.v\
  Topology/Sets.v\
  Topology/TContinuity.v\
  Topology/Metrics.v\
  Topology/Inner_product.v\
  Topology/Vectors.v\
  Tools.v\
  mytheories/myReals/MyRbasic_fun.v\
  mytheories/myReals/MyRbase.v\
  mytheories/myReals/MyRIneq.v\
  mytheories/myReals/MyReals.v\
  mytheories/myReals/MyRfunctions.v\
  Modulo/Modulo.v\
  Subseq/Subseq.v\
  Arith/Nfinite_prod.v\
  Arith/Nfinite_sum.v\
  Arith/Nk_ind.v\
  Arith/Nnewton.v\
  Arith/Nminus.v\
  Arith/Nlittle_fermat.v\
  Arith/Npow.v\
  Arith/Nle.v\
  Arith/Nbinomial.v\
  Arith/Ndiv.v\
  Arith/Ntools.v\
  Hierarchy/Type_class_instance_beta.v\
  Hierarchy/Vector_space_facts.v\
  Hierarchy/Type_class_definition_beta.v\
  Hierarchy/Type_class_instance.v\
  Hierarchy/Commutative_ring_binomial.v\
  Hierarchy/Type_class_definition.v
VOFILES:=$(VFILES:.v=.vo)
VOFILES0:=$(filter-out ,$(VOFILES))
GLOBFILES:=$(VFILES:.v=.glob)
VIFILES:=$(VFILES:.v=.vi)
GFILES:=$(VFILES:.v=.g)
HTMLFILES:=$(VFILES:.v=.html)
GHTMLFILES:=$(VFILES:.v=.g.html)

all: $(VOFILES) 
spec: $(VIFILES)

gallina: $(GFILES)

html: $(GLOBFILES) $(VFILES)
	- mkdir -p html
	$(COQDOC) -toc -html $(COQDOCLIBS) -d html $(VFILES)
	sh alter_doc.sh html

gallinahtml: $(GLOBFILES) $(VFILES)
	- mkdir -p html
	$(COQDOC) -toc -html -g $(COQDOCLIBS) -d html $(VFILES)
	sh alter_doc.sh html

all.ps: $(VFILES)
	$(COQDOC) -toc -ps $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`

all-gal.ps: $(VFILES)
	$(COQDOC) -toc -ps -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`

all.pdf: $(VFILES)
	$(COQDOC) -toc -pdf $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`

all-gal.pdf: $(VFILES)
	$(COQDOC) -toc -pdf -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`



####################
#                  #
# Special targets. #
#                  #
####################

.PHONY: all opt byte archclean clean install depend html

%.vo %.glob: %.v
	$(COQC) -dump-glob $*.glob $(COQDEBUG) $(COQFLAGS) $*

%.vi: %.v
	$(COQC) -i $(COQDEBUG) $(COQFLAGS) $*

%.g: %.v
	$(GALLINA) $<

%.tex: %.v
	$(COQDOC) -latex $< -o $@

%.html: %.v %.glob
	$(COQDOC) -glob-from $*.glob  -html $< -o $@
	sh alter_doc.sh html

%.g.tex: %.v
	$(COQDOC) -latex -g $< -o $@

%.g.html: %.v %.glob
	$(COQDOC) -glob-from $*.glob -html -g $< -o $@
	sh alter_doc.sh html

%.v.d: %.v
	$(COQDEP) -glob -slash $(COQLIBS) "$<" > "$@" || ( RV=$$?; rm -f "$@"; exit $${RV} )

byte:
	$(MAKE) all "OPT:=-byte"

opt:
	$(MAKE) all "OPT:=-opt"

clean:
	rm -f $(VOFILES) $(VIFILES) $(GFILES) *~
	rm -f all.ps all-gal.ps all.pdf all-gal.pdf all.glob $(VFILES:.v=.glob) $(HTMLFILES) $(GHTMLFILES) $(VFILES:.v=.tex) $(VFILES:.v=.g.tex) $(VFILES:.v=.v.d)
	- rm -rf html

archclean:
	rm -f *.cmx *.o


printenv: 
	@echo CAMLC =	$(CAMLC)
	@echo CAMLOPTC =	$(CAMLOPTC)
	@echo CAMLP4LIB =	$(CAMLP4LIB)

-include $(VFILES:.v=.v.d)
.SECONDARY: $(VFILES:.v=.v.d)

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

