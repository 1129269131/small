const getters = {
  lang: state => state.systemSetting.lang,
  showRouterTitle: state => state.systemSetting.showRouterTitle,
  navTheme: state => state.theme.navTheme,
  layout: state => state.theme.layout,
  contentWidth: state => state.theme.contentWidth,
  fixedHeader: state => state.theme.fixedHeader,
  autoHideHeader: state => state.theme.autoHideHeader,
  fixedSiderbar: state => state.theme.fixedSiderbar,
  errorLogs: state => state.errorLog.logs,
  pageTabs: state => state.pageTabs.tabs,
  fixedTabs: state => state.pageTabs.fixedTabs,
  cachedPages: state => state.pageTabs.cachedPages,
  activeTab: state => state.pageTabs.activeTab,
  token: state => state.user.token,
  userInfo: state => state.user.userInfo
  // permission: state => state.user.permission
}

export default getters
