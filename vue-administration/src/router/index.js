import Vue from 'vue'
import VueRouter from 'vue-router'
// import routes from './routes'

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
// 错误页面
{
  name: 'Error',
  path: '/error',
  component: resolve => require(['@/views/basic_layout/Index'], resolve),
  meta: {
    title: 'Error',
    authentication: false,
    cache: true,
    access: true
  },
  children: [
    {
      name: 'Error403',
      path: '403',
      component: resolve => require(['@/views/error_pages/403'], resolve),
      meta: {
        title: 'Error403',
        authentication: false,
        cache: true,
        access: true
      }
    },
    {
      name: 'Error404',
      path: '404',
      component: resolve => require(['@/views/error_pages/404'], resolve),
      meta: {
        title: 'Error404',
        authentication: false,
        cache: true,
        access: true
      }
    },
    {
      name: 'Error500',
      path: '500',
      component: resolve => require(['@/views/error_pages/500'], resolve),
      meta: {
        title: 'Error500',
        authentication: false,
        cache: true,
        access: true
      }
    }
  ]
},
{
  name: 'CommonError403',
  path: '/403',
  component: resolve => require(['@/views/error_pages/403'], resolve),
  meta: {
    title: 'Error403',
    authentication: false,
    noCache: true,
    access: true
  }
},
{
  name: 'CommonError404',
  path: '/404',
  component: resolve => require(['@/views/error_pages/404'], resolve),
  meta: {
    title: 'Error404',
    authentication: false,
    noCache: true,
    access: true
  }
},
{
  name: 'CommonError500',
  path: '/500',
  component: resolve => require(['@/views/error_pages/500'], resolve),
  meta: {
    title: 'Error500',
    authentication: false,
    noCache: true,
    access: true
  }
}]

const router = new VueRouter({
  routes
})

export default router
