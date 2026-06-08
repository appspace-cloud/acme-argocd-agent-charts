{{- define "argocd-agent-agent.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride }}
{{- else }}
{{- .Release.Name }}
{{- end }}
{{- end }}
