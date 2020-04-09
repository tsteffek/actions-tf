FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
COPY test.py .
RUN apt-get update && apt-get install -y \
    python-pip
RUN pip install tensorflow

# Run training, then export to .hdf5
CMD python test.py
