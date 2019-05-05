import { param2Obj } from '@/utils'
import Mock from 'mockjs'

const userMap = {
  admin: {
    code: 0,
    roles: ['admin'],
    token: 'admin',
    introduction: '超级管理员',
    avatar: Mock.Random.image('200x100'), // 'https://raw.githubusercontent.com/mgbq/nx-admin/master/src/assets/img/home/logo.png',
    name: 'Super Admin',
    permission: [
      { id: '1', name: 'Dashboard', path: '/dashboard/index', iconClass: 'home', access: true },
      {
        id: '2',
        name: 'Example',
        iconClass: 'container',
        access: false,
        subMenu: [
          { id: '21', name: 'BMapExample', path: '/example/bmap_example', access: true },
          { id: '22', name: 'MapboxExample', path: '/example/mapbox_example', access: true },
          { id: '23', name: 'BasicSearchExample', path: '/example/basic_search_example', access: true },
          { id: '24', name: 'CardTableExample', path: '/example/card_table_example', access: true },
          { id: '25', name: 'BasicFormExample', path: '/example/basic_form_example', access: true },
          { id: '26', name: 'StepFormExample', path: '/example/step_form_example', access: true }
        ]
      },
      {
        id: '3',
        name: 'Error',
        iconClass: 'error',
        access: false,
        subMenu: [
          { id: '31', name: 'Error403', path: '/error/403', access: true },
          { id: '32', name: 'Error404', path: '/error/404', access: true },
          { id: '33', name: 'Error500', path: '/error/500', access: true }
        ]
      },
      {
        id: '4',
        name: 'System',
        iconClass: 'setting',
        access: true,
        subMenu: [
          { id: '41', name: 'SystemConfig', path: '/system/system_config', access: true },
          { id: '42', name: 'Auth', path: '/system/auth', access: true }
        ]
      }
    ]
  },
  editor: {
    code: 0,
    roles: ['editor'],
    token: 'editor',
    introduction: '编辑',
    avatar: 'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',
    name: 'Normal Editor'
  }
}

export default {
  LoginByUsername: config => {
    const { username } = JSON.parse(config.body)
    return userMap[username]
  },
  GetUserInfo: config => {
    const { token } = param2Obj(config.url)
    if (userMap[token]) {
      return userMap[token]
    }
    return false
  },
  Logout: () => {
    return {
      code: 0,
      Message: 'success'
    }
  }
}
