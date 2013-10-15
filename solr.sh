#!/bin/bash


cd /opt/solr/example && java -server $JAVA_OPTS -Dsolr.solr.home=/var/lib/solr -Djetty.port=8983 -Djava.awt.headless=true -jar start.jar

