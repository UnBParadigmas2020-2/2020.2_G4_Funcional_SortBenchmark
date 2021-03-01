# SortBenchmark

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 04<br>
**Paradigma**: Funcional<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 170033066  |  Esio Gustavo Pereira Freitas |
| 170050939  |  Lucas Dutra Ferreira do Nascimento |
| 170017885  |  Marcos Nery Borges Júnior  |
| 170020461  |  Pedro Henrique Andrade Féo  |
| 170024334  |  Youssef Muhamad |

## Sobre 
O projeto permite que o usuário visualize e compare os tempos que diversos algoritmos de ordenação levam para ordenar listas de tamanhos variados, compostas por elementos aleatórios. Dessa forma, é possível observar quais conseguem performar melhor conforme cresce o tamanho do desafio, e quais são limitados a resolverem problemas menores. Além disso, é possível ver também o quão significativa em Haskell é a vantagem tida nesse quesito pelos algoritmos que utilizam uma lógica mais recursiva, denotando um dos pontos fortes da linguagem.

## Screenshots
Adicione 2 ou mais screenshots do projeto em termos de interface e/ou funcionamento.

## Instalação 
**Linguagens**: Haskell<br>
**Tecnologias**: Cabal<br>
### Instalação Manual
#### Pré-requisitos
Além do Haskell, você também precisará ter o package system Cabal instalado. A depender de como foi a sua instalação do Haskell, ele já está configurado para uso, para conferir, basta utilizar:
```
cabal --version
```
Caso ele não esteja presente, você pode serguir as instruções [aqui](https://cabal.readthedocs.io/en/3.4/getting-started.html) para instala-lo.
#### Execução
Primeiro, executamos ```cabal update``` para ter certeza que as dependências estão atualizadas, e em seguida basta executar ```cabal run``` para executar o projeto. Tudo na raiz da pasta clonada.
### Via Docker
Caso você tenha Docker instalado na sua maquina, temos uma imagem pré-configurada para executar o projeto. Basta executar os seguintes comandos na raiz da pasta clonada e pronto.
```
docker build . -t sort-benchmark
```
```
docker run -it sort-benchmark
```
## Uso 
Você precisará apenas digitar o tempo máximo que os algoritmos poderão levar para a ordenação, separando as casas decimais com ponto (".")

## Vídeo
Adicione 1 ou mais vídeos com a execução do projeto.

## Outros 
Quaisquer outras informações sobre seu projeto podem ser descritas a seguir.

## Fontes
Caso utilize materiais de terceiros, referencie-os adequadamente.
