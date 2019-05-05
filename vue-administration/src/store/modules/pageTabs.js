const pageTabs = {
  state: {
    fixedTabs: [],
    tabs: [],
    cachedPages: [],
    activeTab: ''
  },
  mutations: {
    ADD_FIXED_PAGE_TAB: (state, tab) => {
      if (state.fixedTabs.findIndex(item => item.path === tab.path) === -1) {
        state.fixedTabs.push(tab)
      }
      if (state.fixedTabs.length === 1) {
        state.activeTab = tab.path
      }
      if (!tab.meta.noCache && state.cachedPages.findIndex(item => item === tab.name) === -1) {
        state.cachedPages.push(tab.name)
      }
    },
    ADD_PAGE_TAB: (state, tab) => {
      if (state.tabs.findIndex(item => item.path === tab.path) === -1) {
        if (state.fixedTabs.findIndex(item => item.path === tab.path) === -1) {
          state.tabs.push(tab)
        }
      }
      // // 开发时可注释该条件语句，以防影响热更新
      // if (!tab.meta.noCache && state.cachedPages.findIndex(item => item === tab.name) === -1) {
      //   state.cachedPages.push(tab.name)
      // }
      state.activeTab = tab.path
    },
    DELETE_PAGE_TAB: (state, tab) => {
      state.tabs.splice(state.tabs.findIndex(item => item.path === tab.path), 1)
      state.cachedPages.splice(state.cachedPages.findIndex(item => item === tab.name), 1)
    },
    DELETE_OTHER_PAGE_TAB: (state, tab) => {
      if (state.tabs.findIndex(item => item.path === tab.path) !== -1) {
        state.tabs = []
        state.tabs.push(tab)
        state.cachedPages = []
        if (!tab.meta.noCache && state.cachedPages.findIndex(item => item === tab.name) === -1) {
          state.cachedPages.push(tab.name)
        }
      }
      if (state.fixedTabs.findIndex(item => item.path === tab.path) !== -1) {
        state.tabs = []
        state.cachedPages = []
        for (const item of state.fixedTabs) {
          if (!item.meta.noCache && state.cachedPages.findIndex(obj => obj === item.name) === -1) {
            state.cachedPages.push(item.name)
          }
        }
      }
    },
    DELETE_ALL_PAGE_TAB: (state) => {
      state.tabs = []
      state.cachedPages = []
      if (state.fixedTabs.findIndex(item => item.path === state.activeTab) === -1) {
        state.activeTab = state.fixedTabs[state.fixedTabs.length - 1].path
        if (!state.fixedTabs[state.fixedTabs.length - 1].meta.noCache && state.cachedPages.findIndex(item => item === state.fixedTabs[state.fixedTabs.length - 1].name) === -1) {
          state.cachedPages.push(state.fixedTabs[state.fixedTabs.length - 1].name)
        }
      }
    },
    SET_ACTIVE_TAB: (state, path) => {
      state.activeTab = path
    }
  },
  actions: {
    setActiveTab ({ commit, state }, path) {
      return new Promise((resolve) => {
        commit('SET_ACTIVE_TAB', path)
        resolve(state.activeTab)
      })
    },
    addFixedPageTab ({ commit }, tab) {
      commit('ADD_FIXED_PAGE_TAB', tab)
    },
    addPageTab ({ commit }, tab) {
      commit('ADD_PAGE_TAB', tab)
    },
    deletPageTab ({ commit, state }, tab) {
      return new Promise((resolve) => {
        commit('DELETE_PAGE_TAB', tab)
        resolve([...state.tabs])
      })
    },
    deletOtherPageTab ({ commit, state }, tab) {
      return new Promise((resolve) => {
        commit('DELETE_OTHER_PAGE_TAB', tab)
        resolve(state.activeTab)
      })
    },
    deletAllPageTab ({ commit, state }) {
      return new Promise((resolve) => {
        commit('DELETE_ALL_PAGE_TAB')
        resolve(state.activeTab)
      })
    }
  }
}

export default pageTabs
