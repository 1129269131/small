import systemConfig from '../../config/systemConfig'

const systemSetting = {
  state: {
    lang: localStorage.getItem('lang') || systemConfig.lang || 'zh',
    showRouterTitle: localStorage.getItem('showRouterTitle') || systemConfig.showRouterTitle || true
  },
  mutations: {
    SET_SYSTEM_LANG (state, lang) {
      state.lang = lang
      localStorage.setItem('lang', lang)
    },
    SET_SHOW_ROUTER_TITLE (state, showRouterTitle) {
      state.showRouterTitle = showRouterTitle
      localStorage.setItem('showRouterTitle', showRouterTitle)
    }
  },
  actions: {
    SetSystemLang ({ commit, state }, lang) {
      return new Promise((resolve) => {
        commit('SET_SYSTEM_LANG', lang)
        resolve(state.lang)
      })
    },
    SetShowRouterTitle ({ commit, state }, showRouterTitle) {
      return new Promise((resolve) => {
        commit('SET_SHOW_ROUTER_TITLE', showRouterTitle)
        resolve(state.showRouterTitle)
      })
    }
  }
}

export default systemSetting
