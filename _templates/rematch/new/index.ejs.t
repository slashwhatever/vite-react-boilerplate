---
to: src/store/index.js
---
import { init } from "@rematch/core";
import StateModels from "./state-models/index.js";
import selectPlugin from "@rematch/select";

const store = init({ 
  models: StateModels,
  plugins: [selectPlugin()],
});

export default store;