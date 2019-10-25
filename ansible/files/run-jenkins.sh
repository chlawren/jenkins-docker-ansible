#/bin/sh

wget http://localhost:8080/jnlpJars/jenkins-cli.jar && java -jar jenkins-cli.jar -s -v list-jobs All
