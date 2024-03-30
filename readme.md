docker build --rm -f api.dockerfile -t ultimitech/sai-api:1.0.0 .
docker container run -itd -p 8078:8078 --name sai-api1 ultimitech/sai-api:1.0.0
