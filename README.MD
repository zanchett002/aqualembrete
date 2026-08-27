# AquaLembrete - Relatorio Tecnico

## 1. Visao Geral do Projeto
O **AquaLembrete** e um aplicativo mobile desenvolvido para auxiliar usuarios na manutencao da hidratacao diaria de forma simples e direta. A aplicacao realiza o calculo personalizado da meta diaria de agua e prove mecanismos rapidos para o registro de consumo.

## 2. Tecnologias Utilizadas
* **Framework:** Flutter (Dart)
* **Gerenciamento de Estado:** State (setState) nativo do Flutter
* **Componentes de Interface:** Material Design, CircularProgressIndicator e layouts adaptaveis (Flex/Column/Row)

## 3. Implementacao dos Requisitos
* **RF01 (Calculo de Meta):** O app calcula automaticamente o volume alvo atraves da formula `Peso * 35ml`.
* **RF02 (Registro de Ingestao):** Inclusao de botoes diretos de 250ml e 500ml no painel principal, permitindo atualizacao instantanea do estado.
* **RF04 (Progresso Visual):** Exibicao da porcentagem atual atraves de um componente grafico circular de progresso.
* **RNF01 (Usabilidade):** O fluxo principal permite registrar consumo com apenas 1 toque a partir da tela principal.

## 4. Como Executar o Projeto
1. Certifique-se de ter o Flutter instalado e configurado na maquina.
2. Clone este repositorio:
  ```bash
git clone [https://github.com/seu-usuario/aqualembrete.git](https://github.com/seu-usuario/aqualembrete.git)