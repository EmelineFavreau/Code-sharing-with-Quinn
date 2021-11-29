# Schedule task, allocate RAM and time
#$ -l tmem=4G
#$ -l h_vmem=4G
#$ -l h_rt=01:30:00

# Set the task to run with Bash, set output on the screen to go into the results file (I think), and set the name for the task

#$ -S /bin/bash
#$ -j y
#$ -N Orco_Exonerate_Test_2.1

# Run Exonerate for gapped alignment (the <<--model affine:local>> bit is for gapped alignment) using Drosophila Orco as the query, and Vespula germanica as the target
#Send the result to the 'results' directory and name it "res_fly_v_wasp.txt"
/share/apps/genomics/exonerate-2.2.0/bin/exonerate --model affine:local input/Drosophila_Orco.fna input/Vespula_germ.fna > results/res_fly_v_wasp.txt