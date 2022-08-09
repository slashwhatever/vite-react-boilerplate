---
to: src/store/state-models/<%= name %>.js
---
// define initial state
const _initialState = {
  someState: 0
}

export const <%= name %> = {
  name: '<%= name %>',
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
      dispatch.<%= name %>.increment(payload);
    },
  }),
  selectors: (slice, createSelector, hasProps) => ({
    count() {
      return slice((<%= name %>) => <%= name %>.someState);
    },
  })
};

export default <%= name %>;