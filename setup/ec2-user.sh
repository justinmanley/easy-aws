# Set up ec2-user on an Amazon AMI

adduser ec2-user

# switch to ec2-user so that files and directories have correct ownership
sudo su - ec2-user
mkdir .ssh
chmod 700 .ssh

# you will need to manually put your SSH key in .ssh/authorized_keys
touch .ssh/authorized_keys
chmod 400 .ssh/authorized_keys

# Add ec2-user to the adm and sudo groups in /etc/groups
# Example: usermod -a -G adm ec2-user

# Create a new file in /etc/sudoers.d (copying the file created by cloud-init) to allow 
# ec2-user to invoke sudo without a password

