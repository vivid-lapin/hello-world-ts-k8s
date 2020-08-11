# hello-world-ts-k8s

Basic Koa + TypeScript node server on k8s (okteto).

## requirements

- [Okteto Account](https://okteto.com)
- [Okteto CLI](https://okteto.com/docs/getting-started/installation)
- [kubectl](https://kubernetes.io/ja/docs/tasks/tools/install-kubectl/)

## dev

Please login to okteto beforehand(`okteto login`).

- clone this repo && cd
- replace some string in `k8s.yml`, `Makefile`.
  - `registry.cloud.okteto.net/ci7lus/hello-world:latest` -> `registry.cloud.okteto.net/{your-okteto-namespace}/hello-world:latest`
- `yarn`
- `okteto up`
  - `yarn`
  - `yarn dev`
  - Coding freedom!
- `okteto push`

## deploy

- `make build`
- `make deploy`
