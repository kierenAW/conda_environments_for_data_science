# Conda Environments

Each environment is created in a sequentially numbered environment.

e.g. <i>Enviroment 001</i> which gets called <i>E001</i>  

Most of the environments are created by importing a previous environment and updating and adding additional packages. 

## YML Files

The YML files are named as per the environment name followed by the operating system (eg windows) or "generic" if OS specific packages have been removed and the packages should work on both windows and Linux.

## Useful commands

#### Create a Conda Enviroment with defult imports:
<i>conda create --name [env]</i>

#### Create a enviroment from a yml file
<i>conda env create -f [filename].yml</i>

#### Clone an existing conda environment
<i>conda create --name <new_env> --clone <existing_env></i>

#### Export YML from an existing enviroment
<i>conda env export -n [venv] > [filename].yml</i>


#### Remove  an existing conda environment
<i>conda env remove -n [venv]</i>

#### List all discoverable environments:
<i>conda info --envs</i>


#### Regex to find the hashes at the end of the yml files:
=[A-Z]+.*$


#### More information can be found at

https://conda.io/docs/user-guide/tasks/manage-environments.html

## Windows to Linux Diffrences 

#### Regex to find the hashes at the end of the yml files:
=[A-Z]+.*$

Removing the hashes from a yml file aids the imports into Linux where the compiled hash values are different.

#### The following packages appear to be windows specific:
- msys2-conda-epoch - https://www.msys2.org/
- m2w64* including:
	* m2w64-gcc-libgfortran
	* m2w64-libwinpthread-git
	* m2w64-gcc-libs
	* m2w64-libwinpthread-git
	* m2w64-gmp
	* m2w64-gcc-libs-core
- vc - https://github.com/conda/conda/wiki/VC-features
- wincertstore - https://pypi.org/project/wincertstore/
- winpty - https://github.com/rprichard/winpty
- win_inet_pton - https://pypi.org/project/win-inet-pton/
- pyreadline - https://pypi.org/project/pyreadline/
- pywinpty - https://github.com/spyder-ide/pywinpty


## Enviroments

### E001
- Jupyter
- TF GPU

### E002
- All from E001
- Pytorch
- Seaborn

### E003
- All from E002
- pyro-ppl
- pip imports not working so import E003 then run <i>pip install pyro-ppl</i>

### E004
- All from E001
- xlrd

### E005
- All from E002
- xlrd
- pip imports not working so import E005 then run pip install <i>opencv-contrib-python</i>

### E006
- Python 3.6
- Seaborn
- xlrd
- Jupyter
- tensorflow=1.6
- pip imports not working so import E006 then run <i>pip install opencv-contrib-python</i>

### E007
- All from E002
- xlrd
- scikit-image

### E008
- All from E007
- dask

### E009
- All from E008
- plotly
- jupyterlab

### E010
- Clone from E009
- pandas-profiling 2.3
- update:
	* tensorflow to 1.13.1 --> 1.14.0
	* bokeh 1.2.0--> 1.3.4
	* cudnn 7.3.1 --> 7.6.0
	* dask 2.0 --> 2.2
	* jupyterlab 0.35.6 --> 1.0.5
	* numpy 1.16.3 --> 1.16.4
	* pandas 0.24.2 --> 0.25.0
	* scikit-learn 0.21.2 --> 0.21.3
	* scipy 1.2.1 --> 1.3.0
	* pillow 6.0.0 --> 6.1.0

### E011
Intended as a generic environment for basic Analytics and Data Science 
- plotly
- numpy
- pandas
- seaborn
- matplotlib
- jupyterlab
- xlrd
- scikit-image
- scikit-learn
- pillow
- scipy
- dask
- tensorflow (cpu)
- pandas-profiling