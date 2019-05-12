export default {
  init: function () {
    const AK = '9d9b7f5b3c0f69ad6e7bb7217d4bfd9a'
    const AMapURL = 'http://webapi.amap.com/maps?v=1.4.2&amp;key=' + AK + '&s=1&callback=onAMapCallback'
    return new Promise((resolve, reject) => {
      // 如果已加载直接返回
      if (typeof AMap !== 'undefined') {
        // eslint-disable-next-line
        resolve(AMap)
        return true
      }
      // 高德地图异步加载回调处理
      window.onAMapCallback = function () {
        /* eslint-disable no-console */
        console.log('高德地图脚本初始化成功...')
        // eslint-disable-next-line
        resolve(AMap)
      }
      // 插入script脚本
      let scriptNode = document.createElement('script')
      scriptNode.setAttribute('type', 'text/javascript')
      scriptNode.setAttribute('src', AMapURL)
      document.body.appendChild(scriptNode)
    })
  }
}
