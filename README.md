# Cybersecurity-Project-1
Elk-Stack-Project

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Diagrams/Diagram.drawio.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - _filebeat-playbook.yml_

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- _Load balancers protect servers from a denial of service (DDoS) attack. The advantage of a jump box is that after a user successfully logs into the jump box system and is authenticated, they can traverse to other serves without another login requirement._

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system performance.
- _Filebeat is a lightweight shipper for forwarding and centralizing log data._
- _Metricbeat records metric data from your target servers._

The configuration details of each machine may be found below.

| Name                 | Function | IP Address | Operating System   |
|----------------------|----------|------------|--------------------|
| Jump-Box-Provisioner | Gateway  | 10.0.0.7   | Linux ubuntu 18.04 |
| Web-1                | VM       | 10.0.0.5   | Linux ubuntu 18.04 |
| Web-2                | VM       | 10.0.0.6   | Linux ubuntu 18.04 |
| Elk1-VM              | ElkStack | 10.2.0.4   | Linux ubuntu 18.04 |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _174.104.223.176 - my personal machine IPV4 address_

Machines within the network can only be accessed by Port 22.
- _The machines that can access the ELK VM are 174.104.223.176 - my personal machine IPV4 address and the Jump-Box-Provisioner VM at IP 10.0.0.7 through a peering connection._

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Addresses      |
|----------------------|---------------------|---------------------------|
| Jump-Box-Provisioner | Yes                 | 10.0.0.7, 174.104.223.176 |
| Web-1                | No                  | 10.0.0.7                  |
| Web-2                | No                  | 10.0.0.7                  |
| Elk1-VM              | No                  | 10.0.0.7, 174.104.223.176 |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _You don’t need to install any other software or firewall ports on the client systems you want to automate. You also don’t have to set up a separate management structure._

The playbook implements the following tasks:
- _Install Docker_
- _Download Image_
- _Configure Container_
- _Create playbook and install container with Docker and Filebeat and Metricbeat_
- _Run playbook to launch the container_

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/docker_ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _10.0.0.5 Web-1_
- _10.0.0.6 Web-2_

We have installed the following Beats on these machines:
- _filebeat-7.4.0-amd64.deb_
- _metricbeat-7.4.0-amd64.deb_

These Beats allow us to collect the following information from each machine:
- _Filebeat monitors and collects log events on specified servers such as my Web-1 and Web-2 VM servers. Filebeat is used to send log files to Kibana._

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Filebeat_3.png)

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Filebeats1.png)

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Filebeats2.png)



<br>

- _Metricbeat collects metrics from the operating system as well as services running on the server. It then sends the collected metrics to a specified output, such as Elasticsearch._

![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Metricbeat_3.png)
![ScreenShot](https://github.com/Jonathan-K88/Cybersecurity-Project-1/blob/main/Images/Metricbeat1.png)

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-playbook.yml file to /etc/filebeat/filebeat.yml.
- Update the filebeat-config.yml file to include the ELK server private IP in lines 1106 and 1806.
- Run the playbook, and navigate to [Elk-Public-IP]:5601/app/kibana to check that the installation worked as expected.

$ ansible-playbook filebeat-playbook.yml
