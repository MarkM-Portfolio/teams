{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{ define "chart.name" }}
{{- print .Chart.Name "-" (.Chart.Version | replace "+" "_") | trunc 63 | trimSuffix "-" -}}
{{ end }}

