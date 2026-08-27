# AquaLembrete - Relatório Técnico

## 1. Visão Geral do Projeto
O **AquaLembrete** é um aplicativo mobile desenvolvido para auxiliar usuários na manutenção da hidratação diária de forma simples e direta. A aplicação realiza o cálculo personalizado da meta diária de água, provê mecanismos rápidos para o registro de consumo e realiza sincronização remota dos dados.

## 2. Tecnologias Utilizadas
* **Framework:** Flutter (Dart)
* **Comunicação de Rede:** Biblioteca `http` (Requisições RESTful)
* **API de Integração:** HTTPBin REST API (`https://httpbin.org/post`)
* **Gerenciamento de Estado:** State (`setState`) nativo do Flutter
* **Componentes de Interface:** Material Design 3, CircularProgressIndicator e layouts adaptáveis (Flex/Column/Row)

## 3. Implementação dos Requisitos
* **RF01 (Cálculo de Meta):** O app calcula automaticamente o volume alvo através da fórmula `Peso * 35ml`.
* **RF02 (Registro de Ingestão via API):** Envio dos registros de consumo via requisição HTTP POST para o servidor remoto, serializando dados em formato JSON.
* **RF03 (Comunicação com Servidor):** Integração com endpoint RESTful para sincronização de consumo em tempo real com indicador visual de carregamento.
* **RF04 (Progresso Visual):** Exibição da porcentagem atual através de um componente gráfico circular de progresso.
* **RNF01 (Usabilidade e UX):** Interface intuitiva no padrão Material Design, permitindo registrar consumo com apenas 1 toque a partir da tela principal.

## 4. Como Executar o Projeto
1. Certifique-se de ter o Flutter instalado e configurado na máquina.
2. Clone este repositório:
```bash
git clone [https://github.com/zanchett002/aqualembrete.git](https://github.com/zanchett002/aqualembrete.git)