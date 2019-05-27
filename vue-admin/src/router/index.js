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
  name: 'Lay',
  path: '/lay',
  component: resolve => require(['@/views/layOut/Index'], resolve),
  meta: {
    title: 'Lay'
  },children: [
    {
      name: 'data',
      path: '/lay/data',
      component: resolve => require(['@/views/dashboard/Index'], resolve),
      meta: {
        title: 'data'
      }
    },
    {
      name: 'User',
      path: '/lay/user',
      component: resolve => require(['@/views/user/Index'], resolve),
      meta: {
        title: 'User'
      }
    },
    {
      name: 'Goods',
      path: '/lay/goods',
      component: resolve => require(['@/views/goods/Index'], resolve),
      meta: {
        title: 'Goods'
      }
    },
    {
      name: 'Order',
      path: '/lay/order',
      component: resolve => require(['@/views/order/Index'], resolve),
      meta: {
        title: 'Order'
      }
    },
    {
      name: 'Category',
      path: '/lay/category',
      component: resolve => require(['@/views/category/Index'], resolve),
      meta: {
        title: 'Category'
      }
    },
    {
      path: '',
      redirect: '/lay/data'/*默认显示*/
    }
  ]
}
]

const router = new VueRouter({
  routes
})

export default router
