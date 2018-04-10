#
# Makefile for analyzier of kindanb
#   Created by:  Akira Kageyama (kage@jamstec.go.jp)
#           on:  2008.06.04
#          for:  Simulation School at Kobe
#

.SUFFIXES:
.SUFFIXES: .f90 .o

# FC = pgf90
FC = ifort

# When you simulate on the machine vector (SX-8R), you need this.
# FFLAGS = -byteswapio
# When you simulate on the machine scalar,
# FFLAGS =

.f90.o:
	$(FC) $(FFLAGS) -c $<


OBJS =	constants.o	\
	ut.o		\
	grid.o		\
	turtle.o


figs: nloop_list.txt plot_data_generator Workfiles
	./plots.csh


Workfiles:
	mkdir -p Workfiles


nloop_list.txt: grepper
	./grepper > nloop_list.txt

grepper: grep_nloop_list.o
	$(FC) $(FFLAGS) -o grepper		\
	 	constants.o			\
		target.o			\
		grep_nloop_list.o



plot_data_generator: gnuplot_data_generator.o
	$(FC) $(FFLAGS) -o plot_data_generator	\
		constants.o	\
	 	target.o	\
		ut.o		\
		grid.o		\
		turtle.o	\
		gnuplot_data_generator.o


gif:
	./epsconv.csh


gnuplot_data_generator.o: constants.o ut.o grid.o turtle.o target.o

grep_nloop_list.o: constants.o target.o

ut.o: constants.o

turtle.o: constants.o ut.o		

grid.o:	constants.o ut.o 

clean:
	rm -f *.o *.mod 
	rm -f gnuplot_data_generator grepper nloop_list.txt
	rm -f plot_data_generator
	rm -rf Workfiles