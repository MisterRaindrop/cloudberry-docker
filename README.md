# cloudberry-docker
This Docker is used to make the compilation of Cloudberry more easy. docker image version `ubuntu.22.04`.

## build

1. clone  
git clone [cloudberry-docker](https://github.com/MisterRaindrop/cloudberry-docker)  
git clone [cloudberry](https://github.com/apache/cloudberry)

   
2. run docker   
  modify the directory you are mounted to. edit docker-compose.yml set you volumes path.  
example:  
    ```
     volumes:
        - /Users/you_git_clone_cloudberry_path:/code
    ```
    
    then run docker  
    ```
     docker-compose up -d
    ```

3. copy shell to docker
    ```
    docker cp ./build_cloudberry.sh <YOU_CONTAINER_ID>:/home/gpadmin/
    ```
4. deploy  
    ```
    docker exec -i <YOU_CONTAINER_ID> sh -c "sudo chown gpadmin:gpadmin /home/gpadmin/build_cloudberry.sh &&  chmod +x /home/gpadmin/build_cloudberry.sh && /home/gpadmin/build_cloudberry.sh"
    ```
