---
to: src/store/state-models/<%= name %>.test.js
---
import store from '../index.js'
 
describe("[<%= name %>] model", () => {
  it("increment effect should increment given a payload", async () => {
    await store.dispatch.<%= name %>.increment(3);
    const myModelData = store.getState().<%= name %>.someState;
    expect(myModelData).toEqual(3);
  });
});