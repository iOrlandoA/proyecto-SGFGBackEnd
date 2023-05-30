# README
Instalar el postgresql

    sudo apt install postgresql postgresql-contrib


Instalar Ruby On Rails

    sudo apt update
    
    
    sudo apt install curl gpg
    
    
    gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB


    \curl -sSL https://get.rvm.io | bash -s stable


    source ~/.rvm/scripts/rvm
 Confirmar que se instalo correctamente
 
    rvm --version
    
    
    rvm install 2.7.0  



    rvm use 2.7.0 --default
    
    
    gem install rails


sudo service postgresql


rake:db create

bundle install

rails server
