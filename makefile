build:
	pnpm vite build --logLevel=info --outDir=dist/server --emptyOutDir=true --ssr=app.server.ts
	./node_modules/.bin/esbuild --bundle --outfile=dist/server/app.server.cjs --format=cjs --allow-overwrite dist/server/app.server.js

switch-to-5.53.2:
	pnpm i -D svelte@5.53.2

switch-to-latest:
	pnpm i -D svelte@latest