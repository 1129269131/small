import Vue from 'vue'
import './utils/errorLog' // 错误日志
import App from './App.vue'
import './assets/less/common.less'
import './icons' // SVG图标库
import './plugins/element-ui/element.js'
import './plugins/iconfont/iconfont.css' // 自定义字体图标库
import echarts from 'echarts'
import i18n from './lang' // 语言包
import './filters' // 过滤器
import store from './store' // vuex状态管理
import router from './router' // router路由管理
import './router/permission' // 路由权限控制

Vue.config.productionTip = false
Vue.prototype.$echarts = echarts

new Vue({
    router,
    store,
    i18n,
    render: h => h(App)
}).$mount('#app')