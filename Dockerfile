FROM amazonlinux:2
RUN yum install -y amazon-linux-extras && amazon-linux-extras enable python3.8
RUN yum install -y python3.10 zip && yum clean all
COPY src /build
RUN pip3.10 install -r /build/requirements.txt -t /build/python/
WORKDIR /build
CMD sh build_package.sh
