<template>
  <div class="page-container">
    <mapbox-map
      v-if="isShowMapbox"
      mapWidth="100%"
      mapHeight="100%"
    ></mapbox-map>
  </div>
</template>

<script>
import MapboxMap from '@/components/MapBox/MapBox'

export default {
  name: 'MapboxExample',
  components: {
    MapboxMap
  },
  data () {
    return {
      isShowMapbox: false
    }
  },
  created () {
    this.$confirm('该示例打开后,Mapbox views将增加, 超过50000次后，每1000次$0.5，确认继续打开?', '提示', {
      confirmButtonText: '确定',
      cancelButtonText: '取消',
      type: 'warning',
      center: true
    }).then(() => {
      this.isShowMapbox = true
    })
  }
}
</script>

<style lang="less" scoped>
</style>
