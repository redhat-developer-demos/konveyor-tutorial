Move2Kube
---------
Congratulations! Move2Kube has generated the necessary build artfiacts for moving all your application components to Kubernetes. Using the artifacts in this directory you can deploy your application in a kubernetes cluster.

Prerequisites
-------------
* Docker
* Helm
* Kubectl
* Source-To-Image (S2I) https://github.com/openshift/source-to-image

Next Steps
----------
* Copy the source directory into the containers folder for packaging as containers using "./scripts/copysource.sh <SRC_DIR>"
* Build your images using "./scripts/buildimages.sh"
* Push images to registry "./scripts/pushimages.sh <REGISTRY_URL> <REGISTRY_NAMESPACE>"
* Use "deploy.sh" to deploy your artifacts into a kubernetes cluster.
