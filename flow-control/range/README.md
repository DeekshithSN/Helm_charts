```
{{- range $key, $value := $.Values.env }}
   - name: {{ $key }}
     value: {{ $value }}
{{- end }}
```

values.yaml 

```
env:
  VERSION: v1.0.0
  servicename: nginx

```
