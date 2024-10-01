## example


`docker run  "tacogips/simple-jupyter-lab:latest"`

```yaml
# compose.yaml
version: "3.9"

services:
  jupyter:
    image: "tacogips/simple-jupyter-lab:latest"
    volumes:
      - ./vol:/notebooks
    ports:
      - 8888:8888

```
