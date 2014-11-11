Docker play test
================

This is a demonstration of a problem with Docker + Play framework: containers that exit immediately after startup is finished.

Build the container
-------------------

```
$ docker build -t docker-play-test .
```

Running with plain docker
-------------------------

```
$ docker run --rm -p 9000:9000 -v $(pwd):/app -v ~/.ivy2:/root/.ivy2 docker-play-test
```

Expected result: runs and serves on port 9000.

Actual result: exits after starting:

```
Getting com.typesafe.activator activator-launcher 1.2.10 ...
:: retrieving :: org.scala-sbt#boot-app
	confs: [default]
	30 artifacts copied, 0 already retrieved (19911kB/309ms)
Getting Scala 2.11.1 (for activator-launcher)...
:: retrieving :: org.scala-sbt#boot-scala
	confs: [default]
	6 artifacts copied, 0 already retrieved (24060kB/234ms)
Getting org.scala-sbt sbt 0.13.5 ...
:: retrieving :: org.scala-sbt#boot-app
	confs: [default]
	44 artifacts copied, 0 already retrieved (13482kB/286ms)
Getting Scala 2.10.4 (for sbt)...
:: retrieving :: org.scala-sbt#boot-scala
	confs: [default]
	5 artifacts copied, 0 already retrieved (24459kB/207ms)
[info] Loading project definition from /app/project
[info] Updating {file:/app/project/}app-build...
[info] Resolving org.fusesource.jansi#jansi;1.4 ...
[info] Done updating.
[info] Set current project to play-scala (in build file:/app/)
[info] Updating {file:/app/}root...
[info] Resolving com.typesafe.trace#trace-sigar-libs;0.1.6 ...
[info] Done updating.

--- (Running the application from SBT, auto-reloading is enabled) ---

[info] play - Listening for HTTP on /0:0:0:0:0:0:0:0:9000

(Server started, use Ctrl+D to stop and go back to the console...)


[success] Total time: 8 s, completed Nov 11, 2014 12:30:29 PM
```

Running with plain docker & a pseudo-TTY
----------------------------------------

```
$ docker run -t --rm -p 9000:9000 -v $(pwd):/app -v ~/.ivy2:/root/.ivy2 docker-play-test
```

Expected result: runs and serves on port 9000.

Actual result: runs and server on port 9000.

Fig up
------

```
$ fig up
```

Expected result: runs and serves on port 9000.

Actual result: exits like with plain docker (without `-t`).

Fig run
-------

```
$ fig run test
```

Expected result: runs and serves on port 9000.

Actual result: runs and server on port 9000.
