<template>
  <div class="listMain">

    <!--分类-->
    <div class="nav-table">
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
    </div>
    <ol class="am-breadcrumb am-breadcrumb-slash">
      <li><a href="#">首页</a></li>
      <li><a href="#">分类</a></li>
      <li class="am-active">内容</li>
    </ol>
    <div class="scoll">
      <section class="slider">
        <div
          class="flexslider"
          style=""
        >

          <div
            class="flex-viewport"
            style="overflow: hidden; position: relative;"
          >
            <ul
              class="slides"
              style="width: 1000%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"
            >
              <li
                class="clone"
                aria-hidden="true"
                style="width: 0px; float: left; display: block;"
              >
                <img
                  src="@/assets/images/03.jpg"
                  draggable="false"
                >
              </li>
              <li
                style="width: 0px; float: left; display: block;"
                class="flex-active-slide"
              >
                <img
                  src="@/assets/images/01.jpg"
                  title="pic"
                  draggable="false"
                >
              </li>
              <li style="width: 0px; float: left; display: block;">
                <img
                  src="@/assets/images/02.jpg"
                  draggable="false"
                >
              </li>
              <li style="width: 0px; float: left; display: block;">
                <img
                  src="@/assets/images/03.jpg"
                  draggable="false"
                >
              </li>
              <li
                style="width: 0px; float: left; display: block;"
                class="clone"
                aria-hidden="true"
              >
                <img
                  src="@/assets/images/01.jpg"
                  title="pic"
                  draggable="false"
                >
              </li>
            </ul>
          </div>
          <ol class="flex-control-nav flex-control-paging">
            <li><a class="flex-active">1</a></li>
            <li><a>2</a></li>
            <li><a>3</a></li>
          </ol>
          <ul class="flex-direction-nav">
            <li class="flex-nav-prev"><a
                class="flex-prev"
                href="#"
              >Previous</a></li>
            <li class="flex-nav-next"><a
                class="flex-next"
                href="#"
              >Next</a></li>
          </ul>
        </div>
      </section>
    </div>

    <!--放大镜-->

    <div class="item-inform">
      <div
        class="clearfixLeft"
        id="clearcontent"
      >

        <div class="box">

          <div class="tb-booth tb-pic tb-s310">
            <a href="#"><img
                src="@/assets/images/01_mid.jpg"
                alt="细节展示放大镜特效"
                rel="../images/01.jpg"
                class="jqzoom"
                style="cursor: crosshair;"
              ></a>
          </div>
          <ul
            class="tb-thumb"
            id="thumblist"
          >
            <li class="tb-selected">
              <div class="tb-pic tb-s40">
                <a href="#"><img
                    src="@/assets/images/01_small.jpg"
                    mid="@/assets/images/01_mid.jpg"
                    big="@/assets/images/01.jpg"
                  ></a>
              </div>
            </li>
            <li>
              <div class="tb-pic tb-s40">
                <a href="#"><img
                    src="@/assets/images/02_small.jpg"
                    mid="@/assets/images/02_mid.jpg"
                    big="@/assets/images/02.jpg"
                  ></a>
              </div>
            </li>
            <li>
              <div class="tb-pic tb-s40">
                <a href="#"><img
                    src="@/assets/images/03_small.jpg"
                    mid="@/assets/images/03_mid.jpg"
                    big="@/assets/images/03.jpg"
                  ></a>
              </div>
            </li>
          </ul>
        </div>

        <div class="clear"></div>
      </div>

      <div class="clearfixRight">

        <!--规格属性-->
        <!--名称-->
        <div class="tb-detail-hd">
          <h1>{{spu.title}}</h1>
        </div>
        <div class="tb-detail-list">
          <!--价格-->
          <div class="tb-detail-price">
            <li class="price iteminfo_price">
              <dt>促销价</dt>
              <dd><em>¥</em><b class="sys_item_price">{{skus[0].price}}</b> </dd>
            </li>
            <li class="price iteminfo_mktprice">
              <dt>原价</dt>
              <dd><em>¥</em><b class="sys_item_mktprice">98.00</b></dd>
            </li>
            <div class="clear"></div>
          </div>

          <!--地址-->
          <dl class="iteminfo_parameter freight">
            <dt>配送至</dt>
            <div class="iteminfo_freprice">
              <div class="am-form-content address">
                <el-select
                  style="width:100px;margin-right:15px"
                  v-model="value2"
                  placeholder="福建省"
                >
                  <el-option
                    v-for="item in options2"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value"
                    :disabled="item.disabled"
                  >
                  </el-option>
                </el-select>
                <el-select
                  style="width:100px;margin-right:15px"
                  v-model="value3"
                  placeholder="厦门市"
                >
                  <el-option
                    v-for="item in options3"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value"
                    :disabled="item.disabled"
                  >
                  </el-option>
                </el-select>
                <el-select
                  style="width:100px"
                  v-model="value4"
                  placeholder="集美区"
                >
                  <el-option
                    v-for="item in options4"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value"
                    :disabled="item.disabled"
                  >
                  </el-option>
                </el-select>
              </div>
              <div
                class="pay-logis"
                style="display:inline-block"
              >
                快递<b class="sys_item_freprice">10</b>元
              </div>
            </div>
          </dl>
          <div class="clear"></div>

          <!--销量-->
          <ul class="tm-ind-panel">
            <li class="tm-ind-item tm-ind-sellCount canClick">
              <div class="tm-indcon"><span class="tm-label">月销量</span><span class="tm-count">1015</span></div>
            </li>
            <li class="tm-ind-item tm-ind-sumCount canClick">
              <div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count">6015</span></div>
            </li>
            <li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
              <div class="tm-indcon"><span class="tm-label">累计评价</span><span class="tm-count">640</span></div>
            </li>
          </ul>
          <div class="clear"></div>

          <!--各种规格-->
          <dl class="iteminfo_parameter sys_item_specpara">
            <dt class="theme-login">
              <div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div>
            </dt>
            <dd>
              <!--操作页面-->

              <div class="theme-popover-mask"></div>

              <div class="theme-popover">
                <div class="theme-span"></div>
                <div class="theme-poptit">
                  <a
                    href="javascript:;"
                    title="关闭"
                    class="close"
                  >×</a>
                </div>
                <div class="theme-popbod dform">
                  <form
                    class="theme-signin"
                    name="loginform"
                    action=""
                    method="post"
                  >

                    <div class="theme-signin-left">

                      <div class="theme-options">
                        <div class="cart-title">口味</div>
                        <ul>
                          <li
                            @click="isSelect(index)"
                            class="sku-line skus"
                            v-for="(item, index) in skus"
                          >
                            {{ item.style }}
                            <i></i>
                          </li>
                        </ul>
                      </div>
                      <div class="theme-options">
                        <div class="cart-title">包装</div>
                        <ul>
                          <li
                            class="sku-line packages"
                            @click="isPackagesSelect(0)"
                          >手袋单人份<i></i></li>
                          <li
                            class="sku-line packages"
                            @click="isPackagesSelect(1)"
                          >礼盒双人份<i></i></li>
                          <li
                            class="sku-line packages"
                            @click="isPackagesSelect(2)"
                          >全家福礼包<i></i></li>
                        </ul>
                      </div>
                      <div class="theme-options">
                        <div class="cart-title number">数量</div>
            <dd>
              <el-input-number
                v-model="commondityNum"
                :min="1"
                :max="10"
                label="描述文字"
              ></el-input-number>
            </dd>

        </div>
        <div class="clear"></div>

        <div class="btn-op">
          <div class="btn am-btn am-btn-warning">确认</div>
          <div class="btn close am-btn am-btn-warning">取消</div>
        </div>
      </div>
      <div class="theme-signin-right">
        <div class="img-info">
          <img src="@/assets/images/songzi.jpg">
        </div>
        <div class="text-info">
          <span class="J_Price price-now">¥39.00</span>
          <span
            id="Stock"
            class="tb-hidden"
          >库存<span class="stock">1000</span>件</span>
        </div>
      </div>

      </form>
    </div>
  </div>

  </dd>
  </dl>
  <div class="clear"></div>
  <!--活动	-->
  <div class="shopPromotion gold">
    <div class="hot">
      <dt class="tb-metatit">店铺优惠</dt>
      <div class="gold-list">
        <p>{{spu.subTitle}}<span>点击领券<i class="am-icon-sort-down"></i></span></p>
      </div>
    </div>
    <div class="clear"></div>
    <div class="coupon">
      <dt class="tb-metatit">优惠券</dt>
      <div class="gold-list">
        <ul>
          <li>125减5</li>
          <li>198减10</li>
          <li>298减20</li>
        </ul>
      </div>
    </div>
  </div>
  </div>

  <div class="pay">
    <div class="pay-opt">
      <a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
      <a><span class="am-icon-heart am-icon-fw">收藏</span></a>

    </div>
    <li>
      <div class="clearfix tb-btn tb-btn-buy theme-login">
        <a
          id="LikBuy"
          title="点此按钮到下一步确认购买信息"
          href="#"
        >立即购买</a>
      </div>
    </li>
    <li>
      <div class="clearfix tb-btn tb-btn-basket theme-login">
        <a
          id="LikBasket"
          title="加入购物车"
          @click="addCar()"
        >
        <i></i>加入购物车
        </a>
      </div>
    </li>
  </div>

  </div>

  <div class="clear"></div>

  </div>

  <!--优惠套装-->
  <div class="match">
    <div class="match-title">优惠套装</div>
    <div class="match-comment">
      <ul class="like_list">
        <li>
          <div class="s_picBox">
            <a
              class="s_pic"
              href="#"
            ><img src="@/assets/images/cp.jpg"></a>
          </div> <a
            class="txt"
            target="_blank"
            href="#"
          >萨拉米 1+1小鸡腿</a>
          <div class="info-box"> <span class="info-box-price">¥ 29.90</span> <span class="info-original-price">￥ 199.00</span> </div>
        </li>
        <li class="plus_icon"><i>+</i></li>
        <li>
          <div class="s_picBox">
            <a
              class="s_pic"
              href="#"
            ><img src="@/assets/images/cp2.jpg"></a>
          </div> <a
            class="txt"
            target="_blank"
            href="#"
          >ZEK 原味海苔</a>
          <div class="info-box"> <span class="info-box-price">¥ 8.90</span> <span class="info-original-price">￥ 299.00</span> </div>
        </li>
        <li class="plus_icon"><i>=</i></li>
        <li class="total_price">
          <p class="combo_price"><span class="c-title">套餐价:</span><span>￥35.00</span> </p>
          <p class="save_all">共省:<span>￥463.00</span></p> <a
            href="#"
            class="buy_now"
          >立即购买</a>
        </li>
        <li class="plus_icon"><i class="am-icon-angle-right"></i></li>
      </ul>
    </div>
  </div>
  <div class="clear"></div>

  <!-- introduce-->

  <div class="introduce">
    <div class="browse">
      <div class="mc">
        <ul>
          <div class="mt">
            <h2>看了又看</h2>
          </div>

          <li class="first">
            <div class="p-img">
              <a href="#"> <img
                  class=""
                  src="@/assets/images/browse1.jpg"
                > </a>
            </div>
            <div class="p-name"><a href="#">
                【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
              </a>
            </div>
            <div class="p-price"><strong>￥35.90</strong></div>
          </li>
          <li>
            <div class="p-img">
              <a href="#"> <img
                  class=""
                  src="@/assets/images/browse1.jpg"
                > </a>
            </div>
            <div class="p-name"><a href="#">
                【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
              </a>
            </div>
            <div class="p-price"><strong>￥35.90</strong></div>
          </li>
          <li>
            <div class="p-img">
              <a href="#"> <img
                  class=""
                  src="@/assets/images/browse1.jpg"
                > </a>
            </div>
            <div class="p-name"><a href="#">
                【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
              </a>
            </div>
            <div class="p-price"><strong>￥35.90</strong></div>
          </li>
          <li>
            <div class="p-img">
              <a href="#"> <img
                  class=""
                  src="@/assets/images/browse1.jpg"
                > </a>
            </div>
            <div class="p-name"><a href="#">
                【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
              </a>
            </div>
            <div class="p-price"><strong>￥35.90</strong></div>
          </li>
          <li>
            <div class="p-img">
              <a href="#"> <img
                  class=""
                  src="@/assets/images/browse1.jpg"
                > </a>
            </div>
            <div class="p-name"><a href="#">
                【三只松鼠_开口松子218g】零食坚果特产炒货东北红松子原味
              </a>
            </div>
            <div class="p-price"><strong>￥35.90</strong></div>
          </li>

        </ul>
      </div>
    </div>
    <div class="introduceMain">
      <div
        class="am-tabs"
        data-am-tabs=""
      >
        <el-tabs
          v-model="activeName"
          @tab-click="handleClick"
        >
          <el-tab-pane
            label="宝贝详情"
            name="first"
          >
            <div class="am-tab-panel am-fade am-in am-active">
              <div class="J_Brand">

                <div class="attr-list-hd tm-clear">
                  <h4>产品参数：</h4>
                </div>
                <div class="clear"></div>
                <ul id="J_AttrUL">
                  <li v-for="(item, index) in parameters" title="">{{item.name}}:&nbsp;{{item.value}}</li>
                </ul>
                <div class="clear"></div>
              </div>

              <div class="details">
                <div class="attr-list-hd after-market-hd">
                  <h4>商品细节</h4>
                </div>
                <div class="twlistNews">
                  <div v-for="(item, index) in skuImg">
                    <img :src="require('@/assets/images/'+item)" />
                  </div>
                </div>
              </div>
              <div class="clear"></div>
            </div>
          </el-tab-pane>
          <el-tab-pane
            label="全部评价"
            name="second"
          >

            <div class="am-tab-panel am-fade am-active am-in">

              <div class="actor-new">
                <div class="rate">
                  <strong>100<span>%</span></strong><br> <span>好评度</span>
                </div>
                <dl>
                  <dt>买家印象</dt>
                  <dd class="p-bfc">
                    <q class="comm-tags"><span>味道不错</span><em>(2177)</em></q>
                    <q class="comm-tags"><span>颗粒饱满</span><em>(1860)</em></q>
                    <q class="comm-tags"><span>口感好</span><em>(1823)</em></q>
                    <q class="comm-tags"><span>商品不错</span><em>(1689)</em></q>
                    <q class="comm-tags"><span>香脆可口</span><em>(1488)</em></q>
                    <q class="comm-tags"><span>个个开口</span><em>(1392)</em></q>
                    <q class="comm-tags"><span>价格便宜</span><em>(1119)</em></q>
                    <q class="comm-tags"><span>特价买的</span><em>(865)</em></q>
                    <q class="comm-tags"><span>皮很薄</span><em>(831)</em></q>
                  </dd>
                </dl>
              </div>
              <div class="clear"></div>
              <div class="tb-r-filter-bar">
                <ul class=" tb-taglist am-avg-sm-4">
                  <li class="tb-taglist-li tb-taglist-li-current">
                    <div class="comment-info">
                      <span>全部评价</span>
                      <span class="tb-tbcr-num">(32)</span>
                    </div>
                  </li>

                  <li class="tb-taglist-li tb-taglist-li-1">
                    <div class="comment-info">
                      <span>好评</span>
                      <span class="tb-tbcr-num">(32)</span>
                    </div>
                  </li>

                  <li class="tb-taglist-li tb-taglist-li-0">
                    <div class="comment-info">
                      <span>中评</span>
                      <span class="tb-tbcr-num">(32)</span>
                    </div>
                  </li>

                  <li class="tb-taglist-li tb-taglist-li--1">
                    <div class="comment-info">
                      <span>差评</span>
                      <span class="tb-tbcr-num">(32)</span>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="clear"></div>

              <ul class="am-comments-list am-comments-list-flip">
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >b***1 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月02日 17:46</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255776406962"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：S
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >l***4 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年10月28日 11:33</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255095758792"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          没有色差，很暖和……美美的
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：蓝调灰&nbsp;&nbsp;尺码：2XL
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >b***1 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月02日 17:46</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255776406962"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：S
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >h***n (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月25日 12:48</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="258040417670"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          式样不错，初冬穿
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：L
                        </div>
                      </div>
                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>

                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >b***1 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月02日 17:46</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255776406962"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：S
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >l***4 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年10月28日 11:33</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255095758792"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          没有色差，很暖和……美美的
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：蓝调灰&nbsp;&nbsp;尺码：2XL
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >b***1 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月02日 17:46</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255776406962"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：S
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >h***n (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月25日 12:48</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="258040417670"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          式样不错，初冬穿
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：L
                        </div>
                      </div>
                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >b***1 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月02日 17:46</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255776406962"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：S
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >l***4 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年10月28日 11:33</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255095758792"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          没有色差，很暖和……美美的
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：蓝调灰&nbsp;&nbsp;尺码：2XL
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="@/assets/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >b***1 (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月02日 17:46</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="255776406962"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：S
                        </div>
                      </div>

                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>
                <li class="am-comment">
                  <!-- 评论容器 -->
                  <a href="">
                    <img
                      class="am-comment-avatar"
                      src="/images/hwbn40x40.jpg"
                    >
                    <!-- 评论者头像 -->
                  </a>

                  <div class="am-comment-main">
                    <!-- 评论内容容器 -->
                    <header class="am-comment-hd">
                      <!--<h3 class="am-comment-title">评论标题</h3>-->
                      <div class="am-comment-meta">
                        <!-- 评论元数据 -->
                        <a
                          href="#link-to-user"
                          class="am-comment-author"
                        >h***n (匿名)</a>
                        <!-- 评论者 -->
                        评论于
                        <time datetime="">2015年11月25日 12:48</time>
                      </div>
                    </header>

                    <div class="am-comment-bd">
                      <div
                        class="tb-rev-item "
                        data-id="258040417670"
                      >
                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                          式样不错，初冬穿
                        </div>
                        <div class="tb-r-act-bar">
                          颜色分类：柠檬黄&nbsp;&nbsp;尺码：L
                        </div>
                      </div>
                    </div>
                    <!-- 评论内容 -->
                  </div>
                </li>

              </ul>

              <div class="clear"></div>

              <!--分页 -->
              <ul class="am-pagination am-pagination-right">
                <li class="am-disabled"><a href="#">«</a></li>
                <li class="am-active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
              </ul>
              <div class="clear"></div>

              <div class="tb-reviewsft">
                <div class="tb-rate-alert type-attention">购买前请查看该商品的 <a
                    href="#"
                    target="_blank"
                  >购物保障</a>，明确您的售后保障权益。</div>
              </div>

            </div>

          </el-tab-pane>
          <el-tab-pane
            label="猜你喜欢"
            name="third"
          >
				
						<div class="am-tab-panel am-fade am-active am-in">
            <div class="like">
              <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
                <li>
                  <div class="i-pic limit">
                    <img src="@/assets/images/imgsearch1.jpg">
                    <p>【良品铺子_开口松子】零食坚果特产炒货
                      <span>东北红松子奶油味</span></p>
                    <p class="price fl">
                      <b>¥</b>
                      <strong>298.00</strong>
                    </p>
                  </div>
                </li>
              </ul>
            </div>
            <div class="clear"></div>

            <!--分页 -->
            <ul class="am-pagination am-pagination-right">
              <li class="am-disabled"><a href="#">«</a></li>
              <li class="am-active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li><a href="#">»</a></li>
            </ul>
            <div class="clear"></div>

          </div>


					</el-tab-pane>
        </el-tabs>

        </div>

      </div>

      <div class="clear"></div>

      <div class="footer">
        <div class="footer-hd">
          <p>
            <a href="#">商城首页</a>
            <b>|</b>
            <a href="#">支付宝</a>
            <b>|</b>
            <a href="#">物流</a>
          </p>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
import { goodsDetailList, querySpuById, queryBrandById, queryGroupBySpuId, queryParamByCid,addCart } from '@/api/item'
export default {
  name: 'ListMain',
  data() {
    return {
      value2: null,
      value3: null,
      value4: null,
      activeName: 'first',
      commondityNum: 1,
      stock: 1,
      items: [],
      spu: null,
      skus: null,
      detail: null,
      brand: null,
      specs: null,
      skuImg: null,
      parameters: null,
      packageStyle: null,
      cart:{
        skuId: null,
        price: null,
        num: null,
        title: null,
        newPrice: null,
        oldPrice: null,
        style: null,
        packageStyle: null,
        img: null
      },
      options2: [{
        value: '北京市',
        label: '北京市'
      }, {
        value: '天津市',
        label: '天津市'
      }, {
        value: '上海市',
        label: '上海市'
      }, {
        value: '重庆市',
        label: '重庆市'
      }, {
        value: '河北省',
        label: '河北省'
      }, {
        value: '山西省',
        label: '山西省'
      }, {
        value: '辽宁省',
        label: '辽宁省'
      }, {
        value: '吉林省',
        label: '吉林省'
      }, {
        value: '江苏省',
        label: '江苏省'
      }, {
        value: '安徽省',
        label: '安徽省'
      }, {
        value: '福建省',
        label: '福建省'
      }, {
        value: '江西省',
        label: '江西省'
      }, {
        value: '山东省',
        label: '山东省'
      }],
      options3: [{
        value: '福州市',
        label: '福州市'
      }, {
        value: '厦门市',
        label: '厦门市'
      }, {
        value: '漳州市',
        label: '漳州市'
      }, {
        value: '泉州市',
        label: '泉州市'
      }, {
        value: '三明市',
        label: '三明市'
      }],
      options4: [{
        value: '思明区',
        label: '思明区'
      }, {
        value: '海沧区',
        label: '海沧区'
      }, {
        value: '湖里区',
        label: '湖里区'
      }, {
        value: '集美区',
        label: '集美区'
      }, {
        value: '同安区',
        label: '同安区'
      }]
    }
  },
  methods: {
    /* goodsDetailList() {
      let goodsId = this.$route.params.goodsId
      goodsDetailList(goodsId).then(response => {
        this.items = response.result.taste
      })
    }, */
    querySpuById() {
      querySpuById(localStorage.getItem('spuId')).then(response => {
        let data = response.result
        console.log(data)
        this.spu = data
        this.skus = data.skus
        this.skuImg = data.img.split(',')
        
        // this.queryBrandById(data.brandId)
        this.queryGroupBySpuId(data.id)
      })
    },
    queryBrandById(brandId) {
      queryBrandById(brandId).then(response => {

      })
    },
    queryGroupBySpuId(spuId) {
      queryGroupBySpuId(spuId).then(response => {
        let data = response.result
        this.parameters = data
      })
    },
    queryParamByCid(cid) {
      queryParamByCid(cid).then(response => {
        let data = response.result
        this.parameters.params = data
      })
    },
    isSelect(index) {
      this.$('.skus').removeClass('selected')
      this.$('.skus').eq(index).addClass('selected')
    },
    isPackagesSelect(index) {
      if(index===0){
        this.packageStyle = '手袋单人份'
      }else if(index===1){
        this.packageStyle = '礼盒双人份'
      }else{
        this.packageStyle = '全家福礼包'
      }
      this.$('.packages').removeClass('selected')
      this.$('.packages').eq(index).addClass('selected')
    },
    // 购物车数据加入redis中
    addCart (cart) {
      addCart(cart).then(response => {
        
      })
    },
    /* 加入购物车 */
    addCar(){
      if(localStorage.getItem('user')){
        this.cart.skuId = this.spu.id
        this.cart.price = this.spu.skus[0].price
        this.cart.num = this.commondityNum
        this.cart.title = this.spu.title
        this.cart.newPrice = this.spu.skus[0].price
        this.cart.oldPrice = this.spu.skus[0].old_price
        this.cart.packageStyle = this.packageStyle
        this.cart.style = this.spu.skus[0].style
        this.cart.img = this.spu.skus[0].img
        this.addCart(this.cart)
      }else{
        let $this = this
        let carts = localStorage.getItem('cars') || []
        let cart = JSON.parse(localStorage.getItem('cars'))
        let spu = this.spu
        let commondityNum = this.commondityNum

        if( cart && cart[0].skuId === spu.id){
          cart[0].num += commondityNum
          localStorage.setItem('cars',JSON.stringify(cart))
        }else{
          cart = {
            skuId: spu.id,
            price: spu.skus[0].price,
            num: commondityNum,
            title: spu.title,
            newPrice: spu.skus[0].price,
            oldPrice: spu.skus[0].old_price,
            packageStyle: $this.packageStyle,
            style: spu.skus[0].style,
            img: spu.skus[0].img
          }
          carts.push(cart)
          localStorage.setItem('cars',JSON.stringify(carts))
        }
      } 
    }
  },
  mounted() {
    this.querySpuById()
    this.isPackagesSelect()
  }
}
</script>

<style lang="less" scoped>
.freight {
  width: 100%;
}
#clearcontent {
  .box {
    width: auto !important;
  }
}
</style>
