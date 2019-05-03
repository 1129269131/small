import Vue from 'vue'
import $ from 'jquery'
import './utils/errorLog' // 错误日志
import App from './App.vue'
import './icons' // SVG图标库
import './plugins/element-ui/element.js'
import './plugins/iconfont/iconfont.css' // 自定义字体图标库
import echarts from 'echarts'
import i18n from './lang' // 语言包
import './filters' // 过滤器
import store from './store' // vuex状态管理
import router from './router' // router路由管理
import './router/permission' // 路由权限控制
/* 商城前台页面css */
import './assets/Amaze/assets/css/admin.css'
import './assets/Amaze/assets/css/amazeui.css'
import './assets/Amaze/assets/css/amazeui.flat.css'
import './assets/Amaze/assets/css/amazeui.flat.min.css'
import './assets/Amaze/assets/css/amazeui.min.css'
import './assets/Amaze/assets/css/app.css'

import './assets/css/addstyle.css'
import './assets/css/appstyle.css'
import './assets/css/bilstyle.css'
import './assets/css/blogstyle.css'
import './assets/css/blstyle.css'
import './assets/css/bostyle.css'
import './assets/css/cartstyle.css'
import './assets/css/cmstyle.css'
import './assets/css/colstyle.css'
import './assets/css/cpstyle.css'
import './assets/css/dlstyle.css'
import './assets/css/footstyle.css'
import './assets/css/hmstyle.css'
import './assets/css/infstyle.css'
import './assets/css/jsstyle.css'
import './assets/css/lostyle.css'
import './assets/css/newstyle.css'
import './assets/css/optstyle.css'
import './assets/css/orstyle.css'
import './assets/css/personal.css'
import './assets/css/refstyle.css'
import './assets/css/seastyle.css'
import './assets/css/skin.css'
import './assets/css/sortstyle.css'
import './assets/css/stepstyle.css'
import './assets/css/style.css'
import './assets/css/sustyle.css'
import './assets/css/systyle.css'

/* 商城前台页面js */
/* import './assets/Amaze/assets/js/amazeui.ie8polyfill.js'
import './assets/Amaze/assets/js/amazeui.ie8polyfill.min.js'
// import './assets/Amaze/assets/js/amazeui.js'
// import './assets/Amaze/assets/js/amazeui.min.js'
import './assets/Amaze/assets/js/amazeui.widgets.helper.js'
import './assets/Amaze/assets/js/amazeui.widgets.helper.min.js'
import './assets/Amaze/assets/js/app.js'
import './assets/Amaze/assets/js/handlebars.min.js'
import './assets/Amaze/assets/js/jquery.min.js' */

Vue.config.productionTip = false
Vue.prototype.$echarts = echarts
Vue.prototype.$ = $

new Vue({
    router,
    store,
    i18n,
    render: h => h(App)
}).$mount('#app')