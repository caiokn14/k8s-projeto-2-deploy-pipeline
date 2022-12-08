echo "Criando a imagem......"

docker build -t caionakakita/kubernetes-projeto2-deploy-pipeline:1.0 app/.

echo "Realizando o push da imagem....."

docker push caionakakita/kubernetes-projeto2-deploy-pipeline:1.0

echo "Criando os deployments....."

kubectl apply -f .\mysql-deployment.yml --record
kubectl apply -f .\app-deployment.yml --record
