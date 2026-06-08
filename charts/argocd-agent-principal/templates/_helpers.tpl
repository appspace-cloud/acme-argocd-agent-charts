{{- define "argocd-agent-principal.fullname" -}}
{{- .Release.Name }}
{{- end }}

{{- define "argocd-agent-principal.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end }}
