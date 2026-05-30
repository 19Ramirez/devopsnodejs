#PASO1 utilizamos una imagen base de node (basada en Debian - más estable)
FROM node:18-bookworm-slim

#PASO2
WORKDIR /app

#PASO3: copiamos el package.json 
COPY package*.json ./

#PASO4 instalar las dependencias
RUN npm install

#PASO5 copiamos los archivos del proyecto al contenedor
COPY . /app

#PASO6: ejecutamos la aplicacion
CMD ["node", "app.js"]