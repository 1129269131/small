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


/**
 * 查询sku
 */
export function querySku(sku) {
    const result = request({
        url: '/admin/querySku',
        method: 'post',
        data: sku
    })
    return result
}

/**
 * 删除sku
 */
export function deleteSku(sku) {
    const result = request({
        url: '/admin/deleteSku',
        method: 'post',
        data: sku
    })
    return result
}

/**
 * 查询订单详情
 */
export function queryOrderDetail(ordersDetail) {
    const result = request({
        url: '/admin/orderDetail/queryOrderDetail',
        method: 'post',
        data: ordersDetail
    })
    return result
}

/**
 * 删除订单
 */
export function deleteOrdersDetail(ordersDetail) {
    const result = request({
        url: '/admin/orderDetail/deleteOrdersDetail',
        method: 'post',
        data: ordersDetail
    })
    return result
}