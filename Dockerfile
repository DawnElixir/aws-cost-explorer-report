FROM public.ecr.aws/amazonlinux/amazonlinux:2023
RUN yum install python3 -y
COPY src /build
RUN pip3 install -r /build/requirements.txt -t /build/python/
WORKDIR /build
CMD sh build_package.sh
