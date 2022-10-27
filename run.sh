#!/bin/bash

echo "run app..."

docker run -d   -p 5000:5000   --name myapp myapp
