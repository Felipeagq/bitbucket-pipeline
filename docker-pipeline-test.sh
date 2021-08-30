

docker build . -t $REGISTRY_HOST/$IMAGE_NAME
docker login $REGISTRY_HOST --username $REGISTRY_USER --password $REGISTRY_PASSWORD
docker push $REGISTRY_HOST/$IMAGE_NAME
curl -v -f -m 30 -H "Authorization:Bearer ${WATCHTOWER_TOKEN}" ${WATCHTOWER_HOST}/v1/update || true
exit 1