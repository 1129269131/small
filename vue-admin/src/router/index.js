import Vue from 'vue'
import VueRouter from 'vue-router'
// import routes from './routes'
// const Layout = resolve => require(['@/views/basic_layout/Index'], resolve)

Vue.use(VueRouter)

const routes = [{
  name: 'Login',
  path: '/login',
  component: resolve => require(['@/views/login/Index'], resolve),
  meta: {
    title: 'Login',
    authentication: false,
    noCache: true,
    access: true
  }
},
// 主路由
{
  name: 'Index',
  path: '/',
  component: resolve => require(['@/views/dashboard/Index'], resolve),
  meta: {
    title: 'Index',
    authentication: false,
    noCache: true,
    access: true
  }
}
]

const router = new VueRouter({
  routes
})

export default router
