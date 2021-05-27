#!/usr/bin/bash

java -jar ./swagger2markup-cli-1.3.3.jar convert -i tech2-swagger-sample.yaml -f tech2-swagger-sample

mv ./*.adoc ./document

docker run -it --rm -v /Users/naoto/work/git_serverfree/swagger_sample/sample/document:/documents/ asciidoctor/docker-asciidoctor