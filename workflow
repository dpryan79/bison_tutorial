Usage
    bison vs. bison_herd
    Preprocessing
        Just reference trim_galore
    Alignment
        General usage
            Building indices
                Can't use -c option
                E.Coli
                    bison_index genomes/E.Coli
                    Sherman -e 1 -pe -CG 20 -CH 99 --genome_folder genomes/E.Coli/ -l 100 -o 100 -n 1000000
                    Sherman -e 1 -pe -CG 20 -CH 99 --genome_folder genomes/E.Coli/ -l 50 -o 50 -n 1000000
                    mpiexec -n 3 ~/bin/bison --directional -p 5 -g genomes/E.Coli/ -1 reads/50_1.fq.gz -2 reads/50_2.fq.gz
                    mpiexec -n 3 ~/bin/bison_herd --directional -p 5 -g genomes/E.Coli/ -1 "reads/*_1*" -2 "reads/*_2*"
        Local alignment
                Human
                    bison_index genomes/Human
                    mpiexec -n 3 ~/bin/bison --local -p 5 -g genomes/Human/ -1 reads/sample_1.fq.gz -2 reads/sample_2.fq.gz
        Other special settings
    Marking duplicates
    Methylation bias graphs
    Methylation extraction
    Accessory scripts
        bedGraph2BSseq.py
        bedGraph2methylKit
        bedGraph2MethylSeekR.py
        bedGraph2MOABS.c
        CpG_coverage.c
        make_reduced_genome.c
        merge_bedGraphs.py
        merge_CpGs.c
