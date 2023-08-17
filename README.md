# editora_de_livros_rails
Este projeto consiste na construção de um website de uma editora de livros utilizando Ruby on Rails.

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/joaogdfaero/editora_livros_rails">
    <img src="images/logo2.png" alt="Logo" width="180" height="180">
  </a>

<h3 align="center">Editora Rails</h3>

  <p align="center">
    Este projeto consiste na construção de um website de uma editora de livros utilizando Ruby on Rails. Ele tem como objetivos desenvolver habilidades básicas no uso do Ruby On Rails. É um dos projetos da mentoria  <a href="https://hotmart.com/pt-br/marketplace/produtos/desenvolvendome/S43742208Q">DesenvolvendoMe</a>.
    <br />
    <br />
    <br />
    ·
    <a href="https://github.com/joaogdfaero/editora_livros_rails/issues">Report Bug</a>
    ·
    <a href="https://github.com/joaogdfaero/editora_livros_rails/issues">Request Feature</a>
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## Algumas Funcionalidades :iphone:
Validação de CPF e geração de relatório com livros publicados pelo autor.            |  Filtragem dos livros por título ou autor. 
:-------------------------:|:-------------------------:
![1](https://user-images.githubusercontent.com/103076610/222918236-05a2fab0-833b-40cb-bfef-cf8ff15a0ebd.gif)  |  ![2](https://user-images.githubusercontent.com/103076610/222918487-3a0310d8-d300-4ef5-a1c5-dc62c4f9dec4.gif)

## Etapas do Projeto :ballot_box_with_check:
### 1 - CRUDs
- Cadastrar Autores
- Cadastrar Livros vinculando com Autor
- Cadastrar Fornecedores com uma Conta
- Cadastrar Peças vinculando com Fornecedor

### 2 - Implementar as APIs
- Cadastrar Autores
- Cadastrar Livros vinculando com Autor
- Cadastrar Fornecedores com uma Conta
- Cadastrar Peças vinculando com Fornecedor

### 3. Roles (Regras)
- ### Alterar
  - Adicionar campo CNPJ em Fornecedor
  - Adicionar campo Dígito Verificador em Conta
  - Adicionar campo ISBN em Livro
  - Adicionar campo CPF em Autor
  - 
- ### Calcular
  - Dígito Verificador em Conta (pesquisar como calcular esse dígito verificador)

- ### Validar
  - CNPJ em Fornecedor
  - ISBN em Livro
  - CPF em Autor


### 4. Filtros
- ### Adicionar
  - Campo título em Livro
  - Campo nome em Peça

- ### Filtrar
  - Fornecedor por nome
  - Fornecedor por número da conta em Conta
  - Livros por título
  - Livros por nome em Autor

### 5. Relatórios
- ### Adicionar
  - Campo valor em Peça
- ### Relatório
  - Autor (com todas as informações com seu Livros (com todas as informações) e o total de Livros publicado
</font>


## API Documentation (Postman) <a href="https://stackshare.io/postman" target="_blank"><img src="https://github.com/kilianpaquier/devicon/blob/dbea53e8f43aa502e0d35d595729ecd86db87f62/icons/postman/postman-plain.svg" alt="ruby" width="40" height="40" /></a> 

[Link](https://documenter.getpostman.com/view/24543977/2s8YsnXwCV) 

## Tecnologias:
* Ruby 3.0.2
* Rails 7.0.4.3

## Instalação
1. **Clone este repositório**  
` git clone https://github.com/joaogdfaero/editora_livros_rails.git`

2. **Acesse a pasta do projeto**  
` cd editora_livros_rails `

3. **Instale as gems necessárias**  
` bundle `

4. **Execute o servidor da aplicação**  
` rails s `

5. **O servidor inciará na porta: 3000 - acesse:**    
` http://localhost:3000 `

## Kanban <a href="" target="_blank"><img src="https://github.com/joaogdfaero/editora_livros_rails/blob/main/images/kanban.png" alt="kanban" width="50" height="50" /></a> 

[Project Kanban](https://github.com/users/joaogdfaero/projects/6)

##
<br>Mentor / Leader: <strong>Marco Castro</strong>
<br>Student / Author: <strong>João Gabriel Dal Forno (joao.dal@acad.ufsm.br)</strong>

<p align="right">(<a href="#readme-top">Voltar ao topo</a>)</p>
