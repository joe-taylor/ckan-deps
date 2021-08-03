FROM python:3.8-buster
EXPOSE 8800

RUN apt-get -y update && apt-get -y install locales
RUN echo "America/Vancouver" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    sed -i -e 's/# en_CA.UTF-8 UTF-8/en_CA.UTF-8 UTF-8/' /etc/locale.gen && \
    echo 'LANG="en_CA.UTF-8"'>/etc/default/locale && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_CA.UTF-8


WORKDIR /app
RUN git clone https://github.com/ckan/datapusher
WORKDIR /app/datapusher
RUN pip install -r requirements.txt
RUN pip install -e .
CMD ["python", "datapusher/main.py", "deployment/datapusher_settings.py"]
