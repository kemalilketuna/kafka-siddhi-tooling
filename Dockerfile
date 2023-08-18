FROM siddhiio/siddhi-tooling:5.1.2

COPY --chown=siddhi_user:siddhi_io ./bundles /home/siddhi_user/siddhi-tooling/bundles
COPY --chown=siddhi_user:siddhi_io ./jars /home/siddhi_user/siddhi-tooling/jars
COPY --chown=siddhi_user:siddhi_io ./lib /home/siddhi_user/siddhi-tooling/lib
COPY --chown=siddhi_user:siddhi_io ./samples/lib /home/siddhi_user/siddhi-tooling/samples/sample-clients/lib

# ARG HOST_BUNDLES_DIR=./siddhi-tooling/bundles
# ARG HOST_JARS_DIR=./siddhi-tooling/jars
# ARG HOST_SAMPLE_DIR=./siddhi-tooling/samples
# ARG JARS=${RUNTIME_SERVER_HOME}/jars
# ARG BUNDLES=${RUNTIME_SERVER_HOME}/bundles
# # ARG APPS=${RUNTIME_SERVER_HOME}/deployment/siddhi-files
# # ARG CONFIG_FILE=./configurations.yaml
# # ARG CONFIG_FILE_PATH=${HOME}/configurations.yaml

# # copy bundles & jars to the siddhi-runner distribution
# # COPY --chown=siddhi_user:siddhi_io ${HOST_APPS_DIR}/ ${APPS}
# # COPY --chown=siddhi_user:siddhi_io ${HOST_JARS_DIR}/ ${JARS}
# # COPY --chown=siddhi_user:siddhi_io ${HOST_BUNDLES_DIR}/ ${BUNDLES}

# COPY --chown=siddhi_user:siddhi_io ${HOST_JARS_DIR}/ ${JARS}
# COPY --chown=siddhi_user:siddhi_io ${HOST_BUNDLES_DIR}/ ${BUNDLES}


# expose ports
EXPOSE 9090 9443 


# STOPSIGNAL SIGINT
ENTRYPOINT ["sh","/home/siddhi_user/siddhi-tooling/bin/tooling.sh" ]
