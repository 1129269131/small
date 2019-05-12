import request from './index'
export function queryAdvertisement(classification) {
    const result = request({
        url: '/admin/ad/'+classification,
        method: 'get'
    })
    return result
}