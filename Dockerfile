FROM --platform=linux/amd64 vstirbu/q8s-cuda12

COPY requirements.txt .
COPY entrypoint.sh .
RUN pip3 install -r requirements.txt

CMD ["./entrypoint.sh"]
