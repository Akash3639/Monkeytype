# index.js
const express=require("express");
const app=express();
const PORT = 3000;
app.get("/",(req,res)=>{
        res.send("Hello from Git + Docker Integration!");
});
app.listen(PORT,()=>{
        console.log('Server running at http://localhost:${PORT}');
});

# Dockerfile
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY ..

FROM node :18-slim
WORKDIR /app
COPY --from=build /app/app
EXPOSE 3000
CMD["node","index.js"]

# npm install express

Create a new Repo on Github.
Click create New-> New Repository,
Add a repository name
#git init
#git add .
#git commit -m "Initial commit"
#git branch -M main

#git remote add origin https://github.com/<username>/<repo>.git
#git push -u origin main

