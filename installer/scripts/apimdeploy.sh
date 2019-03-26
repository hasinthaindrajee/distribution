download_location=/Users/hasinthaindrajee/work/cellery

kubectl create configmap gw-conf --from-file=${download_location}/distribution-${release_version}/installer/k8s-artefacts/global-apim/conf -n cellery-system
kubectl create configmap gw-conf-datasources --from-file=${download_location}/distribution-${release_version}/installer/k8s-artefacts/global-apim/conf/datasources/ -n cellery-system
#Create KM config maps
kubectl create configmap conf-identity --from-file=${download_location}/distribution-${release_version}/installer/k8s-artefacts/global-apim/conf/identity -n cellery-system
kubectl create configmap apim-template --from-file=${download_location}/distribution-${release_version}/installer/k8s-artefacts/global-apim/conf/resources/api_templates -n cellery-system
kubectl create configmap apim-tomcat --from-file=${download_location}/distribution-${release_version}/installer/k8s-artefacts/global-apim/conf/tomcat -n cellery-system
kubectl create configmap apim-security --from-file=${download_location}/distribution-${release_version}/installer/k8s-artefacts/global-apim/conf/security -n cellery-system

