echo "Installing dependencies...";
yarn 2>&1 > /dev/null

echo "Compiling (Development)...";
yarn run webpack --mode=development --stats-preset=none 2>&1 > /dev/null

echo "Running (order should be B then C)...";
node ./dist/main.js

echo "Compiling (Production)...";
yarn run webpack --mode=production --stats-preset=none 2>&1 > /dev/null

echo "Running (order should be B then C)...";
node ./dist/main.js

echo "If you remove any of the imports the order is as expected";
