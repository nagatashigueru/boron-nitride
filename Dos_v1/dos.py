import pyprocar

CODE="vasp"
#COLORS=['lawngreen','royalblue']
COLORS=['blue']
#ITEMS=
ELIMIT=[-5,9]
DIRNAME="./"
MODE="plain"
PLOT_TOTAL=True
FERMI=1.4181

pyprocar.dosplot(code=CODE,
                 colors=COLORS,
                 #items=dict(O=[1,2,3],Fe=[4,5,6,7,8]),
                 elimit=ELIMIT,
                 dirname=DIRNAME,
                 mode=MODE,
                 plot_total=PLOT_TOTAL,
                 fermi=FERMI)
