# Sewts

## Steps to run the docker file:

### Pulling from Docker hub


```
- docker pull ayush2062068/internship101:first
- docker tag ayush2062068/internship101:first ros-image
- docker rmi ayush2062068/internship101:first

```

### Running roscore:

```
docker run -it --rm \
    --net foo \
    --name master \
    ros-image \
    roscore
```

### Running server:
```
docker run -it --rm \
    --net foo \
    --name joke \
    --env ROS_HOSTNAME=joke \
    --env ROS_MASTER_URI=http://master:11311 \
    ros-image \
    rosrun request joke
    
 ```
 
 ### Running client:
 ```
 docker run -it --rm \
    --net foo \
    --name client.py \
    --env ROS_HOSTNAME=client.py \
    --env ROS_MASTER_URI=http://master:11311 \
    ros-image \
    rosrun request client.py
    ```
