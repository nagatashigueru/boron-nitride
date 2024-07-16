import pyprocar

CODE="vasp"
MODE="plain"
ELIMIT=[-5,9]
FERMI=-2.1125
DIRNAME="./"
COLOR="red"
SHOW="true"

band_plot = pyprocar.bandsplot(code=CODE,
                   mode=MODE,
                   elimit=ELIMIT,
                   fermi=FERMI,
                   dirname=DIRNAME,
                   color=COLOR,
                   show=SHOW)

