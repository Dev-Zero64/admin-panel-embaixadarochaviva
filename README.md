# Admin Panel Embaixada Rocha Viva

Este é o repositório do projeto Admin Panel Embaixada Rocha Viva, uma aplicação web construída com Ruby on Rails.

## Requisitos

- Ruby 3.3.1
- Rails 7.1.3
- PostgreSQL

## Configuração do Ambiente

1. Clone o repositório:
    ```sh
    git clone https://github.com/seu-usuario/admin-panel-embaixadarochaviva.git
    cd admin-panel-embaixadarochaviva
    ```

2. Instale as dependências:
    ```sh
    bundle install
    ```

3. Configure o banco de dados:
    ```sh
    bin/rails db:setup
    ```

4. Inicie o servidor:
    ```sh
    bin/rails server
    ```

## Estrutura do Projeto

- `app/controllers`: Contém os controladores da aplicação.
- `app/models`: Contém os modelos da aplicação.
- `app/views`: Contém as views da aplicação.
- `config`: Contém arquivos de configuração.
- `db`: Contém migrações e seeds do banco de dados.
- `test`: Contém os testes automatizados.

## Funcionalidades

- Gerenciamento de notícias
- Upload de imagens
- Autenticação de administrador

## Testes

Para rodar os testes, execute:
```sh
bin/rails test
```

## Contribuição

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -am 'Adiciona nova feature'`).
4. Faça um push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.