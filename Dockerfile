FROM python:3.8.3
WORKDIR /main
COPY main.py /main
COPY /res  /main/res/
RUN pip install --upgrade pip
RUN pip install elementpath
RUN pip install loguru
CMD [ "python", "main.py" ]

