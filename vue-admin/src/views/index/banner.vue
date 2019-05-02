<template>
  <div class="banner">
    <!--轮播 -->
    <div
      class="am-slider am-slider-default scoll"
      data-am-flexslider=""
      id="demo-slider-0"
    >

      <div
        class="am-viewport"
        style="overflow: hidden; position: relative;"
      >
        <ul
          class="am-slides"
          style="width: 1200%; transition-duration: 0.6s; transform: translate3d(-5396px, 0px, 0px);"
        >
          <li
            class="banner4 clone"
            aria-hidden="true"
            style="width: 1349px; float: left; display: block;"
          ><a><img
                src="@/assets/images/ad4.jpg"
                draggable="false"
              ></a></li>
          <li
            class="banner1"
            style="width: 1349px; float: left; display: block;"
          ><a href="introduction.html"><img
                src="@/assets/images/ad1.jpg"
                draggable="false"
              ></a></li>
          <li
            class="banner2"
            style="width: 1349px; float: left; display: block;"
          ><a><img
                src="@/assets/images/ad2.jpg"
                draggable="false"
              ></a></li>
          <li
            class="banner3"
            style="width: 1349px; float: left; display: block;"
          ><a><img
                src="@/assets/images/ad3.jpg"
                draggable="false"
              ></a></li>
          <li
            class="banner4 am-active-slide"
            style="width: 1349px; float: left; display: block;"
          ><a><img
                src="@/assets/images/ad4.jpg"
                draggable="false"
              ></a></li>

          <li
            class="banner1 clone"
            style="width: 1349px; float: left; display: block;"
            aria-hidden="true"
          ><a href="introduction.html"><img
                src="@/assets/images/ad1.jpg"
                draggable="false"
              ></a></li>
        </ul>
      </div>
      <ol class="am-control-nav am-control-paging">
        <li><a class="">1</a><i></i></li>
        <li><a class="">2</a><i></i></li>
        <li><a class="">3</a><i></i></li>
        <li><a class="am-active">4</a><i></i></li>
      </ol>
      <ul class="am-direction-nav">
        <li class="am-nav-prev"><a
            class="am-prev"
            href="#"
          > </a></li>
        <li class="am-nav-next"><a
            class="am-next"
            href="#"
          > </a></li>
      </ul>
    </div>
    <div class="clear"></div>
  </div>
</template>

<script>
export default {
  name: 'Banner',
  data () {
    return {
    }
  },
  methods: {
  }
}
</script>

<style lang="less" scoped>
</style>
