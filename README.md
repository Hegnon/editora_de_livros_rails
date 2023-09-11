
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
## Algumas Funcionalidades 
Cadastro de montagem com várias peças.            |  Relatório completo de autor. 
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

### 3. Regras
- ### Alterar
  - Adicionar campo CNPJ em Fornecedor
  - Adicionar campo Dígito Verificador em Conta
  - Adicionar campo ISBN em Livro
  - Adicionar campo CPF em Autor
  - Campo valor em Peça
  - Campo título em Livro
  - Campo nome em Peça
- ### Calcular
  - Dígito Verificador em Conta
    (Falta adicionar a inserção automatica do digito verificador após a conta ser criada)

- ### Validar
  - CNPJ em Fornecedor
  - ISBN em Livro
  - CPF em Autor


### 4. Filtros

- ### Filtrar
  - Fornecedor por nome
  - Fornecedor por número da conta em Conta
  - Livros por título
  - Livros por nome em Autor

### 5. Relatórios
  
- ### Relatório
  - Autor (com todas as informações com seu Livros (com todas as informações) e o total de Livros publicado
</font>


## Tecnologias:
* Ruby 3.1.3
* Rails 7.0.4.3
* Node 19.8.1

## Instalação
1. **Clone este repositório**  
` git@github.com:Hegnon/editora_de_livros_rails.git`

2. **Acesse a pasta do projeto**  
   `Pasta onde fez o clone do repositório`

3. **Instale as gems necessárias**  
` bundle `

4. **Execute o servidor da aplicação**  
` rails s `

5. **O servidor inciará na porta: 3000 - acesse:**    
` http://localhost:3000 `

## Kanban 

[Project Kanban](https://github.com/users/Hegnon/projects/11)


<p align="right">(<a href="#readme-top">Voltar ao topo</a>)</p>
