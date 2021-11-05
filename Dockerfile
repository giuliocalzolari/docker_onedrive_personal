FROM ubuntu:20.04

RUN apt update \
    && apt install python3-pip wget unzip -y \
    && pip --version

RUN pip install --upgrade selenium onedrivesdk==1.1.8 requests python-dateutil pyotp

RUN  wget -q https://chromedriver.storage.googleapis.com/94.0.4606.61/chromedriver_linux64.zip \
    && unzip chromedriver_linux64.zip \
    && sudo mv chromedriver /usr/local/bin/chromedriver \
    && rm chromedriver_linux64.zip

RUN chromedriver --version
ENTRYPOINT ["/bin/bash"]


