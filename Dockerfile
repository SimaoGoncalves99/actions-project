#Official python image from DockerHub
FROM python:3.9-slim

# Set the working dir
WORKDIR /app

#Copy the current directory contents to the workdir
COPY . /app

#Install any needed requirements from requirements.txt
RUN pip install -r requirements.txt

#Make port 5000 available to the world outside this container
EXPOSE 5000

#Run app.py when the container launches
CMD ["python","app.py"]