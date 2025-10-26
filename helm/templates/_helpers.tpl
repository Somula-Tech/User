{{/*
Generate a full name for resources
*/}}
{{- define "<chartname>.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
