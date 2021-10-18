import { init } from "@rematch/core";
import StateModels from "./state-models/index.js";
const store = init({ 
  models: StateModels
});
export default store;