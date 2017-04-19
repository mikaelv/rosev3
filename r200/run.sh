basedir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ../master
docker-compose up -d master
cd $basedir
docker-compose up -d r200
docker exec -it r200 bash
