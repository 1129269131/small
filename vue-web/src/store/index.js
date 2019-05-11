import Vue from 'vue'
import Vuex from 'vuex'
import getters from './getters'
import systemSetting from './modules/systemSetting'
import theme from './modules/theme'
import errorLog from './modules/errorLog'
import pageTabs from './modules/pageTabs'
import user from './modules/user'

Vue.use(Vuex)

const store = new Vuex.Store({
  strict: false, // 严格模式
  modules: {
    systemSetting,
    theme, // 主题布局
    errorLog, // 错误日志
    pageTabs, // 快捷导航
    user // 用户信息
  },
  getters
})

// 开发环境中 状态管理采用严格模式
if (process.env.NODE_ENV === 'development') {
  store.strict = true
}

export default store
