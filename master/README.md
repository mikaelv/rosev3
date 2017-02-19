Run a ROS master node using the following command:
```bash
docker-compose up
```

Then you can look at the published topics using:
```bash
docker exec -t master bash -ic 'rostopic list'
```

