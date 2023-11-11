  <h3 align="center">Statistic Project</h3>
  <p align="center">
    Statistical analysis of 
    <a href="[https://github.com/rodrigo-espino/Server_ML_SimpleExample/blob/master/in/felicidad.csv](https://www.kaggle.com/datasets/programmerrdai/child-and-infant-mortality)">Child and Infant Mortality</a>
    <br />
    <br />
    <br />

  ### Modules


|      |      |
| ---- | ---- |
| [Flask](https://flask.palletsprojects.com/en/2.2.x/) | [Numpy](https://numpy.org/doc/stable/index.html) |
| [Pandas](https://pandas.pydata.org/) | [Scikit-Learn](https://scikit-learn.org/stable/) |
| [Seaborn](https://seaborn.pydata.org/index.html) | [Matplotlib](https://matplotlib.org/stable/) |
| [Plotly](https://plotly.com/python/) | [Scipy](https://scipy.org/) |
| [Statsmodels](https://www.statsmodels.org/stable/index.html) | [Pathlib](https://docs.python.org/3/library/pathlib.html) |
| [wquantiles](#) |      |

## Use the script

We suggest to create a Docker Image and run the conteiner

### Running the script

1. Clone the repository 
   ``` sh
   git clone https://github.com/rodrigo-espino/Statsproject.git
   ```
2. Create image 
   ``` sh
   make image
   ```
   or
   
   ``` sh
    docker build -t <name-image> .
   ```
 
4. Run container (Jupyter Notebook)
   ```
   make jupyter-not
   ```
     or
   
   ``` sh
    docker run --rm -v -d --name <name-container> -p 8888:8888 <name-image> jupyter notebook --allow-root --port=8888 --ip 0.0.0.0 --no-browser
   ```
    The server automatically will run on ```localhost:8888/tree```

6. Run Bash inside the container
   ``` sh
   jupyter-bash
   ```
   or
   ``` sh
   docker run -it --rm --name bashproject <name-image> /bin/bash 
   ```

## Contributing
Want to contribute? Awesome! Please, follow the steps in sequence to submit any feature or bug-fix
- Fork the proyect 
- Create your Branch (`git checkout -b feature/<your-user>`)
- Commit your changes (`git commit -m 'New Feature: <context>`')
- Open a pull request
