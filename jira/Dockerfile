# Create Jira docklet
FROM base:latest
MAINTAINER Matt Jackson <mjj@frogdream.net>

# Create user
RUN groupadd -g 1005 jira
RUN useradd -u 1003 -g 1005 jira

#  Copy installer over
COPY software/ /var/tmp/
RUN chmod +x /var/tmp/atlassian-jira-6.2.7-x64.bin
#RUN /var/tmp/atlassian-jira-6.2.7-x64.bin
