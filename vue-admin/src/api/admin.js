import request from './index'

/**
 * 测试连接用的
 */
export function test() {
    const result = request({
        url: '/admin/user/test',
        method: 'post'
    })
    return result
}

/**
 * 查询用户
 */
export function queryUser(user) {
    const result = request({
        url: '/admin/user/queryUser',
        method: 'post',
        data: user
    })
    return result
}

/**
 * 删除用户
 */
export function deleteUser(user) {
    const result = request({
        url: '/admin/user/deleteUser',
        method: 'post',
        data: user
    })
    return result
}