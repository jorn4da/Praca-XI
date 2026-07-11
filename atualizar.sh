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

# Limpeza única: remove travas de git e backup temporário, se existirem
rm -f "$REPO/.git/"*.lock 2>/dev/null || true
if [ -f "$REPO/index.html.bak" ]; then rm -f "$REPO/index.html.bak"; fi
git -C "$REPO" rm --cached --ignore-unmatch index.html.bak >/dev/null 2>&1 || true

git -C "$REPO" add -A

if git -C "$REPO" diff --cached --quiet; then
  echo "ℹ️  Nenhuma alteração nova para commitar."
else
  git -C "$REPO" commit -m "$MSG"
fi

# Publica sempre (envia também commits ainda não enviados, se houver)
git -C "$REPO" push origin main
echo "✅ Site atualizado no GitHub com sucesso."
