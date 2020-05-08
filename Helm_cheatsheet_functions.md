# Helm functions and examples


Note: the vaules.yaml for this is at https://github.com/DeekshithSN/Helm_charts/blob/master/Tem_functions/values.yaml 

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
      food: "Pizza"
      
 ## 2. repeat
 
 The repeat function will echo the given string the given number of times
 
 usage:
 
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-configmap
    data:
      myvalue: "Hello World"
      drink: {{ .Values.favorite.drink | repeat 5 | quote }}
 
 output: 
 
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: melting-porcup-configmap
    data:
      myvalue: "Hello World"
      drink: "coffeecoffeecoffeecoffeecoffee"
      
      
## 3. upper 

converts given string to uppercase 

usage:

    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-configmap
    data:
      myvalue: "Hello World"
      drink: {{ .Values.favorite.drink | quote }}
      food: {{ .Values.favorite.food | upper | quote }}
      
output:

      apiVersion: v1
      kind: ConfigMap
      metadata:
        name: trendsetting-p-configmap
      data:
        myvalue: "Hello World"
        drink: "coffee"
        food: "PIZZA"

## 4. lower 

converts given string to lowercase 

usage:

    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: {{ .Release.Name }}-configmap
    data:
      myvalue: "Hello World"
      drink: {{ .Values.favorite.drink | quote }}
      food: {{ .Values.favorite.food | lower | quote }}
      
output:

    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: trendsetting-p-configmap
    data:
      myvalue: "Hello World"
      drink: "coffee"
      food: "pizza"
      

## include 

The include function allows you to bring in another template, and then pass the results to other template functions.

For example, this template snippet includes a template called mytpl, then lowercases the result, then wraps that in double quotes.

    value: {{ include "mytpl" . | lower | quote }}
