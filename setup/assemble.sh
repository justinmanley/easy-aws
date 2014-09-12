# Set up an AMI ready to generate a static website using assemble.
# Includes node.js setup

sudo apt-get update

# install and configure git
sudo apt-get install git -y
git config --global user.email "manleyjster@gmail.com"
git config --global user.name "Justin Manley"

# unzip is required for data pipeline to run
sudo apt-get install unzip -y

# java is also required for data pipeline to run
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java7-installer -y

# install and set up nvm and nodejs
sudo apt-get install build-essential libssl-dev -y
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh

# need to close and reopen terminal to start using nvm
nvm install 0.11.13 # or more recent version - use nvm ls-remote
nvm use 0.11.13
nvm alias default 0.11.13

# install global dependencies
npm install -g grunt-cli
npm install -g bower