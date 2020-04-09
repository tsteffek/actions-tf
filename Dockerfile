FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
COPY test.py .

# Install package.
RUN pip install tensorflow-gpu

# Run training, then export to .hdf5
CMD python test.py
