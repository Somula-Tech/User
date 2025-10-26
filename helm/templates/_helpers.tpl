{{/* ----------------------------------------------------------------------
   HELPER FUNCTIONS FOR HELM CHART
   ---------------------------------------------------------------------- */}}

{{/* Base chart name (can be overridden) */}}
{{- define "myapp.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Full name: ReleaseName + ChartName */}}
{{- define "myapp.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name (include "myapp.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/* Short name */}}
{{- define "myapp.shortname" -}}
{{- include "myapp.name" . | trunc 12 | trimSuffix "-" -}}
{{- end -}}

{{/* Common labels */}}
{{- define "myapp.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "myapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}
