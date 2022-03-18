# Swap dependencies between node and rn

wrapper is the library that needs another dependency, but it changes depending on the target platform.

the package.json is as follows:

```json
{
  "name": "wrapper",
  "version": "1.0.0",
  "main": "index.js",
  "type": "module",
  "license": "MIT",
  "dependencies": {
    "node-hello": "../node-hello",
    "node-injected": "../node-injected"
  },
  "react-native": {
    "node-hello": "node-injected"
  }
}
```

We need to install both node, node-hello, and react-native, node-injected, specific dependency.
Then with the react-native key we can specify that `node-hello` should point to `node-injected` for a react native environment

## test

run in root:

```sh
./run.sh
```
