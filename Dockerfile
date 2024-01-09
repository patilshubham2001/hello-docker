# Use Golang base image
FROM golang:latest
 
WORKDIR /app
 
COPY . .

# This command is run project
RUN go mod download         
 
RUN go build -o main
 
 # This command is run project on given port
EXPOSE 8080
 
CMD ["./main"]
