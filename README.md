# Chat web socket hecho en Go con Gorilla 

Basado en el tutorial de [https://scotch.io/bar-talk/build-a-realtime-chat-server-with-go-and-websockets](https://scotch.io/bar-talk/build-a-realtime-chat-server-with-go-and-websockets)

y en el repo de github de [Gollum23](https://github.com/gollum23/chat-go)

# Contenido
- Usa programación reactiva con VueJS
- Es un websocket
- Optimizado para concurrencia y bajo consumo de memoria
- He implementado Docker

# Demo
[https://chat-go-v2-iudthzulys.now.sh/](https://chat-go-v2-iudthzulys.now.sh/)

Nota:
 :Está modificado para que corra en plataformas con SSL

# Correr en localhost
- Clonar repositorio
```
git clone https://github.com/osmandi/chat-go-v2
```

- Cambiar la línea
  
  ```
  this.ws = new WebSocket('wss://' + window.location.host + '/ws');
  ```
  a  
  ```
  this.ws = new WebSocket('ws://' + window.location.host + '/ws');
  ```
  

- Ejecutar
```
cd src && go run main.go
```

Abrir en un navegador ***localhost:8080***
