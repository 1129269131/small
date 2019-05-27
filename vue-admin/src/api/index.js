import axios from 'axios'
import { Message } from 'element-ui'
import store from '../store'
import router from '../router'
import { getToken } from '@/utils/auth'

// 创建axios实例
const service = axios.create({
    baseURL: 'api' // api的base_url window.configs.apiUrl
        //   timeout: 5000 // 请求超时时间
})

// request拦截器  appId, timestamp, sign, nonce
service.interceptors.request.use(config => {
    if (store.getters.token) {
        config.headers['access_token'] = getToken() // 让每个请求携带自定义token 请根据实际情况自行修改
    }
    return config
}, error => {
    Promise.reject(error)
})

// respone拦截器
/* service.interceptors.response.use(
    response => {
        const res = response.data
            // // 字节流结果, 根据接口返回code是否200选用
            // if (response.request.responseType === 'blob') {
            //   return response
            // }
        if (res.code !== 0) {
            if (res.code === 5) { // token失效
                store.dispatch('FedLogOut').then(() => { location.reload() })
            } else {
                return Promise.reject(res)
            }
        } else {
            return response.data
        }
    },
    error => {
        if (error && error.response) {
            switch (error.response.status) {
                case 400:
                    error.message = '请求错误(400)'
                    break
                case 401:
                    error.message = '未授权，请重新登录(401)'
                    break
                case 403:
                    error.message = '拒绝访问(403)'
                    router.replace({ name: 'error403' })
                    break
                case 404:
                    error.message = '请求出错(404)'
                    router.replace({ name: 'error404' })
                    break
                case 408:
                    error.message = '请求超时(408)'
                    break
                case 500:
                    error.message = '服务器错误(500)'
                    router.replace({ name: 'error500' })
                    break
                case 501:
                    error.message = '服务未实现(501)'
                    break
                case 502:
                    error.message = '网络错误(502)'
                    break
                case 503:
                    error.message = '服务不可用(503)'
                    break
                case 504:
                    error.message = '网络超时(504)'
                    break
                case 505:
                    error.message = 'HTTP版本不受支持(505)'
                    break
                default:
                    error.message = `连接出错(${error.response.status})!`
            }
        } else {
            error.message = '连接服务器失败!'
        }
        Message({
            message: error.message,
            type: 'error',
            duration: 5 * 1000
        })
        return Promise.reject(error)
    }
) */

export default service