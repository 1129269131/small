import request from './index'

export function login(username, password) {
    const result = request({
        url: '/auth/login?username=' + username + '&password=' + password,
        method: 'post'
    })
    return result
}

export function register(username, password) {
    const result = request({
        url: '/item/user/register',
        method: 'post',
        data: {
            username,
            password
        }
    })
    return result
}

export function logout() {
    return request({
        url: '/user/logout',
        method: 'post'
    })
}

export function getUserInfo(token) {
    return request({
        url: '/user/info',
        method: 'get',
        params: { token }
    })
}

export function getUserPermission(token) {
    return request({
        url: '/user/getUserPermission',
        method: 'get',
        params: { token }
    })
}