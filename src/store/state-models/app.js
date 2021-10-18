const _initialState = {
  count: 0
}

export const app = {
  name: 'app',
  state: _initialState, // initial state
  reducers: {
    increment(state, payload) {
      console.log('updating count')
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
};

export default app;