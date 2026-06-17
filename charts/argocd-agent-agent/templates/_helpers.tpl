{{- define "argocd-agent-agent.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride }}
{{- else }}
{{- .Release.Name }}
{{- end }}
{{- end }}

{{- define "argocd-agent-agent.labels" -}}
app.kubernetes.io/component: agent
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: argocd-agent-agent
app.kubernetes.io/part-of: argocd-agent
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

{{- define "argocd-agent-agent.selectorLabels" -}}
app.kubernetes.io/component: agent
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/name: argocd-agent-agent
app.kubernetes.io/part-of: argocd-agent
{{- end }}
