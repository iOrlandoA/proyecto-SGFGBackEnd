# README
Instalar el postgresql

    sudo apt install postgresql postgresql-contrib


Instalar Ruby On Rails

    sudo apt update
 
_
    
    sudo apt install curl gpg
 
_   
    
    gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

_

    \curl -sSL https://get.rvm.io | bash -s stable

_

    source ~/.rvm/scripts/rvm

Confirmar que se instalo correctamente

    
 
    rvm --version

_    
    
    rvm install 2.7.0  

_

    rvm use 2.7.0 --default
    
_
    
    gem install rails


Inicializar Proyecto


_

    sudo apt-get install libpq-dev
    
_

    sudo service postgresql
    
_

    rake:db create
    
_

    bundle install
    
Regresar al proyecto

    sudo service postgresql start

_

    rails server
