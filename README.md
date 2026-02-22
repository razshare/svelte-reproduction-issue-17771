# What is this?

This is a reproduction of https://github.com/sveltejs/svelte/issues/17771.

# How to run

The makefile contains 3 scripts which you should be able to use to debug the issue.

1. `make switch-to-latest`, switches to the latest version of svelte
1. `make switch-to-5.53.2`, switches to version `5.53.2` of svelte
1. `make build`, builds and bundles the svelte application in ssr mode

In order to reproduce the bug switch to `v5.53.2`

```sh
make switch-to-5.53.2
```

then build the project

```sh
make build
```

The resulting `dist/server/app.server.cjs` file contains an `import()` call on line 734.
