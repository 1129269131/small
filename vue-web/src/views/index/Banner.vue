<template>
  <div class="banner">
    <!--轮播 -->
    <el-carousel height="430px" :interval="8000" arrow="never">
    <el-carousel-item v-for="item in imgList" :key="item.id">
      <img ref="imgHeight" :src="item.idView" class="banner_img"/>
    </el-carousel-item>
  </el-carousel>
  </div>
</template>

<script>
export default {
  name: 'Banner',
  data() {
    return {
      imgList:[
        {id: 0, idView: require('@/assets/images/ad1.jpg')},
        {id: 1, idView: require('@/assets/images/ad2.jpg')},
        {id: 2, idView: require('@/assets/images/ad3.jpg')},
        {id: 3, idView: require('@/assets/images/ad4.jpg')}
      ]
    }
  },
  methods: {
  }
}
</script>

<style lang="less" scoped>
.el-carousel__item h3 {
    color: #475669;
    font-size: 18px;
    opacity: 0.75;
    line-height: 300px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
</style>
