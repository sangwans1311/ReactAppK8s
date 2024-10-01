FROM node

WORKDIR  /myapp

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm","start"]


#1. docker build image > docker build -t tutorcloud/testapp:tag .
#2. docker image push to docker hub > docker push tutorcloud/testapp:tag
#3. create kubernetes deployment > kubectl create deployment myapp --image=tutorcloud/testapp:tag
#4. get deployment >  kubectlt get deployments
#5. get pods >  kubectlt get pods
#6. Expose service to access > kubectl expose deployment myapp --type=LoadBalancer --port=3000
