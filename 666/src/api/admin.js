import request from './index'

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