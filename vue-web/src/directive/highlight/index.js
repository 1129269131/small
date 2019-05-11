import highlight from './highlight'

// 代码高亮效果

const install = function (Vue) {
  Vue.directive('highlight', highlight)
}

if (window.Vue) {
  window.highlight = highlight
  Vue.use(install); // eslint-disable-line
}

highlight.install = install
export default highlight
