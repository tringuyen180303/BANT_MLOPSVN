FROM python:3.8-slim
WORKDIR /src
COPY raw_data_processor.py /src/raw_data_processor.py
COPY Makefile /Makefile
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
 

#EXPOSE 5000
CMD python3 src/raw_data_processor.py --phase-id phase-1 --prob-id prob-1
CMD python3 src/raw_data_processor.py --phase-id phase-1 --prob-id prob-2
