## For exampleprogram
exampleServer: exampleprogram/Message.class exampleprogram/UDPServer.class
	java exampleprogram.UDPServer
exampleServerJar: exampleprogram/Message.class exampleprogram/UDPServer.class
	mkdir -p jars
	jar cfe jars/exampleServer.jar exampleprogram.UDPServer exampleprogram/UDPServer.class exampleprogram/Message.class
exampleClient: exampleprogram/Message.class exampleprogram/UDPClient.class
	java exampleprogram.UDPClient
exampleClientJar: exampleprogram/Message.class exampleprogram/UDPClient.class
	mkdir -p jars
	jar cfe jars/exampleClient.jar exampleprogram.UDPClient exampleprogram/UDPClient.class exampleprogram/Message.class

## Generic Pattern Rules
%.class: %.java
	javac $<