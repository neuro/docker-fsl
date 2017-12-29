FROM centos:7

RUN yum install -y wget file libpng12 libmng

COPY fslinstaller.py /tmp/
RUN su -c "python /tmp/fslinstaller.py -d /usr/local/fsl --fslversion 5.0.9"
COPY entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
CMD ["bash"]