export default {
  title: '智慧商城后台管理系统',
  login: '登录',
  logout: '退出',
  layoutTools: {
    themeSetting: '整体风格设置',
    darkTheme: '暗色菜单风格',
    lightTheme: '亮色菜单风格',
    navMode: '导航模式',
    sideMenuLayout: '侧边菜单布局',
    topMenuLayout: '顶部菜单布局',
    contentWidth: '内容区域宽度',
    select: '请选择',
    fluidWidth: '流式',
    fixedWith: '定宽',
    fixedHeader: '固定 Header',
    needFixedHeader: '固定 Header 时可配置',
    scrollHideHeader: '下滑时隐藏 Header',
    needSideMenuLayout: '侧边菜单布局时可配置',
    fixedSideMenu: '固定侧边菜单',
    copy: '拷贝设置',
    copyInfo: '拷贝成功，请到 config/themeConfig.js 中替换默认配置',
    productionHint: '配置栏只在开发环境用于预览，生产环境不会展现，请拷贝后手动修改配置文件'
  },
  prompt: {
    usernamePlaceholder: '请输入用户名',
    passwordPlaceholder: '请输入密码',
    usernameRequired: '请输入用户名',
    passwordRequired: '请输入密码',
    passwordInvalid: '密码为6-16位字符串'
  },
  lang: {
    chinese: '中文',
    english: '英文'
  },
  // 路由
  routes: {
    Dashboard: '首页',
    Example: '人员管理',
    BMapExample: '百度地图',
    MapboxExample: 'Mapbox',
    BasicSearchExample: '用户管理',
    CardTableExample: '卡片表格',
    BasicFormExample: '基础表单',
    StepFormExample: '分步表单',
    System: '系统相关',
    SystemConfig: '系统设置',
    Auth: '权限设置',
    Error: '错误页面',
    CommonError403: '403错误',
    CommonError404: '404错误',
    CommonError500: '500错误',
    Error403: '403错误',
    Error404: '404错误',
    Error500: '500错误'
  },
  errorPage: {
    backToDashboard: '返回首页',
    error403Info: '抱歉，你无权访问该页面',
    error404Info: '抱歉，你访问的页面不存在',
    error500Info: '抱歉，服务器出错了'
  }
}
