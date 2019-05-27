<template>
  <div class="admin-container">
      <div class="left">
        <div>
          <p class="module"> 
            <router-link to="/lay/data">数据分析</router-link>
          </p>
          <p class="module"> 
            <router-link to="/lay/user">用户管理</router-link>
          </p>
          <p class="module"> 
            <router-link to="/lay/goods">商品管理</router-link>
          </p>
          <p class="module"> 
            <router-link to="/lay/order">订单管理</router-link>
          </p>
          <p class="module"> 
            <router-link to="/lay/category">分类管理</router-link>
          </p>
        </div>
      </div>
      <div class="right main-wrap">
        <router-view></router-view>
      </div>
  </div>
</template>

<script>
export default {
  name: 'LayOut'
}
</script>
<style lang="less" scoped>

.left{
  width: 120px;
  height: 100%;
  background: #001529;
  position: absolute;
  left: 0;
  top: 0;
  color: #fff;
  li{
    list-style:none;
  }
  a{
    color: #eee;
  }
  p{
    text-align: center;
  }
}
.right{
  margin-left: 120px;
}
</style>
