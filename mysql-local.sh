#!/bin/bash
# sh mysql-local.sh

  echo "fazendo cópia local do banco de dados\n"

  # Imports database list file
  . db-info.txt

  prod_host=${prod_database_host}
  prod_user=${prod_database_user}
  prod_db_name=${prod_database_name}
  prod_password=${prod_database_pass}

  local_host=${local_database_host}
  local_user=${local_database_user}
  local_db_name=${local_database_name}
  local_password=${local_database_pass}

  if [ ! -d "local_db_askh3da67sm8le2ei" ]; then
    mkdir local_db_askh3da67sm8le2ei
  fi

  mysqldump --column-statistics=0 --user=$prod_user --password=$prod_password --host=$prod_host $prod_db_name > local_db_askh3da67sm8le2ei/$prod_db_name.sql

  echo ".sql local criado com sucesso, importando arquivo\n"

  mysql -u${local_user} -p${local_password} -e "CREATE DATABASE $local_db_name"
  mysql -u${local_user} -p${local_password} $local_db_name < local_db_askh3da67sm8le2ei/$prod_db_name.sql

  echo "removendo arquivos temporários\n"

  rm -r local_db_askh3da67sm8le2ei

  echo ".sql importado com sucesso, fim do script.\n"