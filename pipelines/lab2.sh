## Partie Pour aller plus loin ##
echo "Identification des dépendances obsolètes"
pnpm outdated --format json > test.json
# pnpm up --latest
## Partie Pour aller plus loin ##

echo "Installation des dépendances du projet"
pnpm install

echo "Type checking" 
pnpm type-check

echo "Analyse statique"
pnpm eslint . --ext .vue,.js,.jsx,.cjs,.mjs,.ts,.tsx,.cts,.mts --fix --ignore-path .gitignore

echo "Lancement du package créé" 
pnpm vite preview

echo "Execution des tests"
pnpm vitest