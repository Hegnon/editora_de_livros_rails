
<h3 align="center">Editora Rails</h3>

  <p align="center">
    Este empreendimento visa a criação de um website para uma casa editorial de livros, empregando a tecnologia Ruby on Rails. Seus propósitos incluem a aquisição de competências elementares na utilização do framework Ruby On Rails. Esse empreendimento constitui um dos projetos abrangidos pela mentoria <a href="https://hotmart.com/pt-br/marketplace/produtos/desenvolvendome/S43742208Q">DesenvolvendoMe</a>.
    <br />
    <br />
    <br />
    ·
    <a href="https://github.com/Hegnon/editora_de_livros_rails/issues">Report Bug</a>
    ·
    <a href="https://github.com/Hegnon/editora_de_livros_rails/issues">Request Feature</a>
  </p>
</div>


<!-- ABOUT THE PROJECT -->
## Algumas Funcionalidades :iphone:
Validação de CPF e geração de relatório com livros publicados pelo autor.            |  Relatório completo de autor. 
:-------------------------:|:-------------------------:
![1](https://videoapi-muybridge.vimeocdn.com/animated-thumbnails/image/43f33a63-39bf-4ab5-9200-5ebe4e6578f2.gif?ClientID=vimeo-core-prod&Date=1694474015&Signature=e7af0d6790c5f1003136305b3af6af192f4672b1)  |  ![2](https://videoapi-muybridge.vimeocdn.com/animated-thumbnails/image/90f20ef2-992a-4d6b-896e-7c36c13700dc.gif?ClientID=vimeo-core-prod&Date=1694472198&Signature=5ce73fb50bcc3c5a993fea4ec9f5c366202fe4a6)

## Etapas do Projeto :ballot_box_with_check:
### 1 - CRUDs
- Cadastrar Autores
- Cadastrar Livros vinculando com Autor
- Cadastrar Fornecedores com uma Conta
- Cadastrar Peças vinculando com Fornecedor

### 2 - Implementar as APIs (Pendente)
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
