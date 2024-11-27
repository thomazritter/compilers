# Exercício GB - Compiladores

Aluno: Thomaz Justo Ritter

## 📚 Descrição
Este projeto consiste na criação de um analisador sintático e gerador de código intermediário para uma linguagem simples chamada **FOOLI**.

---

## 📁 Estrutura do Repositório

O repositório contém os seguintes componentes:
- **Analisador Léxico**: Identifica os tokens válidos na linguagem.
- **Analisador Sintático**: Verifica a estrutura gramatical do código.
- **Código Intermediário**: Gera um código intermediário baseado na entrada fornecida.

---

## ✅ Pré-requisitos

Antes de executar o projeto, certifique-se de:
1. **Bibliotecas necessárias**:
   - Ter certeza de que a pasta lib contem tanto a .jar do CUP e a .jar do FLEX. 
2. **Ter o Java instalado**:
   - Faça o download e instalação pelo [site oficial](https://www.java.com/pt-BR/download/ie_manual.jsp?locale=pt_BR).

---

## 🏃 Como Executar

1. Certifique-se de que está no diretório do projeto.
2. No terminal ou PowerShell, utilize o seguinte comando para executar o programa:

```bash
java -cp ".;lib/*" Main.java entrada.txt
```

## 🧩 **Resultados**

O arquivo de entrada chamado entrada.txt, localizado na pasta `src`, será analisado. O código intermediário gerado será exibido no console. Resultado com a `entrada.txt` fornecido esta localizado na imagem `resultado.png`
