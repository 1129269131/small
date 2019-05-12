const Layout = resolve => require(['@/views/basic_layout/Index'], resolve)

export default [
  // 主路由
  {
    path: '/',
    component: Layout,
    redirect: '/dashboard/index',
    meta: {
      title: '',
      authentication: false
    }
  },
  // 首页
  {
    path: '/dashboard',
    component: Layout,
    meta: {
      title: 'Dashboard',
      authentication: false
    },
    children: [
      {
        name: 'Dashboard',
        path: 'index',
        component: resolve => require(['@/views/dashboard/Index'], resolve),
        meta: {
          title: 'Dashboard',
          authentication: false
        }
      }
    ]
  },
  // 示例页面
  {
    name: 'Example',
    path: '/example',
    component: Layout,
    meta: {
      title: 'Example',
      authentication: false
    },
    children: [
      {
        name: 'BMapExample',
        path: 'bmap_example',
        component: resolve => require(['@/views/example/BMap'], resolve),
        meta: {
          title: 'BMapExample',
          authentication: true
        }
      },
      {
        name: 'MapboxExample',
        path: 'mapbox_example',
        component: resolve => require(['@/views/example/Mapbox'], resolve),
        meta: {
          title: 'MapboxExample',
          authentication: true
        }
      },
      {
        name: 'BasicSearchExample',
        path: 'basic_search_example',
        component: resolve => require(['@/views/example/BasicSearch'], resolve),
        meta: {
          title: 'BasicSearchExample',
          authentication: true
        }
      },
      {
        name: 'CardTableExample',
        path: 'card_table_example',
        component: resolve => require(['@/views/example/CardTable'], resolve),
        meta: {
          title: 'CardTableExample',
          authentication: true
        }
      },
      {
        name: 'BasicFormExample',
        path: 'basic_form_example',
        component: resolve => require(['@/views/example/BasicForm'], resolve),
        meta: {
          title: 'BasicFormExample',
          authentication: true
        }
      },
      {
        name: 'StepFormExample',
        path: 'Step_form_example',
        component: resolve => require(['@/views/example/StepForm'], resolve),
        meta: {
          title: 'StepFormExample',
          authentication: true
        }
      }
    ]
  },
  // 系统配置
  {
    name: 'System',
    path: '/system',
    component: Layout,
    meta: {
      title: 'System',
      authentication: false
    },
    children: [
      {
        name: 'SystemConfig',
        path: 'system_config',
        component: resolve => require(['@/views/system_config/Index'], resolve),
        meta: {
          title: 'SystemConfig',
          authentication: true
        }
      },
      {
        name: 'Auth',
        path: 'auth',
        component: resolve => require(['@/views/system_config/Auth'], resolve),
        meta: {
          title: 'Auth',
          authentication: true
        }
      }
    ]
  }
]
