FROM bvlc/caffe:cpu
MAINTAINER lorosanu@users.noreply.github.com

ARG RESDIR=/usr/share/googlenet/models/

RUN mkdir -p \
  $RESDIR/googlenet_places205 \
  $RESDIR/bvlc_googlenet

ADD \
  http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel \
  https://raw.githubusercontent.com/BVLC/caffe/master/models/bvlc_googlenet/deploy.prototxt \ 
  $RESDIR/bvlc_googlenet/

ADD \
  http://places.csail.mit.edu/model/googlenet_places205.tar.gz \
  $RESDIR

RUN tar -C $RESDIR -xf $RESDIR/googlenet_places205.tar.gz

RUN pip install jupyter
