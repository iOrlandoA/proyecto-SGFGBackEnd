# README


# Regresar al proyecto

    sudo service postgresql start



Instalar todas las gemas:       
                   
    bundle install

Crear la base de datos:     
                
     rake db:create    

Correr las migraciones:     
    
      rake db:migrate

Levantar el servidor:       
    
       rails server




# Instalación Inicial

_____________________________________________________________________________________________________________________
### POSGRESQL
## Instalar el postgresql: 
    
    sudo apt install postgresql postgresql-contrib
    
Instalar libpq-dev:

    sudo apt-get install libpq-dev
    
    
### Crear la Base de Datos
Revisar el yml y cambiar si es diferente username y password
    
Entrar en la Consola de PosgreSQL

    sudo -u postgres psql 
Crear Contraseña (postgres)

    \password postgres
Crear una base de datos
 
    CREATE DATABASE datosSGFG;

_____________________________________________________________________________________________________________
### RUBY ON RAILS
## Instalar Ruby On Rails: 


Paso 1: 
    
     sudo apt update
 

    
 Paso 2 instalar el curl gpg:   
    
    sudo apt install curl gpg
 
  
    
 Paso 3:   
    
    gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB



 Paso 4 Instalar el RubiVersionMannager: 
    
    \curl -sSL https://get.rvm.io | bash -s stable



  Paso 5 Ejecutar el rvm:  
    
    source ~/.rvm/scripts/rvm
  

### Confirmar que se instalo correctamente: 
    
    rvm --version

    
 Paso 6 Instalar version de Ruby 2.7.0:  
    
    rvm install 2.7.0



 Paso 7 Volver la version por defecto:  
 
    rvm use 2.7.0 --default
    

    
 Paso 8 Instalar el Rails: 
 
    gem install rails

    

