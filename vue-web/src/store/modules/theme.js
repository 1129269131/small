import themeConfig from '../../config/themeConfig'

const theme = {
  state: {
    navTheme: themeConfig.navTheme,
    layout: themeConfig.layout,
    contentWidth: themeConfig.contentWidth,
    fixedHeader: themeConfig.fixedHeader,
    autoHideHeader: themeConfig.autoHideHeader,
    fixedSiderbar: themeConfig.fixedSiderbar
  },
  mutations: {
    SET_NAV_THEME: function (state, navTheme) {
      state.navTheme = navTheme
    },
    SET_LAYOUT: function (state, layout) {
      state.layout = layout
    },
    SET_CONTENT_WIDTH: function (state, contentWidth) {
      state.contentWidth = contentWidth
    },
    SET_FIXED_HEADER: function (state, fixedHeader) {
      state.fixedHeader = fixedHeader
    },
    SET_AUTO_HIDE_HEADER: function (state, autoHideHeader) {
      state.autoHideHeader = autoHideHeader
    },
    SET_FIXED_SIDERBAR: function (state, fixedSiderbar) {
      state.fixedSiderbar = fixedSiderbar
    }
  },
  actions: {
    SetNavTheme ({ commit, state }, navTheme) {
      return new Promise((resolve) => {
        commit('SET_NAV_THEME', navTheme)
        resolve(state.navTheme)
      })
    },
    SetLayout ({ commit, state }, layout) {
      return new Promise((resolve) => {
        commit('SET_LAYOUT', layout)
        resolve(state.layout)
      })
    },
    SetContentWidth ({ commit, state }, contentWidth) {
      return new Promise((resolve) => {
        commit('SET_CONTENT_WIDTH', contentWidth)
        resolve(state.contentWidth)
      })
    },
    SetFixedHeader ({ commit, state }, fixedHeader) {
      return new Promise((resolve) => {
        commit('SET_FIXED_HEADER', fixedHeader)
        resolve(state.fixedHeader)
      })
    },
    SetAutoHideHeader ({ commit, state }, autoHideHeader) {
      return new Promise((resolve) => {
        commit('SET_AUTO_HIDE_HEADER', autoHideHeader)
        resolve(state.autoHideHeader)
      })
    },
    SetFixedSiderbar ({ commit, state }, fixedSiderbar) {
      return new Promise((resolve) => {
        commit('SET_FIXED_SIDERBAR', fixedSiderbar)
        resolve(state.fixedSiderbar)
      })
    }
  }
}

export default theme
