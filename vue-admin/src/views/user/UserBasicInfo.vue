<template>
  <div class="user-infoPic">

    <div class="filePic">
      <img
        class="am-circle am-img-thumbnail"
        src="@/assets/images/user.jpg"
        alt=""
      >
    </div>

    <p class="am-form-help">头像</p>

    <div class="info-m">
      <div><b>用户名：<i>小叮当</i></b></div>
      <div class="u-level">
        <span class="rank r2">
          <s class="vip1"></s><a
            class="classes"
            href="#"
          >铜牌会员</a>
        </span>
      </div>
      <div class="u-safety">
        <a href="safety.html">
          账户安全
          <span class="u-profile"><i
              class="bc_ee0000"
              style="width: 60px;"
              width="0"
            >60分</i></span>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'UserBasicInfo',
  data() {
    return {
    }
  },
  methods: {

  }
}
</script>

<style lang="less" scoped>
.filePic{
    position: absolute;
    left: 0;
    img{
        display: block;
    }
}
</style>
