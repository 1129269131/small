<template>
  <div class="page-container">
    <div
      id="map"
      style="height: 100%; width: 100%;"
    ></div>
  </div>
</template>

<script>
import GaodeMap from '@/plugins/map/amap.js'

export default {
  name: 'BMapExample',
  data () {
    return {
      AMap: null,
      map: null
    }
  },
  created () {
    // 按需加载百度地图
    GaodeMap.init()
      .then((AMap) => {
        this.AMap = AMap
        this.map = new this.AMap.Map('map', {
          zoom: 11, // 级别
          center: [116.397428, 39.90923], // 中心点坐标
          viewMode: '3D'// 使用3D视图
        })
      })
  }
}
</script>
