# downtime-api

This is an app that we can replace the backend with during things like database maintenance so that it'll return 503
without going haywire.

It will return 200 for a ping endpoint to make sure that Elastic Beanstalk doesn't kill it.

## Test

```
docker build -t downtime-api .
docker run -d -p 8000:80 --name downtime-api-app downtime-api
curl -I localhost:8000 # should return 503
curl -I localhost:8000/1/ping # should return 200  
```

## Build for Elastic Beanstalk
