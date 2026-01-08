#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )" 
DEST=$ROOTDIR/scaffolder-templates/dotnet-frontend-template
source $ROOTDIR/properties

sed -i "s/OCP__APPS__DOMAIN/$OCP__APPS__DOMAIN/g" $DEST/template.yaml
sed -i "s/GITLAB__DEFAULT__HOST/$GITLAB__DEFAULT__HOST/g" $DEST/template.yaml
sed -i "s/QUAY__DEFAULT__HOST/$QUAY__DEFAULT__HOST/g" $DEST/template.yaml
sed -i "s/GITLAB__SOURCE__ORG/$GITLAB__SOURCE__ORG/g" $DEST/template.yaml
sed -i "s/GITLAB__GITOPS__ORG/$GITLAB__GITOPS__ORG/g" $DEST/template.yaml
sed -i "s/QUAY__DEFAULT__ORG/$QUAY__DEFAULT__ORG/g" $DEST/template.yaml
sed -i "s/ARGOCD__DEFAULT__NAMESPACE/$ARGOCD__DEFAULT__NAMESPACE/g" $DEST/template.yaml
sed -i "s/ARGOCD__DEFAULT__INSTANCE/$ARGOCD__DEFAULT__INSTANCE/g" $DEST/template.yaml
sed -i "s/ARGOCD__DEFAULT__PROJECT/$ARGOCD__DEFAULT__PROJECT/g" $DEST/template.yaml
sed -i "s/GITLAB__DEFAULT__HOST/$GITLAB__DEFAULT__HOST/g" $ROOTDIR/showcase-templates.yaml