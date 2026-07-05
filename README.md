# Saudosa Praça Onze — Landing Page

Landing page de alta conversão do lançamento **Saudosa Praça Onze (Cury)** — R. Benedito Hipólito, 160, Praça Onze, Rio de Janeiro.

## Estrutura
- `index.html` — página completa (HTML + CSS + JS em arquivo único, mobile first, sem dependências de build).

## Como publicar (GitHub Pages)
1. Envie os arquivos para `https://github.com/jorn4da/praca11`.
2. No repositório: **Settings → Pages → Branch: main / (root) → Save**.
3. A página fica em `https://jorn4da.github.io/praca11/`.

## Imagens
As imagens são servidas direto do Google Drive (folder compartilhado do material Cury), com fallback automático para o thumbnail do Drive. Para máxima performance em produção, baixe as imagens do Drive para uma pasta `assets/`, comprima em WebP (ex.: squoosh.app) e troque as URLs no `index.html`.

## Antes de rodar tráfego
- [ ] Inserir CRECI no rodapé (`[INSERIR CRECI]`).
- [ ] Configurar Google Tag Manager e Meta Pixel (bloco comentado no `<head>`); o evento `whatsapp_click` já é disparado em todos os CTAs.
- [ ] Conferir valores da tabela (sujeitos a alteração pela incorporadora).

## Leads
Todos os CTAs apontam para o WhatsApp: `https://wa.me/message/AMKKLD5NLFKAM1`.
