# Projeto desafio SENAC - Redes neurais e suas aplicações - Prof. David Berto

**Autores**

- Alexandre Moraes de Souza
- Edgar de Souza Lemos Junior
- Luiz Antonio Burim Junior
- Mauricio dos Santos Menandro

Esse projeto foi desenvolvido para o desafio final da disciplina de Redes Neurais e suas aplicações do curso de Especialização em inteligencia artificial e Machine learning do SENAC.

O objetivo do projeto é desenvolver uma rede neural para classificar aquivos de audio em 4 classes de instrumentos musicais:

- Piano
- Violino
- Bateria
- Guitarra

O projeto foi desenvolvido em Python 3.11 e utiliza as seguintes bibliotecas:

- IPython: Ferramenta para trabalhar interativamente com código Python
- matplotlib: Biblioteca de gráficos e visualizações
- numpy: Biblioteca para computação numérica
- pandas: Biblioteca de manipulação e análise de dados

- tensorflow: Framework de Machine Learning
- tensorflow_io: Suporte para E/S de dados no TensorFlow
- tensorflow-hub: Biblioteca para reutilização de componentes de Machine Learning
- scikit-learn: Biblioteca de aprendizado de máquina

Esse projeto foi dividido em 3 partes, cada uma com seu Kernel:

1. **RNAP_desafio.ipynb**:

   Esse kernel é o principal do projeto contém o código para download do dataset, o treinamento do modelo de rede neural em 7 variações

   Nosso modelo consiste em demonstrar a técnica de transfer learning, utilizando o modelo de rede neural pré treinada YAMNet, e treinando apenas a camada de classificação.

   O treinamento é feito utilizando o Dataset Musical Instrument Sound Dataset disponível em <https://www.kaggle.com/soumendraprasad/musical-instruments-sound-dataset>

   Para fazer o treinamento do modelo, basta executar o kernel, e os modelos serão salvos na pasta /models/[nome_do_modelo]

2. **RNAP_desafio_inferencia.ipynb**

    Esse kernel faz a inferência do modelo treinado no kernel anterior, utilizando o dataset de teste

3. **RNAP_desafio_graficos.ipynb**:

    Esse kernel gera gráficos de Confusion Matrix para cada modelo treinado, e salva na pasta /models/[nome_do_modelo].png
