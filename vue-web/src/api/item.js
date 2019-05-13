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
 * @param {*} cId 
 */
export function queryGroupByCid(cId) {
    const result = request({
        url: '/admin/spec/groups/' + cId,
        method: 'get'
    })
    return result
}