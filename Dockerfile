##########################################################
# create the swagger-ui with the REST API of the VideApp #
#                                                        #
# run with `docker run -p 80:8080` to expose the port    #
##########################################################

FROM swaggerapi/swagger-ui

RUN mkdir -p /usr/lib/VideRest/
COPY videapp.json /usr/lib/VideRest/videapp.json

ENV SWAGGER_JSON=/usr/lib/VideRest/videapp.json
