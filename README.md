This document illustrates the process of creating a Docker container 
running EDERE on top of MarkLogic 8.0.5, from start to finish.

NOTE: The original image is based on the instructions of Patrick McElwee 
for creating quick MarkLogic-based containers.
(Source: https://github.com/patrickmcelwee/marklogic-dependencies)

INSTALLATION:

(previous experience working with Docker containers is required. 
For more information, check out https://docs.docker.com/)


1. Inside your Docker console, create a new directory, copy the provided 
   Dockerfile and build the image:
    
    docker build -t [name_of_image] .
    
2. Once the image is built, run it by typing the following in your Docker
   console: (command is single-line)
   
    docker run -d --name=dockedere -p 80:80 -p 7997:7997 -p 7998:7998
    -p 7999:7999 -p 8000:8000 -p 8001:8001 -p 8002:8002 -p 8040:8040
    -p 8041:8041 -p 8042:8042 -p 8990:8990 -p 9040:9040 -p 9041:9041
    -p 9070:9070 -p 9071:9071 <name_of_image>
    
3. If run locally, Docker will assign the IP 192.168.99.100 to the container.
   In your browser, go to http://192.168.99.100 to access EDERE, with default
   credentials (user:admin@xquire.com - pass:admin)
   
4. Install plugins as needed.

5. After any changes made to the container, run the following:
   
   docker commit [instance_id] [name_of_image]
   
All Rights Reserved Yuxi Pacifc LLC.
   
