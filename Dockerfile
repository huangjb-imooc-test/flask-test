FROM  python:2.7

LABEL author="huangjb <5349608@qq.com>"

RUN   apk add --no-cache gcc musl-dev openssl-dev libffi-dev
COPY  . /skeleton
WORKDIR /skeleton
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["sh", "scripts/dev.sh"]
