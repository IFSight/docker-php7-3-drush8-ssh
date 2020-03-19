FROM fulcrum/php7.3-drush8
MAINTAINER IF Fulcrum "fulcrum@ifsight.net"

ENV BUILDDATE 202003191819

USER root

RUN STARTTIME=$(date "+%s")                                                                   && \
apk --no-cache add openssh-client                                                             && \
echo "################## [$(date)] Done ##################"                                   && \
echo "################## Elapsed: $(expr $(date "+%s") - $STARTTIME) seconds ##################"

USER php
