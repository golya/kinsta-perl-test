FROM perl:latest

# Copy the Perl script into the container
COPY myscript.pl /usr/src/app/

# Set the working directory to the location of the script
WORKDIR /usr/src/app

EXPOSE 8080/tcp

CMD ["perl", "./myscript.pl"]
