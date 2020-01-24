# qb3-dev1 node
git clone https://github.com/ENCODE-DCC/atac-seq-pipeline.git
python3 -m pip install --user caper
cd atac-seq-pipeline/
bash scripts/download_genome_data.sh hg38 ../
echo "caper run /wynton/home/bruneau/ablair/atac-seq-pipeline/atac.wdl -i test.json" | qsub -V -N atac-test -pe smp 4 -l mem_free=6G -l h_rt=02:00:00 