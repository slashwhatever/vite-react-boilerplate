---
inject: true
to: src/main.jsx
before: import '\.\/index\.css'
skip_if: import store from "./store/index.js";
---
import store from "./store/index.js";

