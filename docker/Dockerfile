FROM nginx:1.13.7
MAINTAINER Jan Gasperlin "jg1724@student.uni-lj.si"
EXPOSE 80:80
ENV IMAGES_BASE_URL /api/v1/Images
ENV IMAGES_SERVCIE_URL ms-images
ENV FRIENDS_BASE_URL /api/v1/Friends
ENV FRIENDS_SERVCIE_URL ms-friends
ENV ADS_BASE_URL /api/v1/Ads
ENV ADS_SERVCIE_URL ms-ads
ENV WALL_BASE_URL /api/v1/Wall
ENV WALL_SERVCIE_URL ms-wall
ENV CHATROOM_BASE_URL /api/v1/ChatRoom
ENV CHATROOM_SERVCIE_URL ms-chatroom
ENV CHATRELAY_BASE_URL /api/v1/ChatRelay
ENV CHATRELAY_SERVCIE_URL ms-chatrelay
ENV USER_BASE_URL /api/v1/User
ENV USER_SERVCIE_URL ms-user:5001
ENV ABOUT_BASE_URL /api/v1/About
ENV ABOUT_SERVCIE_URL ms-about
ENV DOCKER true
ADD template.nginx.conf /bin/init/template.nginx.conf
ADD run.sh /bin/init/run.sh
RUN chmod 755 /bin/init/run.sh
CMD ["./bin/init/run.sh"]
