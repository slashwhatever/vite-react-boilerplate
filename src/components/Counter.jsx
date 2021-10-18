import { useState, useEffect } from 'react'
import { connect } from 'react-redux'

import store from "../store/index.js";
const { dispatch } = store;

import useDebounce from '../hooks/useDebounce.js'

const Counter = () => {
  const [count, setCount] = useState(0);
  
  const debouncedCount = useDebounce(count);

  useEffect(() => {
    if ( debouncedCount ) dispatch.app.increment(debouncedCount);
  }, [debouncedCount])

  const handleClick = (e) => {
    setCount((count) => count + 1);
  };

  return (
    <p>
      <button type="button" onClick={handleClick}>
        count is: {count}
      </button>
    </p>
  )
}

export default connect(
  state => ({
    count: state.app.count,
  }), 
  dispatch => ({
    increment: (count) => dispatch.count.increment(count),
  })
)(Counter);