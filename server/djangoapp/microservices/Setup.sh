
docker build . -t us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer

docker push us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer

ibmcloud ce application create --name sentianalyzer --image us.icr.io/${SN_ICR_NAMESPACE}/senti_analyzer --registry-secret icr-secret --port 5000


echo "Open djangoapp/.env and replace your code engine deployment url with the deployment URL you obtained above. It is essential to include the / at the end of the URL. Please ensure that it is copied."