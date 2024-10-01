FROM python:3.11
RUN pip install jupyterlab &&  \
	pip install jupyterlab-vim

VOLUME /notebooks
WORKDIR /notebooks

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888"]
CMD ["--notebook-dir=/notebooks", "--allow-root", "--no-browser","--NotebookApp.token=''","--NotebookApp.password=''"]
