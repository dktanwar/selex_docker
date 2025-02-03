if [ -z "$command" ]; then
  docker run -v /Users/dktanwar/:/home/rstudio -v /Users/dktanwar/:/mnt --hostname $1 --name $1 -ti $1 bash --login
else
  docker container start $1
  docker exec -it $1 bash
fi
