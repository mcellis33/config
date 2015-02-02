rm pet;
i=$(docker ps | grep petra:dev | awk '{print $1}' );
docker logs $i > pet;