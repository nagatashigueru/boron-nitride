#!/bin/bash
#SBATCH --job-name="test"
#SBATCH --partition="main"
#SBATCH -n 20
#SBATCH --ntasks-per-node=20
#SBATCH --output=vasp-srun.out 
#SBATCH --error=vasp-srun.err
#SBATCH --mem-per-cpu=2000M
#SBATCH --time=24:00:00


module purge
ml intel/2018.04 VASP/5.4.4


export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export LC_ALL=C

EXEC=vasp_std
BINVASP="${EXEC}"

cp INCAR-1 INCAR
cp KPOINTS-1 KPOINTS
srun $BINVASP
cp OUTCAR OUTCAR-1

cp INCAR-2 INCAR
cp KPOINTS-2 KPOINTS
srun $BINVASP
cp OUTCAR OUTCAR-2

rm INCAR KPOINTS OUTCAR CHG CHGCAR WAVECAR EIGENVAL DOSCAR OSZICAR PCDAT XDATCAR REPORT
