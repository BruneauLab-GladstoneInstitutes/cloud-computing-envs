FROM jupyter/datascience-notebook

RUN conda install -c r r-stringi

RUN R -e "install.packages('BiocManager',repo='http://cran.rstudio.com/'); \
setRepositories(ind = 1:2); \
BiocManager::install('multtest')"
RUN R -e "install.packages('Seurat', repo='http://cran.rstudio.com/')" 

RUN pip -V \
 && pip install --upgrade pip \
 && pip install scanpy[louvain] \
 && pip install simpleSynapse