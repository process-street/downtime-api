# downtime-api

This is an app that we can replace the backend with during things like database maintenance so that it'll return 503
without going haywire.

It will return 200 for a ping endpoint to make sure that Elastic Beanstalk doesn't kill it. 
