# pybase
a simple docker image I use for python stuff...

Here is a list of packages I have installed

## via conda

* pandas
* ipython
* jupyter
* requests

## via pip
* trio

## Notes
1. I have to install nomkl meta package to avoid conda to install mkl. The reason for this is that mkl and related library is large in size, taking up 1GB roughly. From what I can see it seems having it around may not bring much benefit so for now I choose to opt out.
2. The final size of the image is 1.8 GB.

