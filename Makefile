IMAGE = statsproject
jupyter-not:
	docker run --rm -v $(PWD):/src --name jupyternotebook -p 8888:8888 $(IMAGE) jupyter notebook --allow-root --port=8888 --ip 0.0.0.0 --no-browser

jupyter-bash:
	docker run -it --rm -v $(PWD):/src --name bashproject $(IMAGE) /bin/bash 

.PHONY: image
image:
	docker build -t $(IMAGE) .