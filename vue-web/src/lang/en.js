export default {
  title: 'Common Charging System',
  login: 'sign in',
  logout: 'exit',
  layoutTools: {
    themeSetting: 'Page style setting',
    darkTheme: 'Dark style',
    lightTheme: 'Light style',
    navMode: 'Navigation Mode',
    sideMenuLayout: 'Side Menu Layout',
    topMenuLayout: 'Top Menu Layout',
    contentWidth: 'Content Width',
    select: 'Select',
    fluidWidth: 'Fluid',
    fixedWith: 'Fixed',
    fixedHeader: 'Fixed Header',
    needFixedHeader: 'Works when Hidden Header is enabled',
    scrollHideHeader: 'Hidden Header when scrolling',
    needSideMenuLayout: 'Works on Side Menu Layout',
    fixedSideMenu: 'Fixed Sidebar',
    copy: 'Copy Setting',
    copyInfo: 'copy success，please replace defaultSettings in config/themeConfig.js',
    productionHint: 'Setting panel shows in development environment only, please manually modify'
  },
  prompt: {
    usernamePlaceholder: 'Username',
    passwordPlaceholder: 'Password',
    usernameRequired: 'Username is required',
    passwordRequired: 'Password is required',
    passwordInvalid: 'Password must be between 6 and 16 characters'
  },
  lang: {
    chinese: 'Chinese',
    english: 'English'
  },
  // 路由
  routes: {
    Dashboard: 'Dashboard',
    Example: 'Examples',
    BMapExample: 'Baidu Map',
    MapboxExample: 'Mapbox',
    BasicSearchExample: 'Basic Search',
    CardTableExample: 'Card Table',
    BasicFormExample: 'Basic Form',
    StepFormExample: 'Step Form',
    System: 'System Related',
    SystemConfig: 'System Config',
    Auth: 'Auth Config',
    Error: 'Error Pages',
    CommonError403: 'Error 403',
    CommonError404: 'Error 404',
    CommonError500: 'Error 500',
    Error403: 'Error 403',
    Error404: 'Error 404',
    Error500: 'Error 500'
  },
  errorPage: {
    backToDashboard: 'Back To Dashboard',
    error403Info: 'Sorry, you have no access to this page',
    error404Info: 'Sorry, the page you visited does not exist',
    error500Info: 'Sorry, the server is wrong'
  }
}
