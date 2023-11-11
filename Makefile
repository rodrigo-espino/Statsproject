IMAGE = statsproject
jupyter-not:
	docker run --rm -v -d --name jupyternotebook -p 8888:8888 $(IMAGE) jupyter notebook --allow-root --port=8888 --ip 0.0.0.0 --no-browser

jupyter-bash:
	docker run -it --rm --name bashproject $(IMAGE) /bin/bash 

.PHONY: image
image:
	docker build -t $(IMAGE) .