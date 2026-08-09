#!/bin/bash

set -e  # para tudo se der erro

echo "======================================"
echo "🚀 INICIANDO PIPELINE LOCAL"
echo "======================================"

# ---------------------------------------
# 1. BUILD E TEST (.NET)
# ---------------------------------------
echo "🔨 Buildando aplicação .NET..."

dotnet restore ./Mechanic/Mechanic.sln
dotnet build ./Mechanic/Mechanic.sln --no-restore --configuration Release

echo "🧪 Rodando testes..."
dotnet test ./Mechanic.Tests/Mechanic.Tests.csproj --configuration Release

echo "✅ Build e testes OK"
echo ""

# ---------------------------------------
# 2. DOCKER BUILD
# ---------------------------------------
echo "🐳 Buildando imagem Docker..."

docker build -t mechanic-api:local ./Mechanic

echo "✅ Docker build OK"
echo ""

# ---------------------------------------
# 3. KUBERNETES (MINIKUBE OU DOCKER DESKTOP)
# ---------------------------------------

echo "☸️ Verificando cluster Kubernetes..."

kubectl cluster-info > /dev/null 2>&1 || {
  echo "❌ Kubernetes não está rodando!"
  echo "👉 Inicie o Docker Desktop ou Minikube"
  exit 1
}

echo "✅ Kubernetes ativo"
echo ""

# ---------------------------------------
# 4. CARREGAR IMAGEM NO CLUSTER (MINIKUBE)
# ---------------------------------------

if command -v minikube &> /dev/null
then
  echo "📦 Carregando imagem no Minikube..."
  minikube image load mechanic-api:local
fi

# ---------------------------------------
# 5. AJUSTAR YAML TEMPORARIAMENTE
# ---------------------------------------

echo "🛠 Ajustando imagem local no deployment..."

sed -i 's|image: .*|image: mechanic-api:local|g' ./Mechanic/k8s/api-deployment.yaml
sed -i 's|imagePullPolicy: .*|imagePullPolicy: IfNotPresent|g' ./Mechanic/k8s/api-deployment.yaml

# ---------------------------------------
# 6. DEPLOY KUBERNETES
# ---------------------------------------

echo "🚀 Aplicando manifests..."

kubectl apply -f ./Mechanic/k8s/

echo ""

# ---------------------------------------
# 7. AGUARDAR PODS
# ---------------------------------------

echo "⏳ Aguardando pods subirem..."

kubectl wait --for=condition=available deployment/mechanic-api --timeout=120s

echo "✅ API disponível"
echo ""

# ---------------------------------------
# 8. STATUS FINAL
# ---------------------------------------

echo "📊 STATUS FINAL:"
kubectl get pods
kubectl get svc

echo ""
echo "======================================"
echo "🎉 PIPELINE LOCAL FINALIZADO COM SUCESSO"
echo "======================================"

echo ""
echo "👉 Para acessar a API:"
echo "kubectl port-forward svc/mechanic-api-service 8080:80"
echo "Depois abra: http://localhost:8080"
echo ""
echo "Pressione ENTER para sair..."
read