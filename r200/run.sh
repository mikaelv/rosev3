basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ../master
docker-compose up -d master
cd $basedir
docker-compose up 
#docker exec -it r200 bash
