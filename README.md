# Lista de modificações

1. Não fiz um fork porque recebi o código num arquivo zip. Descompactei, coloquei para rodar numa VM via Vagrant e criei outro repositório lá, subindo posteriormente para o Github.
2. O projeto estava sem a configuração do DB, criei uma e rodei as migrações.
3. Primeira coisa que notei foi lógica dentro das views, extraí e coloquei no controller.
4. Depois notei que as views não estavam usando os helpers do Rails, troquei o HTML puro pelas tags para tornar o código mais fácil de manter em caso de mudanças.
5. Retirei algumas condições desnecessárias e troquei por métodos padrão da API do Rails, tornando o código mais legível.
6. Parti então para refatorar as rotas, não havia root path e troquei a listagem de Models de GET para POST para não ficar mostrando os parâmetros na URL.
7. Adicionei a gem dotenv para retirar a URI da Webmotors de dentro do código e colocá-la numa variável de ambiente, tornando mais fácil a configuração e alteração em produção.
8. Achei que os controllers estavam realizando muitas regras de negócio, como todo o acesso e parsing da API do Webmotors. Extraí e dei essa função para os models.
9. Configurei o Rspec e criei um teste unitário bem simples para demonstrar como ele pode ajudar na refatoração do código. Isso me permitiu alterar o nome do model Make para Maker e fazer as migrações sem maiores dificuldades e com maior segurança.
10. Finalmente criei também um teste de integração simples para demonstrar como podemos testar o caso de uso principal da aplicação.

Muita coisa ainda pode melhorar, é claro, mas infelizmente não pude dedicar mais tempo ao teste. Eu poderia aumentar a cobertura dos testes, otimizar a performance das consultas unindo os vários select em um só, até mesmo transformar a aplicação numa single page app com javascript, melhorando a experiência do usuário. Mas no geral o código está agora mais limpo, fácil de manter e de alterar, graças à aplicações de vários padrões do Rails e boas práticas.