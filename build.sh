#!/bin/sh
# Kjøres av Vercel ved hver publisering: setter "Sist oppdatert" til dagens dato.
D=$(TZ=Europe/Oslo date +%d.%m.%Y)
for f in index.html historier.html; do
  sed -i -E "s#<span id=\"updated\">[^<]*</span>#<span id=\"updated\">$D</span>#" "$f"
done
