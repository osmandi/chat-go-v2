# Chat web socket hecho en Go con Gorilla 

Basado en el tutorial de [https://scotch.io/bar-talk/build-a-realtime-chat-server-with-go-and-websockets](https://scotch.io/bar-talk/build-a-realtime-chat-server-with-go-and-websockets)

y en el repo de github de [Gollum23](https://github.com/gollum23/chat-go)

# Contenido
- Usa programación reactiva con VueJS
- Es un websocket
- Optimizado para concurrencia y bajo consumo de memoria
- He implementado Docker (para hacer deploy a now.sh)

# Demo
[https://chat-go-v2-iudthzulys.now.sh/](https://chat-go-v2-iudthzulys.now.sh/)

Nota: Está modificado para que corra en plataformas con SSL

# Correr en localhost
- Clonar repositorio
```
git clone https://github.com/osmandi/chat-go-v2
```

- Instalar librería
```
go get github.com/gorrilla/websocket
```

- Cambiar la línea en ***public/app.js***
  
  ```
  this.ws = new WebSocket('wss://' + window.location.host + '/ws');
  ```
  a  
  ```
  this.ws = new WebSocket('ws://' + window.location.host + '/ws');
  ```
  

- Ejecutar
```
cd chat-go-v2/src && go run main.go
```

# Correr en localhost con Docker
- Modificar para que se pueda ejecutar sin SSL

- Compilar
```
cd chat-go-v2
docker build -t chat-go-v2 .
```

- Instanciar contenedor Docker
```
docker run -d -p 8080:8080 --name chat-go chat-go-v2
```


Abrir en un navegador ***localhost:8080***
