import Vue from 'vue'
import VueRouter from 'vue-router'
// import routes from './routes'

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
}]

const router = new VueRouter({
  routes
})

export default router
