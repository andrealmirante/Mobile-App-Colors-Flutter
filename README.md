# Para poder iniciar a aplicação web app, é necessario a instalação do Flutter 3.9.0-1.0.pre.55 e do Dart 3.0.0 (Recomendado utilizar a mesma versão, porém pode ser uma maior.)

# Ja com o flutter e o dart instalado, vá no terminal do propria IDE utilizada: Utilize " cd testeflutter ", dentro da raiz do projete, utilize " Flutter run " para iniciar a aplicação do projeto. 


# Explicação do codigo: 

# O Codigo citado é um aplicativo simples que consiste numa pagina inicial com três botões. Quando pressionado um dos botôes, a pagina ira le enviar para outra pagina que exibe a cor selecionada no fundo.

# A estrutura básica do aplicativo é definida na classe MyApp. A HomePage é construída usando um Scaffold, que fornece a estrutura básica para uma tela do aplicativo. A AppBar define o título da página e o corpo é construído com um Center contendo uma coluna de três botões. Cada botão é um widget personalizado chamado ColorButton, que recebe o nome da cor e a cor como argumentos e retorna um botão Elevado.

# Quando um botão é pressionado, a função onPressed é utlizada e navega para a ColorPage correspondente usando o Navigator.push. A ColorPage é construída usando um Scaffold, que também contém uma AppBar com o título da cor selecionada e um botão de volta.
