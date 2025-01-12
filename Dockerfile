FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN yum install -y python3 python3-pip zip
COPY src /build
RUN pip3 install -r /build/requirements.txt -t /build/python/
WORKDIR /build
CMD sh build_package.sh
