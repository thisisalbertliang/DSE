FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-runtime

# install dependencies
RUN apt-get install software-properties-common
RUN apt-add-repository universe
RUN apt-get update
RUN apt-get install pdsh
RUN apt-get install python3-pip
RUN apt-get install ninja-build
RUN pip install pybind11
RUN pip install python-config

# run deepspeed
CMD git clone --single-branch --branch megatron-deepspeed-pipeline https://github.com/thisisalbertliang/DSE.git && cd DSE && bash scripts/fixed_global_bsz_run_scripts/fixed_global_bsz.sh



