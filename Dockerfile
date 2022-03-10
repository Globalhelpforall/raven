FROM continuumio/miniconda3

LABEL maintainer="aswin@quantumventura.com"

ENV WORK=/app

WORKDIR ${WORK}

COPY . ${WORK}

RUN conda config --set ssl_verify no

RUN scripts/establish_conda_env.sh --install --conda-defs /etc/profile.d/conda.sh

#SHELL ["conda", "run", "-n", "raven_libraries pip install pythonfmu numpy-financial dill pyomo==5.7.0"]

RUN apt-get update && apt-get install -y libtool git swig g++ virtualenv

RUN scripts/install_plugins.py -a

RUN ./build_raven 

RUN echo "Successfully created raven"

ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "raven_libraries"]
