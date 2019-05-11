<template>
  <div class="shopNav">
    <div class="slideall">

      <div class="long-title"><span class="all-goods">全部分类</span></div>
      <div class="nav-cont">
        <ul>
          <li class="index"><a href="#">首页</a></li>
          <li class="qc"><a href="#">闪购</a></li>
          <li class="qc"><a href="#">限时抢</a></li>
          <li class="qc"><a href="#">团购</a></li>
          <li class="qc last"><a href="#">大包装</a></li>
        </ul>
        <div class="nav-extra">
          <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
          <i
            class="am-icon-angle-right"
            style="padding-left: 10px;"
          ></i>
        </div>
      </div>

      <!--侧边导航 -->
      <div
        id="nav"
        class="navfull"
      >
        <div class="area clearfix">
          <div
            class="category-content"
            id="guide_2"
          >

            <div class="category">
              <ul
                class="category-list"
                id="js_climit_li"
              >
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/cake.png"></i><a
                        class="ml-22"
                        title="点心"
                      >点心/蛋糕</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/cookies.png"></i><a
                        class="ml-22"
                        title="饼干"
                      >饼干/膨化</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/meat.png"></i><a
                        class="ml-22"
                        title="点心"
                      >熟食/肉类</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/bamboo.png"></i><a
                        class="ml-22"
                        title="点心"
                      >素食/卤味</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/nut.png"></i><a
                        class="ml-22"
                        title="点心"
                      >坚果/炒货</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/candy.png"></i><a
                        class="ml-22"
                        title="点心"
                      >糖果/蜜饯</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/chocolate.png"></i><a
                        class="ml-22"
                        title="点心"
                      >巧克力</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/fish.png"></i><a
                        class="ml-22"
                        title="点心"
                      >海味/河鲜</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative first">
                  <div class="category-info">
                    <h3 class="category-name b-category-name"><i><img src="@/assets/images/tea.png"></i><a
                        class="ml-22"
                        title="点心"
                      >花茶/果茶</a></h3>
                    <em>&gt;</em>
                  </div>
                  <b class="arrow"></b>
                </li>
              </ul>
            </div>
          </div>

        </div>
      </div>

      <!--小导航 -->
      <div class="am-g am-g-fixed smallnav">
        <div class="am-u-sm-3">
          <a href="sort.html"><img src="@/assets/images/navsmall.jpg">
            <div class="title">商品分类</div>
          </a>
        </div>
        <div class="am-u-sm-3">
          <a href="#"><img src="@/assets/images/huismall.jpg">
            <div class="title">大聚惠</div>
          </a>
        </div>
        <div class="am-u-sm-3">
          <a href="#"><img src="@/assets/images/mansmall.jpg">
            <div class="title">个人中心</div>
          </a>
        </div>
        <div class="am-u-sm-3">
          <a href="#"><img src="@/assets/images/moneysmall.jpg">
            <div class="title">投资理财</div>
          </a>
        </div>
      </div>

      <!--走马灯 -->

      <div class="marqueen">
        <span class="marqueen-title">商城头条</span>
        <div class="demo">

          <ul>
            <li class="title-first"><a
                target="_blank"
                href="#"
              >
                <img src="@/assets/images/TJ2.jpg">
                <span>[特惠]</span>商城爆品1分秒
              </a></li>
            <li class="title-first"><a
                target="_blank"
                href="#"
              >
                <span>[公告]</span>商城与广州市签署战略合作协议
                <img src="@/assets/images/TJ.jpg">
                <p>XXXXXXXXXXXXXXXXXX</p>
              </a></li>

            <div class="mod-vip">
              <div class="m-baseinfo">
                <a href="@/assets/person/index.html">
                  <img src="@/assets/images/getAvatar.do.jpg">
                </a>
                <em>
                  <a href="#">
                    <p>点击更多优惠活动</p>
                  </a>
                </em>
              </div>
              <div class="member-logout">
                <router-link to="/login">
                <a
                  class="am-btn-warning btn"
                  href="login.html"
                >登录</a>
                </router-link>
                <router-link to="/regist">
                <a
                  class="am-btn-warning btn"
                  href="register.html"
                >注册</a>
                </router-link>
              </div>
              <div class="member-login">
                <a href="#"><strong>0</strong>待收货</a>
                <a href="#"><strong>0</strong>待发货</a>
                <a href="#"><strong>0</strong>待付款</a>
                <a href="#"><strong>0</strong>待评价</a>
              </div>
              <div class="clear"></div>
            </div>

            <li><a
                target="_blank"
                href="#"
              ><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
            <li><a
                target="_blank"
                href="#"
              ><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
            <li><a
                target="_blank"
                href="#"
              ><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>

          </ul>
          <div class="advTip"><img src="@/assets/images/advTip.jpg"></div>
        </div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ShopNav',
  data () {
    return {
    }
  },
  methods: {
  }
}
</script>

<style lang="less" scoped>
.category{
  background: #2b2b2b;
  .ml-22{
    color: #fff;
    margin-left: 2px;
  }
}
#js_climit_li{
  li{
    height: 48px!important;
  }
}
.m-baseinfo{
  width: 100%;
  float: none!important;
  height: 60px!important;
}
.am-btn-warning{
  color: #fff;
}
</style>
