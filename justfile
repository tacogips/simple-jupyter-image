login:
	podman login docker.io/tacogips/simple-jupyter-lab

build-image:
	podman build -t tacogips/simple-jupyter-lab:latest .

push-image:
	podman push tacogips/simple-jupyter-lab:latest
