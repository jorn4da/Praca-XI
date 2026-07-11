#!/usr/bin/env bash
# ------------------------------------------------------------
# Atualiza o site Saudosa Praça Onze no GitHub (jorn4da/Praca-XI)
# SEM precisar entrar na pasta do projeto.
#
# Uso (rode de qualquer lugar do terminal):
#   bash "/Users/aritan/Claude/Projects/Programador | SITE E LANDING PAGE/praca11/atualizar.sh" "sua mensagem"
#
# Se não passar mensagem, usa uma padrão com data/hora.
# ------------------------------------------------------------
set -e

REPO="/Users/aritan/Claude/Projects/Programador | SITE E LANDING PAGE/praca11"
MSG="${1:-Atualização do site em $(date '+%d/%m/%Y %H:%M')}"

echo "📂 Repositório: $REPO"
git -C "$REPO" add -A

if git -C "$REPO" diff --cached --quiet; then
  echo "ℹ️  Nada novo para publicar. Site já está atualizado."
  exit 0
fi

git -C "$REPO" commit -m "$MSG"
git -C "$REPO" push origin main
echo "✅ Site atualizado no GitHub com sucesso."
