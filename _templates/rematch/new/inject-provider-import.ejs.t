---
inject: true
to: src/main.jsx
before: import '\.\/index\.css'
skip_if: import { Provider } from "react-redux";
---
import { Provider } from "react-redux";
