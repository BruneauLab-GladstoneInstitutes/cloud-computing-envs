# computing-envs
Docker and Singularity files for single cell analysis on Google Cloud Engine, AWS, and the UCSF Wynton High Performance Computer.

## Building Containers

### Docker
`
docker build --file <file name> -t <image name> .
`

### Singularity
 `
 singularity build <file name>  docker://<docker container>
 `

## Running Containers

### Docker
`
docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes apblair/ab-JupyterLab_tensorflow_v2.0
`

### Singularity
