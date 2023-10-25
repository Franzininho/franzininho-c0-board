## Manual de Uso do Script para gravação do FW de fábrica para a Franzininho C0

Este manual fornece instruções básicas parausar o script em lote (prog.bat) para gravar o de fábrica para a Franzininho C0 via comunicação serial (UART) usando o STM32CubeProgrammer CLI. 

Certifique-se de que as etapas a seguir sejam seguidas cuidadosamente.

### Requisitos Prévios:

- STM32CubeProgrammer: Verifique se o software STM32CubeProgrammer está instalado no PC e o caminho para o executável (STM32_Programmer_CLI.exe) é conhecido. Saib mais em: [LINK](https://embarcados.com.br/desbravando-todo-o-potencial-do-stm32cubeprogrammer/)
- Adicione o STM32CubeProgrammer CLI às variáveis de ambiente do windows[LINK]([Adicionando a CLI às variáveis de ambiente do windows](https://embarcados.com.br/desbravando-todo-o-potencial-do-stm32cubeprogrammer/#Adicionando-a-CLI-as-variaveis-de-ambiente-do-windows))


## Customização do Script:

Antes de executar o script, certifique-se de personalizar as seguintes variáveis no script prog.bat de acordo com a configuração da sua placa:

PortName: Defina o número da porta serial COMx que a placa está usando (por exemplo, COM5).
STM32CubeProgrammerPath: Forneça o caminho para o executável do STM32CubeProgrammer CLI (por exemplo, "C:\Caminho\Para\STM32CubeProgrammer\bin\STM32_Programmer_CLI.exe").

## Uso do Script:

Execute o script pro.bat personalizado usando um duplo clique.

1 - No terminal será exibido a mensagem para que conecte a placa ao PC.
2 - Pressione ENTER quando a placa estiver conectada
3 - Será iniciado o processo de gravação.
4 - Após a gravação a placa será reiniciada automaticamente piscando o LED1(B6)
5 - Pressine o Botão(A8)
6 - Verifique se o LED 2 (B7) acendeu. Se sim, placa OK

O script permite a gravação de várias placas em sequência. Após a conclusão de uma placa, conecte a próxima placa e siga as instruções do script para continuar com a próxima gravação.

O processo continuará indefinidamente até ser interrompido manualmente. Para interromper o processo, pressione Ctrl+C no teclado.
