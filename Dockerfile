# ---- ベースイメージ ----
FROM python:3.12-slim

# ---- 作業ディレクトリ ----
WORKDIR /app

# ---- アプリを配置 ----
COPY index.html .

# ---- コンテナ起動時に PORT を受け取る ----
# （--env-file で渡された値 > ここでのデフォルト）
ENV PORT=8080

# ---- 実行コマンド ----
CMD ["sh", "-c", "python -m http.server $PORT"]
