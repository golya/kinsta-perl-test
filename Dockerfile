FROM perl:latest

# Copy the Perl script into the container
COPY myscript.pl /usr/src/app/

# Set the working directory to the location of the script
WORKDIR /usr/src/app

CMD ["perl", "./myscript.pl"]
