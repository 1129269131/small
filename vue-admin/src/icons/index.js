import Vue from 'vue'
import BaseSvgIcon from '@/components/BaseSvgIcon/Index'

// 全局注册
Vue.component('base-svg-icon', BaseSvgIcon)

const requireAll = requireContext => requireContext.keys().map(requireContext)
const req = require.context('./svg', false, /\.svg$/)
requireAll(req)
