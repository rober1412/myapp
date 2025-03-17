# myapp/templates/_helpers.tpl

{{- define "myapp.name" -}}
{{ .Release.Name }}
{{- end -}}

{{- define "myapp.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "myapp.labels" -}}
app.kubernetes.io/name: {{ include "myapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
app.kubernetes.io/component: {{ .Values.component }}
{{- end -}}
