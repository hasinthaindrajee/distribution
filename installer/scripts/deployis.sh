download_location=/Users/hasinthaindrajee/work/cellery

#Create the IDP config maps
kubectl create configmap identity-server-conf --from-file=${download_location}/distribution/installer/k8s-artefacts/global-idp/conf -n cellery-system
kubectl create configmap identity-server-conf-datasources --from-file=${download_location}/distribution/installer/k8s-artefacts/global-idp/conf/datasources/ -n cellery-system
kubectl create configmap identity-server-conf-identity --from-file=${download_location}/distribution/installer/k8s-artefacts/global-idp/conf/identity -n cellery-system
kubectl create configmap identity-server-tomcat --from-file=${download_location}/distribution/installer/k8s-artefacts/global-idp/conf/tomcat -n cellery-system
#kubectl create configmap identity-server-security --from-file=${download_location}/distribution/installer/k8s-artefacts/global-idp/conf/security -n cellery-system

#Create IDP deployment and the service
kubectl apply -f ${download_location}/distribution/installer/k8s-artefacts/global-idp/global-idp.yaml -n cellery-system


