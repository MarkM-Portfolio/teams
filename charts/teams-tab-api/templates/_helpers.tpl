{{ define "name" }}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" -}}
{{ end }}

{{ define "chart.name" }}
{{- print .Chart.Name "-" (.Chart.Version | replace "+" "_") | trunc 63 | trimSuffix "-" -}}
{{ end }}
