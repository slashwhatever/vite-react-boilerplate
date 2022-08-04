---
to: src/context/<%= name %>-provider.js
---
import React, { useEffect, useState } from 'react'

export const <%= Name %>Context = React.createContext();

function <%= Name %>Provider({ children }) {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(undefined);

  const [<%= name %>, set<%= Name %>] = useState();
  
  const update<%= Name %> = (<%= name %>) => {
    set<%= Name %>(<%= name %>)
  }

  useEffect(() => {
    
    const fetchData = async () => {
      setIsLoading(true);
  
      const response = await fetch(`https://localhost:3000/api/<%= name %>`);
  
      const json = await response.json();
  
      setIsLoading(false);      
      set<%= Name %>(json);
    }

    fetchData()
      // make sure to catch any error
      .catch(error => {
        setIsLoading(false);
        setError(error)
        console.error(error)
      })
    
  }, [<%= name %>])

  const value = { <%= name %>, isLoading, error, update<%= Name %> };

  return <<%= Name %>Context.Provider value={value}>{children}</<%= Name %>Context.Provider>; 
}


function use<%= Name %>() {
  const context = React.useContext(<%= Name %>Context)
  if (context === undefined) {
    throw new Error('use<%= Name %> must be used within a <%= Name %>Provider')
  }
  return context
}

export { <%= Name %>Provider, use<%= Name %> }

