FROM redis:7.2

# Set working directory
WORKDIR /data

# Copy the JavaScript file into the container
COPY *.js /data/myscript.js

# Run Redis and Load the JS File
CMD ["redis-server", "--loadmodule", "/usr/lib/redis/modules/rg.so"]
