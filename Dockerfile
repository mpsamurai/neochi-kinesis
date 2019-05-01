FROM mpsamurai/neochi-dev-base:20190424-x64

COPY ./entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]

WORKDIR /code
COPY ./src /code

CMD ["python", "kinesis/kinesis.py"]