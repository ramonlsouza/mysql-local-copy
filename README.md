# mysql-local-copy
Script em bash para criar uma cópia local de um banco de dados mysql

## Como utilizar:
1. Copie os arquivos `db-info.txt` e `mysql-local.sh` para o diretório do seu projeto
2. Altere o conteúdo do arquivo `db-info.txt` de acordo com os dados de seus bancos de dados de produção e local (exemplo: onde estiver escrito **"[local-db-host]"**, substitua por **"127.0.0.1"** para que o banco de dados seja criado em *localhost*).
3. Execute o script via terminal, acessando o diretório em que se encontram os arquivos e digitando `sh mysql-local.sh`
4. Aguarde a mensagem que indica o fim da execução do script.
