{{/*
Expand the name of the chart.
*/}}
{{- define "payments.fullname" -}}
{{ include "payments.name" . }}-{{ .Release.Name }}
{{- end }}

{{/*
Expand the name of the chart.
*/}}
{{- define "payments.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "payments.labels" -}}
app.kubernetes.io/name: {{ include "payments.name" . }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
ServiceAccount name
*/}}
{{- define "payments.serviceAccountName" -}}
{{- if .Values.serviceAccount.name }}
{{ .Values.serviceAccount.name }}
{{- else }}
{{ include "payments.fullname" . }}
{{- end }}
{{- end }}

