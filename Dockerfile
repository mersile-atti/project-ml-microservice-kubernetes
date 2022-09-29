FROM python:3.7.3-stretch

ENV PIP_ROOT_USER_ACTION=ignore
## Step 1:
# Create a Working Directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pipit.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 8000

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]