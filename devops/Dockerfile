# latest Ubuntu version
FROM ubuntu:latest

# add the bash script
ADD install.sh /
# change rights for the script
RUN chmod u+x /install.sh
# run the bash script
RUN /install.sh

RUN rm -rf install.sh

ENV PATH /root/miniconda3/bin:$PATH

RUN mkdir /root/notebook
RUN mkdir /root/.jupyter
ADD jupyter_notebook_config.py /root/.jupyter/

# execute IPython when container is run
CMD cd /root/notebook && conda run jupyter lab