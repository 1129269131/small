import request from './index'

export function getTrackList () {
  const result = request({
    url: '/track/list',
    method: 'post'
  })

  return result
}
