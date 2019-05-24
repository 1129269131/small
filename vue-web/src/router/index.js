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
  name: 'Test',
  path: '/test',
  component: resolve => require(['@/views/temp/test'], resolve),
  meta: {
    title: 'Test'
  }
},
{
  name: 'Shopcart',
  path: '/shopcart',
  component: resolve => require(['@/views/shopcart/Index'], resolve),
  meta: {
    title: 'Shopcart'
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
      name: 'Information',
      path: '/user/information',
      component: resolve => require(['@/views/user/Information'], resolve),
      meta: {
        title: 'Information'
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
      name: 'Address',
      path: '/user/address',
      component: resolve => require(['@/views/user/Address'], resolve),
      meta: {
        title: 'Address'
      }
    },
    {
      name: 'Order',
      path: '/user/order',
      component: resolve => require(['@/views/user/Order'], resolve),
      meta: {
        title: 'Order'
      }
    },
    {
      name: 'Change',
      path: '/user/change',
      component: resolve => require(['@/views/user/Change'], resolve),
      meta: {
        title: 'Change'
      }
    },
    {
      name: 'Coupon',
      path: '/user/coupon',
      component: resolve => require(['@/views/user/Coupon'], resolve),
      meta: {
        title: 'Coupon'
      }
    },
    {
      name: 'Bonus',
      path: '/user/bonus',
      component: resolve => require(['@/views/user/Bonus'], resolve),
      meta: {
        title: 'Bonus'
      }
    },
    {
      name: 'Bill',
      path: '/user/bill',
      component: resolve => require(['@/views/user/Bill'], resolve),
      meta: {
        title: 'Bill'
      }
    },
    {
      name: 'Collection',
      path: '/user/collection',
      component: resolve => require(['@/views/user/Collection'], resolve),
      meta: {
        title: 'Collection'
      }
    },
    {
      name: 'Foot',
      path: '/user/foot',
      component: resolve => require(['@/views/user/Foot'], resolve),
      meta: {
        title: 'Foot'
      }
    },
    {
      name: 'Comment',
      path: '/user/comment',
      component: resolve => require(['@/views/user/Comment'], resolve),
      meta: {
        title: 'Comment'
      }
    },
    {
      name: 'News',
      path: '/user/news',
      component: resolve => require(['@/views/user/News'], resolve),
      meta: {
        title: 'News'
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
