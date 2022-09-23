#!/bin/bash

echo ¨Creating Folders...¨

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo ¨Creating Groups...¨

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo ¨Creating Users GRP_ADM...¨

useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM carlos


useradd maria -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM maria


useradd joao -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM joao


echo ¨Creating Users GRP_VEN...¨

useradd debora -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM debora


useradd sebastiana -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM sebastiana


useradd roberto -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM robert


echo ¨Creating Users GRP_SEC...¨

useradd josefina -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM josefina


useradd amanda -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM amanda


useradd rogerio -s /bin/bash -m -p $(openssl passwd Senha123) 
usermod -aG GRP_ADM rogerio


echo ¨Applying permissions to folders....¨

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo ¨Finish!!¨
