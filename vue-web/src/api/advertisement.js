import request from './index'

/**
 * 获取广告列表
 * @param {*} classification 商品位置
 */
export function queryAdvertisement(classification) {
    const result = request({
        url: '/item/ad/'+classification,
        method: 'get'
    })
    return result
}