docker build -t prometheus .
docker image tag prometheus 10.0.0.150:5000/prometheus
docker push 10.0.0.150:5000/prometheus
kubectl delete pod `kubectl get pods | grep prometheus | awk '{print $1}'`

