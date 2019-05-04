import Vue from 'vue'
import VueRouter from 'vue-router'
// import routes from './routes'

Vue.use(VueRouter)

const routes = [{
  name: 'Login',
  path: '/login',
  component: resolve => require(['@/views/login/Index'], resolve),
  meta: {
    title: 'Login'
  }
},
{
  name: 'Index',
  path: '/',
  component: resolve => require(['@/views/index/Index'], resolve),
  meta: {
    title: 'Index'
  }
},
{
  name: 'Introduction',
  path: '/introduction',
  component: resolve => require(['@/views/introduction/Index'], resolve),
  meta: {
    title: 'Introduction'
  }
},
{
  name: 'User',
  path: '/user',
  component: resolve => require(['@/views/user/Index'], resolve),
  meta: {
    title: 'User'
  },
  children: [
    {
      name: 'Center',
      path: '/user/center',
      component: resolve => require(['@/views/user/Center'], resolve),
      meta: {
        title: 'Center'
      }
    },
    {
      name: 'SetUpSafety',
      path: '/user/setUpSafety',
      component: resolve => require(['@/views/user/SetUpSafety'], resolve),
      meta: {
        title: 'SetUpSafety'
      }
    },
    {
      path: '',
      redirect: '/user/center'/*默认显示*/
    }
  ]
},
{
  name: 'Regist',
  path: '/regist',
  component: resolve => require(['@/views/regist/Index'], resolve),
  meta: {
    title: 'Regist',
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
