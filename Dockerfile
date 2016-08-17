# Machine Learning Notebooks

FROM jupyter/datascience-notebook

RUN conda install --quiet --yes -c conda-forge tensorflow
