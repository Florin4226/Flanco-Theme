php /var/www/pterodactyl/artisan down
cd /var/www/pterodactyl
rm -rf tailwind.config.js
wget https://raw.githubusercontent.com/Florinacio/Flanco-Theme/main/tailwind.config.js
cd
cd /var/www/pterodactyl/resources/scripts/components/server/
rm -rf StatGraphs.tsx
wget https://raw.githubusercontent.com/Florinacio/Flanco-Theme/main/StatGraphs.tsx
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt install -y nodejs
npm i -g yarn
cd /var/www/pterodactyl
yarn install
yarn add @emotion/react
yarn build:production
php /var/www/pterodactyl/artisan up
