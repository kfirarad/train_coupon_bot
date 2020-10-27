FROM python:3.7.9-alpine 

ADD . /app
WORKDIR /app
RUN apk add git
RUN apk add --no-cache gcc libressl-dev musl-dev libffi-dev 
RUN pip install -r requirements.txt
ENV PORT=8080
ENV POOLING=true

CMD ["python3","bot.py"]
