This folder contains the source for obmarg/statsd-aws - a docker image that
runs a statsd server and feeds into AWS.

#### Use

Docker statsd-aws requires AWS details to be passed in as environment
variables.  This can be done using a Dockerfile:

    FROM obmarg/statsd-aws

    ENV AWS_ACCESS_KEY_ID your_access_key_id
    ENV AWS_SECRET_ACCESS_KEY your_secret_access_key
    ENV AWS_REGION your_region

Or on the docker command line:

    docker run -e "AWS_ACCESS_KEY_ID=your_access_key" -e
    "AWS_SECRET_ACCESS_KEY=your_secret_access_key" -e "AWS_REGION=your_region"
    obmarg/statsd-aws
