import request from './index'

export function goodsDetailList(goodsId) {
    const result = request({
        url: '/item/goods/goodsDetailList?goodsId=' + goodsId,
        method: 'post'
    })
    return result
}

/**
 * 根据id查询spu
 * @param {*} spuId 
 */
export function querySpuById(spuId) {
    const result = request({
        url: '/admin/spu/' + spuId,
        method: 'get'
    })
    return result
}

/**
 * 根据id查商品品牌
 * @param {*} spuId 
 */
export function queryBrandById(bId) {
    const result = request({
        url: '/admin/brand/' + bId,
        method: 'get'
    })
    return result
}

/**
 * 根据cid获取商品规格组信息
 * @param {*} spuId 
 */
export function queryGroupBySpuId(spuId) {
    const result = request({
        url: '/admin/spec/groups/' + spuId,
        method: 'get'
    })
    return result
}

/**
 * 根据cid查询规格参数信息
 * @param {*} cId 
 */
export function queryParamByCid(cId) {
    const result = request({
        url: '/admin/spec/param?cid=' + cId,
        method: 'get'
    })
    return result
}

/**
 * 加入购物车
 */
export function addCart(cart) {
    return request({
        url: '/admin/cart/addCart',
        method: 'post',
        data: cart
    })
}

/**
 * 查看购物车
 */
export function queryCartList() {
    return request({
        url: '/admin/cart/queryCartList',
        method: 'post'
    })
}

/**
 * 查询用户地址信息
 */
export function queryAddress(uid) {
    return request({
        url: '/admin/address/queryAddress?uid='+uid,
        method: 'post'
    })
}

/**
 * 添加订单
 */
export function addOrder(orders) {
    return request({
        url: '/admin/order/addOrder',
        method: 'post',
        data: orders
    })
}

/**
 * 查询评价信息
 */
export function queryComment(skuId,commentType) {
    return request({
        url: '/admin/comment/queryComment?skuId='+skuId+'&commentType='+commentType,
        method: 'post'
    })
}

/**
 * 更新用户信息
 */
export function updateUser(user) {
    return request({
        url: '/admin/user/updateUser',
        method: 'post',
        data: user
    })
}