FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
ARG APP_DIR="/tmp/pricing"
WORKDIR ${APP_DIR}

## Step 2:
# Copy source code to working directory
COPY model_data ${APP_DIR}/model_data
COPY app.py ${APP_DIR}
COPY requirements.txt ${APP_DIR}

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir  -r requirements.txt  --target ${APP_DIR}

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["python3", "app.py"]
