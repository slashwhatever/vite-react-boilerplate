---
to: src/store/state-models/app.js
---
// define initial state
const _initialState = {
  count: 0
}

export const app = {
  name: 'app',
  state: _initialState,
  reducers: {
    increment(state, payload) {
      return {
        ...state,
        count: payload
      };
    },
  },
  effects: (dispatch) => ({
    async soSomethingAsync(payload, rootState) {
      await new Promise((resolve) => setTimeout(resolve, 1000));
      dispatch.app.increment(payload);
    },
  }),
  selectors: (slice, createSelector, hasProps) => ({
    count() {
      return slice((app) => app.count);
    },
  })
};

export default app;