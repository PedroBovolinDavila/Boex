# Boex

API para cadastro de livros e usuarios, onde um usuario pode alugar um livro

## Funcionalidades

- Cadastro de Livros
- Cadastro de Usuarios
- Relacionamento da tabela de Usuarios com a de Livros (one to many)

## Rode o projeto na sua maquina!

É necessario ter o Elixir, Phoenix e Postgres instalado

Clone o projeto

```bash
  git clone https://link-para-o-projeto
```

Entre no diretório do projeto

```bash
  cd my-project
```

Instale as dependências

```bash
  mix deps.get
```

Inicie o servidor

```bash
  mix phx.server
```

## Documentação da API

#### Retorna todos os livros cadastrados

```http
  GET /api/books
```

#### Retorna um livro pelo id

```http
  GET /api/books/${id}
```

| Parâmetro | Tipo     | Descrição                                    |
| :-------- | :------- | :------------------------------------------- |
| `id`      | `string` | **Obrigatório**. O ID do livro que você quer |

#### Retorna um livro pelo titulo

```http
  GET /api/books/${title}
```

| Parâmetro | Tipo     | Descrição                                        |
| :-------- | :------- | :----------------------------------------------- |
| `title`   | `string` | **Obrigatório**. O titulo do livro que você quer |

## Stack utilizada

**Backend:** Elixir, Phoenix, Ecto

**Database:** Postgres

## Autores

- [@pedrobovolindavila](https://www.github.com/pedrobovolindavila)
