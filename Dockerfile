# 
FROM python:3.10-slim

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

# 
# --no-cache-dir 
RUN pip install --upgrade -r /code/requirements.txt

# 
COPY . /code/

# 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]



