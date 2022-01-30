# Seleção de Desenvolvedor de Software - Escribo

Teste Técnico 03

## Instruções para Uso:

Como solicitado no guia para o terceiro teste, foi desenvolvido uma aplicação aonde uma lista de dados
fosse carregada por via API Rest de um banco de dados online.

Para tornar a requisição mais dinamica, desenvolvi uma tela de carregamento que apresenta a logo da Escribo
e ao carregar os dados, navega automaticamente para a proxima tela:

![image](https://user-images.githubusercontent.com/35077005/151684596-b5e58b4c-4999-44bc-8ccb-9618429b8bf8.png)

Na proxima tela é apresentado uma mensagem aonde é solicitado que o usuario selecione uma das listas
apresentada na app bar.
Ao selecionar, é apresentado a lista das respectivas opções:

![image](https://user-images.githubusercontent.com/35077005/151684632-5b688c35-f82c-43e9-9619-a07b97b3f63e.png)
![image](https://user-images.githubusercontent.com/35077005/151684644-52cb982a-ff2a-4891-a91e-91493b92d360.png)

Ao clicar sob o icone de favorito, os respectivos itens são adicionados a lista de favoritos, sendo categorizados
pelas cores como solicitado no guia:

![image](https://user-images.githubusercontent.com/35077005/151684676-d412d49b-19dd-4ba3-8760-42c69676bce7.png)

Na app bar, ao clicar na opção "Site Oficial", é carregado o link enviado no guia para desenvolvimento da aplicação:

![image](https://user-images.githubusercontent.com/35077005/151684696-2e54c1a0-7d7c-47bd-bc6d-325c1bb230ac.png)

Ao clicar novamente no mesmo icone, voltamos para a pagina principal.

O mesmo ocorre com o avatar posicionado na app bar:

![image](https://user-images.githubusercontent.com/35077005/151684707-09ad5210-55fe-41d6-b51d-1da7743bf16a.png)

Ao customizar o avatar, o usuario pode clicar no icone de salvar, tornando as alterações permanentes,
de forma que, ao iniciar novamente a aplicação, o avatar atualizado será apresentado.
Mas caso o usuario saia da tela sem salvar as alterações, as mesmas serão perdidas.


Por fim, foi solicitado a implementação de um ultimo pacote para salvar os favoritos de forma local.
Confesso que a terceira tarefa foi um desafio que me exigiu um maior tempo do que foi disponibilizado
e dessa forma concluo o desenvolvimento infelizmente sem concluir todas as tarefas.

Sobre a refatoração, consegui separar e organizar algumas partes do código mas também me faltou tempo
para a melhor refatoração do mesmo.

Por fim, como foi solicitado um apk para testes no repositorio do git, o mesmo se encontra no seguinte caminho:
build\app\outputs\flutter-apk

