<template>
  <div class="page-container">
    <div
      id="map"
      style="height: 100%; width: 100%;"
    ></div>
    <div class="track-control-wrapper">
      <el-button
        class="control-btn"
        size="mini"
        @click="getVehicleTracks"
      >获取数据</el-button>
      <el-button
        class="control-btn"
        type="primary"
        size="mini"
        @click="playTracks"
      >播放</el-button>
      <el-button
        class="control-btn"
        type="primary"
        size="mini"
        @click="pauseTracks"
      >暂停</el-button>
      <el-button
        class="control-btn"
        type="primary"
        size="mini"
        @click="stopTracks"
      >停止</el-button>
      <el-slider
        v-model="playSpeed"
        :max="10"
        style="width: 250px"
        @change="speedChange"
      ></el-slider>
    </div>
  </div>
</template>

<script>
import BMap from 'BMap'
import { getTrackList } from '@/api/track'
// import BaiduMap from '@/plugins/map/bmap.js'

export default {
  name: 'BMapExample',
  data () {
    return {
      BMap: null,
      map: null,
      trackList: null,
      playState: false,
      pauseState: false,
      stopState: false,
      playSpeed: 2,
      currentPos: 0
    }
  },
  // created () {
  // this.$nextTick(() => {
  //   // 按需加载百度地图
  //   BaiduMap.init()
  //     .then((BMap) => {
  //       this.BMap = BMap
  //       this.map = new BMap.Map('map')
  //       this.map.setMapStyle({ style: 'grayscale' }) // 设置地图主题

  //       var point = new BMap.Point(118.141621, 24.490754) // 中心点
  //       this.map.centerAndZoom(point, 18)
  //       this.map.enableScrollWheelZoom(true)

  //       var marker = new BMap.Marker(point) // 创建标注
  //       this.map.addOverlay(marker)
  //     })
  // })
  // },
  methods: {
    // 获取轨迹数据
    getVehicleTracks (callback) {
      getTrackList().then(response => {
        this.trackList = response.data
        if (!this.trackList || this.trackList.length === 0) {
          this.$message({
            message: '很抱歉，暂无轨迹数据。',
            type: 'info',
            duration: 3 * 1000
          })
          return false
        }
        // this.showTracks()
        // callback && callback()
      })
    },
    // 显示轨迹
    showTracks () {
      if (this.trackList !== 'undefined' && this.trackList != null && this.trackList.length > 0) {
        var mapPoints = []
        for (var i = 0; i < this.trackList.length - 1; i++) {
          // 画线
          var points = []
          mapPoints.push(new BMap.Point(this.trackList[i].B_Longitude, this.trackList[i].B_Latitude))
          points.push(new BMap.Point(this.trackList[i].B_Longitude, this.trackList[i].B_Latitude))
          points.push(new BMap.Point(this.trackList[i + 1].B_Longitude, this.trackList[i + 1].B_Latitude))
          var color = this.trackList[i].Operating_Status === 1 ? '#0e8fbf' : '#fb6708'
          var polyline = new BMap.Polyline(points, {
            strokeColor: color,
            strokeWeight: 3,
            strokeOpacity: 0.8
          })
          this.map.addOverlay(polyline) // 画线

          // 画点
          if (i > 0 && i < this.trackList.length && this.trackList[i + 1].Operating_Status !== 1 && this.trackList[i].Operating_Status === 1) { // 载客起点
            // var myIconS = new BMap.Icon('/Content/images/map/iconCircle.png', new BMap.Size(11, 11))
            var pointS = new BMap.Point(this.trackList[i + 1].B_Longitude, this.trackList[i + 1].B_Latitude)
            var carMarkerS = new BMap.Marker(pointS)
            this.map.addOverlay(carMarkerS)
          } else if (i > 0 && i < this.trackList.length && this.trackList[i + 1].Operating_Status === 1 && this.trackList[i].Operating_Status !== 1) { // 载客终点
            // var myIconE = new BMap.Icon('/Content/images/map/iconCircle2.png', new BMap.Size(11, 11))
            var pointE = new BMap.Point(this.trackList[i + 1].B_Longitude, this.trackList[i + 1].B_Latitude)
            var carMarkerE = new BMap.Marker(pointE)
            this.map.addOverlay(carMarkerE)
          }
        }
        this.autoSetCenterAndZoom(this.map, mapPoints)
      } else {
        this.$message({
          message: '很抱歉，暂无轨迹数据。',
          type: 'error',
          duration: 3 * 1000
        })
      }
    },
    // 隐藏轨迹
    hideTracks () {
      this.map.clearOverlays()
    },
    // 绘制轨迹线
    drawTrackLine () {
      /* eslint-disable */
      var currentPos = this.trackList[this.currentPos]
      var nextPos = this.trackList[this.currentPos + 1]
      if (this.currentPos === this.trackList.length - 1) {
        this.currentPos++
        return false
      } else {
        var driving = new BMap.DrivingRoute(this.map)
        driving.search(new BMap.Point(currentPos.B_Longitude, currentPos.B_Latitude), new BMap.Point(nextPos.B_Longitude, nextPos.B_Latitude)); 
        driving.setSearchCompleteCallback(() => {
          //得到路线上的所有point  
          var points = driving.getResults().getPlan(0).getRoute(0).getPath();
          //连接所有点  
          this.map.addOverlay(new BMap.Polyline(points, { strokeColor: "#0e8fbf", strokeWeight: 3, strokeOpacity: 0.8 }));
        })

        var points = []

        points.push(new BMap.Point(currentPos.B_Longitude, currentPos.B_Latitude))
        points.push(new BMap.Point(nextPos.B_Longitude, nextPos.B_Latitude))

        var color = currentPos.Operating_Status === 1 ? '#0e8fbf' : '#fb6708'
        var polyline = new BMap.Polyline(points, {
          strokeColor: color,
          strokeWeight: 3,
          strokeOpacity: 0.8
        })

        this.map.addOverlay(polyline) // 画线
      }

      this.currentPos++
    },
    // 播放轨迹
    playTracks() {
      if (this.playState && !this.pauseState) return false

      // 判断是否为暂停状态
      if (this.pauseState) this.pauseState = false


      // 判断是否为停止状态
      if (this.stopState) {
        this.stopState = false
        this.currentPos = 0
        this.map.clearOverlays()
      }

      this.playState = true

      if (this.trackList === 'undefined' || this.trackList.length <= 0) {
        alert('没有可回放的轨迹数据！')
        return false
      }

      if (this.currentPos === this.trackList.length) {
        alert('对不起，GPS轨迹已回放结束！')
        return false
      }

      // 开始绘制轨迹
      this.goGpsTrack()
    },
    // 暂停播放
    pauseTracks() {
      if (!this.playState) return false

      this.pauseState = true
    },
    // 停止播放
    stopTracks() {
      if (!this.playState) return false

      this.playState = false
      this.pauseState = false

      this.currentPos = 0

      this.stopState = true
      this.map.clearOverlays()
    },
    // 按指定频率绘制轨迹线
    goGpsTrack() {
      if (this.pauseState || this.stopState) return false

      this.drawTrackLine()

      if (this.currentPos < this.trackList.length) {
        var playTime = 1000 / this.playSpeed
        setTimeout(() => {
          this.goGpsTrack()
        }, playTime)
      } else {
        this.stopState = true
      }
    },
    // 更新播放速度
    speedChange(value) {

    },
    // 设置百度地图自适应缩放级别及地图中心
    autoSetCenterAndZoom(map, points) {
      if (!map || !points || points.length === 0) return false

      let view = map.getViewport(points)
      let mapZoom = view.zoom
      let mapCenter = view.center

      map.centerAndZoom(mapCenter, mapZoom)
    }
  },
  mounted() {
    this.map = new BMap.Map('map')
    // this.map.setMapStyle({ style: 'grayscale' }) // 设置地图主题

    var point = new BMap.Point(118.141621, 24.490754) // 中心点
    this.map.centerAndZoom(point, 18)
    this.map.enableScrollWheelZoom(true)

    var marker = new BMap.Marker(point) // 创建标注
    this.map.addOverlay(marker)
  }
}
</script>

<style lang="less" scoped>
.track-control-wrapper {
  position: absolute;
  top: 20px;
  left: 20px;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  padding: 5px 15px;
  font-family: "Microsoft YaHei";
  font-size: 13px;
  color: #333;
  background: #fff;
  border-radius: 3px;
}
</style>
