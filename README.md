## Desafio_02
 Desafio 02 - SRE - Kubernetes e Helm 

## Objetivos do desafio

- Criar um subdiretório app com o código de uma aplicação web que exibe a mensagem “Olá Mundo”
- Construir a imagem docker da aplicação
- Criar os manifestos de recursos kubernetes para rodar a aplicação (deployments, services, ingresses, configmap e qualquer outro que você considere necessário)
- Criar um script para a execução do deploy em uma única execução
- A aplicação deve ter seu deploy realizado com uma única linha de comando em um cluster kubernetes local
- Todos os pods devem estar rodando
- A aplicação deve responder a uma URL específica configurada no ingress

Extras

- Utilizar o Helm HELM
- Divisão de recursos por namespaces
- Utilização de health check na aplicação

## Pré Requisitos

Kubernetes (v1.20+)
kubectl
Helm (v3+)

## Estrutura do repositório

desafio_02/
├── deploy_helm.sh
├── deploy.sh
├── app/
│ ├── server.py
│ ├── requirements.txt
│ └── Dockerfile
├── olamundo/
│ ├── Chart.yaml
│ ├── values.yaml
│ └── templates/
│ ├── deployment.yaml
│ ├── _helpers.tpl
│ ├── ingress.yaml
│ ├── NOTES.txt
│ ├── service.yaml
├── k8s/
│ ├── configmap.yaml
│ ├── deployment.yaml
│ ├── service.yaml
│ ├── ingress.yaml
│ └── namespace.yaml


## Iniciando o Olá Mundo

## 1 - Carregar o Minikube

- Ir no diretório do projeto
- Com o usuário local: minikube start

## 2 - Execução do deploy em uma única execução

- Executar o script: bash deploy_helm.sh #iniciará o namespace desafio

## 3 - Verificar as releases do Helm

- helm list -A

## 4 - Para zerar o cluster e limpar o ambiente

- minikube delete #isso apagará todo o ambiente
