---
to: src/components/<%= name %>.js
unless_exists: true
---
import { useState, useEffect } from 'react'
import { connect } from 'react-redux'

import store from "../store/index.js";

const { dispatch } = store;

const <%= Name %> = () => {

  return (
    <div>
      <%= name %> component
    </div>
  )
}

const selection = store.select((models) => ({
  // count: models.app.count,
}));

connect((state) => ({
  someAppState: state.app.collection,
  ...selection(state),
}))(<%= Name %>);