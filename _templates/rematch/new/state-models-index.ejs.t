---
to: src/store/state-models/index.js
---
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// Import State Models here

// App.
import { default as AppModel } from './app';

// Other models go here


// export named and default
export {
  AppModel
}

// add new elements to your StateModel here
const StateModel = {
  app: AppModel
}

export default StateModel
