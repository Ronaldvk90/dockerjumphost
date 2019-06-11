#!/bin/bash

docker build -t jumphostimage .
docker run -d -h jumphost -p 2222:22 --name jumphost jumphostimage
