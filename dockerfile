FROM java

RUN ls
WORKDIR /home/
COPY wiremock-standalone-2.5.1.jar ./
RUN mkdir /home/mappings
RUN mkdir /home/__files
ADD mappings/ /home/mappings/
ADD __files/ /home/__files/

COPY run-entrypoint.sh ./

ENTRYPOINT [ "sh","run-entrypoint.sh" ]

EXPOSE 8080
