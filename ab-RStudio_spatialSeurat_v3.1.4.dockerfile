
FROM rocker/tidyverse:3.6.2
RUN R -e "install.packages(c('sf', 'BiocManager','devtools', 'remotes', 'SMDTools', 'glue','miniUI'), repo='http://cran.rstudio.com/')"
RUN R -e "BiocManager::install('patchwork')"
RUN R -e "devtools::install_github('satijalab/seurat', ref = 'spatial')"
RUN R -e "devtools::install_github('satijalab/seurat-data')"
