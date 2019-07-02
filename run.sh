#!/bin/bash

docker build -t jumphostimage .
docker run -d -h jumphost  --restart=always -p 2222:22 --name jumphost jumphostimage
