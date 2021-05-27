#!/usr/bin/bash

rm -rf ./*.html
rm -rf ./*.pdf

asciidoctor -a toc=left tech2-swagger-sample.adoc
asciidoctor-pdf tech2-swagger-sample.adoc

rm -rf ./*.adoc