#!/bin/bash

NGINIXFILE='/bin/init/nginx.conf'

cp /bin/init/template.nginx.conf ${NGINIXFILE}

########################################
### IMAGE API
########################################
if [[ -z "${IMAGES_BASE_URL}" ]];
then
    printf 'You need to set IMAGES_BASE_URL.\n'
    #exit 1
else
    printf "IMAGES_BASE_URL set to ${IMAGES_BASE_URL}.\n"
    sed -i -e "s#IMAGES_BASE_URL#${IMAGES_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${IMAGES_SERVCIE_URL}" ]];
then
    printf 'You need to set IMAGES_SERVCIE_URL.\n'
    #exit 1
else
    printf "IMAGES_SERVCIE_URL set to ${IMAGES_SERVCIE_URL}.\n"
    sed -i -e "s#IMAGES_SERVCIE_URL#${IMAGES_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### FRIENDS API
########################################
if [[ -z "${FRIENDS_BASE_URL}" ]];
then
    printf 'You need to set FRIENDS_BASE_URL.\n'
    #exit 1
else
    printf "FRIENDS_BASE_URL set to ${FRIENDS_BASE_URL}.\n"
    sed -i -e "s#FRIENDS_BASE_URL#${FRIENDS_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${FRIENDS_SERVCIE_URL}" ]];
then
    printf 'You need to set $FRIENDS_SERVCIE_URL.\n'
    #exit 1
else
    printf "FRIENDS_SERVCIE_URL set to ${FRIENDS_SERVCIE_URL}.\n"
    sed -i -e "s#FRIENDS_SERVCIE_URL#${FRIENDS_SERVCIE_URL}#g" ${NGINIXFILE}
fi


########################################
### ADS API
########################################
if [[ -z "${ADS_BASE_URL}" ]];
then
    printf 'You need to set ADS_BASE_URL.\n'
    #exit 1
else
    printf "FRIENDS_SERVCIE_URL set to ${FRIENDS_SERVCIE_URL}.\n"
    sed -i -e "s#ADS_BASE_URL#${ADS_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${ADS_SERVCIE_URL}" ]];
then
    printf 'You need to set ADS_SERVCIE_URL.\n'
    #exit 1
else
    printf "ADS_SERVCIE_URL set to ${ADS_SERVCIE_URL}.\n"
    sed -i -e "s#ADS_SERVCIE_URL#${ADS_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### WALL API
########################################
if [[ -z "${WALL_BASE_URL}" ]];
then
    printf 'You need to set WALL_BASE_URL.\n'
    #exit 1
else
    printf "WALL_BASE_URL set to ${WALL_BASE_URL}.\n"
    sed -i -e "s#WALL_BASE_URL#${WALL_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${WALL_SERVCIE_URL}" ]];
then
    printf 'You need to set WALL_SERVCIE_URL.'
    #exit 1
else
    printf "WALL_SERVCIE_URL set to ${WALL_SERVCIE_URL}"
    sed -i -e "s#WALL_SERVCIE_URL#${WALL_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### CHATROOM API
########################################
if [[ -z "${CHATROOM_BASE_URL}" ]];
then
    printf 'You need to set CHATROOM_BASE_URL.\n'
    #exit 1
else
    printf "CHATROOM_BASE_URL set to ${CHATROOM_BASE_URL}.\n"
    sed -i -e "s#CHATROOM_BASE_URL#${CHATROOM_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${CHATROOM_SERVCIE_URL}" ]];
then
    printf 'You need to set CHATROOM_SERVCIE_URL.\n'
    #exit 1
else
    printf "CHATROOM_SERVCIE_URL set to ${CHATROOM_SERVCIE_URL}.\n"
    sed -i -e "s#CHATROOM#${CHATROOM_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### CHAT RELAY API
########################################
if [[ -z "${CHATRELAY_BASE_URL}" ]];
then
    printf 'You need to set CHATRELAY_BASE_URL.\n'
    #exit 1
else
    printf "CHATRELAY_BASE_URL set to ${CHATRELAY_BASE_URL}.\n"
    sed -i -e "s#CHATRELAY_BASE_URL#${CHATRELAY_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${CHATRELAY_SERVCIE_URL}" ]];
then
    printf 'You need to set CHATRELAY_SERVCIE_URL.\n'
    #exit 1
else
    printf "CHATRELAY_SERVCIE_URL set to ${CHATRELAY_SERVCIE_URL}.\n"
    sed -i -e "s#CHATRELAY_SERVCIE_URL#${CHATRELAY_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### USER API
########################################
if [[ -z "${USER_BASE_URL}" ]];
then
    printf 'You need to set USER_BASE_URL.\n'
    #exit 1
else
    printf "USER_BASE_URL set to ${USER_BASE_URL}.\n"
    sed -i -e "s#USER_BASE_URL#${USER_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${USER_SERVCIE_URL}" ]];
then
    printf 'You need to set USER_SERVCIE_URL.\n'
    #exit 1
else
    printf "USER_SERVCIE_URL set to ${USER_SERVCIE_URL}.\n"
    sed -i -e "s#USER_SERVCIE_URL#${USER_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### ABOUT API
########################################
if [[ -z "${ABOUT_BASE_URL}" ]];
then
    printf 'You need to set ABOUT_BASE_URL.\n'
    #exit 1
else
    printf "ABOUT_BASE_URL set to ${ABOUT_BASE_URL}.\n"
    sed -i -e "s#ABOUT_BASE_URL#${ABOUT_BASE_URL}#g" ${NGINIXFILE}
fi

if [[ -z "${ABOUT_SERVCIE_URL}" ]];
then
    printf 'You need to set ABOUT_SERVCIE_URL.\n'
    #exit 1
else
    printf "ABOUT_SERVCIE_URL set to ${ABOUT_SERVCIE_URL}.\n"
    sed -i -e "s#ABOUT_SERVCIE_URL#${ABOUT_SERVCIE_URL}#g" ${NGINIXFILE}
fi

########################################
### DOCKER
########################################
if [[ -z "${RESOLVER}"  ]];
then
    printf 'RESOLVER set to false or not set.\n'
else
    printf "RESOLVER set to ${RESOLVER}.\n"
    sed -i -e "s#RESOLVER#${RESOLVER}#g" ${NGINIXFILE}
    sed -i -e "s/#RES# //g" ${NGINIXFILE}
fi

########################################
### START NGINX
########################################
cat ${NGINIXFILE}

cp ${NGINIXFILE} /etc/nginx/nginx.conf

printf 'Starting Nginx .. \n'

nginx -g 'daemon off;'