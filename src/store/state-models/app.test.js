import store from '../index.js'
 
describe("[app] model", () => {
  it("increment effect should increment given a payload", async () => {
    await store.dispatch.app.increment(3);
    const myModelData = store.getState().app.count;
    expect(myModelData).toEqual(3);
  });
});