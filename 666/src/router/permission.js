import router from './index'
import store from '@/store'
import routes from './routes'
import i18n from '@/lang' // 语言包
import NProgress from 'nprogress'
import 'nprogress/nprogress.css'
import { getToken, removeToken, getUserRoutes } from '@/utils/auth'

// 进度条配置
NProgress.configure({ easing: 'ease-in-out', speed: 500, showSpinner: false })
// 浏览器标题
var browserTitle = 'Vue Admin'
router.beforeEach((to, from, next) => {
  NProgress.start()
  // 根据当前语言类型 获取页面标题
  browserTitle = i18n.messages[store.state.systemSetting.lang].routes[to.meta.title] || ''

  // 判断跳转路由是否是登陆页
  if (to.name === 'Login') {
    removeToken()
    next()
  } else {
    if (store.state.user.userInfo) {
      if (to.matched.length === 0) {
        // 没有该页面路由，跳转到404页面
        if (to.name === 'Error404') next()
        else next({ name: 'Error404' })
      } else {
        // token是否存在，不存在则重新登录
        const user = getToken()
        if (!user) {
          removeToken()
          next({ name: 'Login' })
        } else {
          // next()
          if (to.meta.access) {
            next()
          } else {
            next({ name: 'Error403' })
          }
        }
      }
    } else {
      // 获取用户权限列表 并更新路由列表
      store.dispatch('GetUserInfo').then((data) => {
        router.addRoutes(getUserRoutes(routes, data.permission))
        next({ ...to, replace: true })
      }).catch(() => {
        next({ path: '/login' })
      })
    }
  }

  NProgress.done()
})

router.afterEach(() => {
  NProgress.done() // 结束Progress
  // 判断是否显示路由标题
  if (store.state.systemSetting.showRouterTitle) {
    window.document.title = browserTitle ? browserTitle + ' • Vue Admin' : 'Vue Admin'
  }
})
