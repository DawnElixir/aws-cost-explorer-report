FROM public.ecr.aws/lambda/python:3.10
COPY src /build
RUN pip3 install -r /build/requirements.txt -t /build/python/
WORKDIR /build
CMD sh build_package.sh
