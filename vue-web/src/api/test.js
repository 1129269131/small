import request from './index'

/**
 * 测试
 */
export function test() {
    return request({
        url: '/test/test/check',
        method: 'post'
    })
}

/**
 * 提交订单
 */
export function order(addressId,shippingName,paymentType,buyerMessage,postFee,totalPay,actualPay) {
    return request({
        url: '/test/test/order',
        method: 'post',
        data: {
            addressId,
            shippingName,
            paymentType,
            buyerMessage,
            postFee,
            totalPay,
            actualPay
        }
    })
}

/**
 * 商品详情
 */
export function orderDetail(ordersDetail) {
    return request({
        url: '/test/test/orderDetail',
        method: 'post',
        data: {
            ordersDetail
        }
    })
}

/**
 * 购物车
 */
export function addCart(cart) {
    debugger
    return request({
        url: '/admin/cart/addCart',
        method: 'post',
        data: cart
    })
}

/**
 * 测试的购物车
 */
export function testCart(cart) {
    return request({
        url: '/test/test/cart',
        method: 'post',
        data: {
            cart
        }
    })
}