:: Jetty Runner downloaded from http://repo2.maven.org/maven2/org/mortbay/jetty/jetty-runner/
call ant clean war
call java -jar lib/jetty-runner-8.1.9.v20130131.jar --port 8081 StockWatcher.war