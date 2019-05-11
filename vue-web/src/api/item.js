import request from './index'

export function goodsDetailList(goodsId) {
    const result = request({
        url: '/item/goods/goodsDetailList?goodsId=' + goodsId,
        method: 'post'
    })
    return result
}