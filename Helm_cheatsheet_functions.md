# Helm functions and examples

 ## 1. quote 
 
 wraps with double quotes to given string, if you give pizza as input the output will be "pizza"
 
 usage:
 
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-configmap
    data:
      myvalue: "Hello World"
      drink: {{ quote .Values.favorite.drink }}
      food: {{ quote .Values.favorite.food }}

 output:
 
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: trendsetting-p-configmap
    data:
      myvalue: "Hello World"
      drink: "coffee"
      food: "PIZZA"
      
 ## 2. repeat
 
 
