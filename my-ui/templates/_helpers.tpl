{{- define "labels.major" -}}
appname: nginx
department: testing
type: frontend
namespace: {{ .Release.Namespace }}
{{- end }}