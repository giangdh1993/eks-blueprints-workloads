{{- define "postgresql_url" }}
{{- printf "postgres://%s:%s@coder-db:5432/%s?sslmode=disable" .Values.postgresql.global.postgresql.auth.username .Values.postgresql.global.postgresql.auth.password .Values.postgresql.global.postgresql.auth.database | b64enc}}
{{- end }}