from debian:bookworm-slim

RUN apt update && apt install -y \
		jupyter-notebook \
		python3 \
		python3-pip \
		g++ \
		pandoc \
		cmake && rm -rf /var/lib/apt/lists/*


VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888"]
CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''"]
