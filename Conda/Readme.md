# Conda Environments

## I'm new here where do I start?
The answer depends on what you want to achieve and what packages you need so below are some examples and ideas of where to start, most environments contain Jupyter, pandas and numpy 

#### I want to do some analysis and maybe dabble with running deep learning [inferences](https://en.wikipedia.org/wiki/Inference "inferences") using  [Tensorflow](https://www.tensorflow.org/, "Tensorflow")
[E011] can be a great place to start, it contains a great selection of packages and is currently being used successfully to deliver some great analaytics in a corporate context. Strongly consider starting here unless you know you need more.

#### I want to do get serious about deep learning with [PyTorch]("https://pytorch.org/")/[Tensorflow](https://www.tensorflow.org/, "Tensorflow") and my GPU needs something to do
[E014] contains a great list of packages and doesn't constrain versions so you will get the latest that conda provide. Beware of compatibility issues from versions changing.

#### I really need TensorFlow 1.6 and Python 3.6 with open CV
[E006] provides this exact environment and was used for [DeepLab]("https://github.com/tensorflow/models/tree/master/research/deeplab") training 

#### I need r to do my analytics
This is still not implemented

## More info
Each environment is created sequentially numbered to allow for versioning and easy tracking.

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

#### Update all packages in an enviroment
<i>conda update --all</i>

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

### E012
- Clone from E010
- pydotplus
- py-xgboost
- fastai
- update:
	* dask 2.2 --> 2.3
	
### E013
- Clone from E012
- pyarrow
- cufflinks-py

### E014
Brand new (not cloned from other) environment with unconstrained versions
- jupyter
- jupyterlab
- pytorch
- matplotlib
- xlrd
- seaborn
- xlrd
- plotly
- numpy
- pandas-profiling
- pandas
- scikit-image
- scikit-learn
- scipy
- pyarrow
- pillow
- dask
- fastai
- pydotplus
- py-xgboost
- pyarrow
- cufflinks-py
- keras-gpu

### E015
Brand new (not cloned from other) environment with unconstrained versions, this expands on E015 and is currently working with Deoldify
  - Use <i>pip install ffmpeg-python</i> as the conda version is not working at time of writing
  - jupyterlab
  - pytorch
  - matplotlib
  - xlrd
  - seaborn
  - xlrd
  - plotly
  - numpy
  - pandas-profiling
  - pandas
  - scikit-image
  - scikit-learn
  - scipy
  - pyarrow
  - pillow
  - dask
  - fastai
  - pydotplus
  - py-xgboost
  - cufflinks-py
  - keras-gpu
  - nvidia-ml-py3
  - ffmpeg
  - opencv
  - youtube-dl
  - opencv
  - ffmpeg
  
