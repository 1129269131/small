<template>
  <div>
    <Top></Top>
    <div>
      <div class="paycont">
        <div class="address">
          <h3>确认收货地址 </h3>
          <div class="clear"></div>
          <ul>
            <div class="per-border"></div>
            <li v-for="(item,index) in addressList" @click="defaultAddr(item,index)" class="user-addresslist addressListLi">

              <div class="address-left">
                <div class="user DefaultAddr">

                  <span class="buy-address-detail">
                    <span class="buy-user">{{item.receiver}} </span>
                    <span class="buy-phone">{{item.receiverMobile}}</span>
                  </span>
                </div>
                <div class="default-address DefaultAddr">
                  <span class="buy-line-title buy-line-title-type">收货地址：</span>
                  <span class="buy--address-detail">
                    <span class="province">{{item.receiverState}}</span>
                    <span class="city">{{item.receiverCity}}</span>
                    <span class="dist">{{item.receiverDistric}}</span>
                    <span class="street">{{item.receiverAddress}}</span>
                  </span>

                </div>
                <!-- <ins class="deftip">默认地址</ins> -->
              </div>
              <div class="address-right">
                <a href="../person/address.html">
                  <span class="am-icon-angle-right am-icon-lg"></span></a>
              </div>
              <div class="clear"></div>

            </li>
            <div class="per-border"></div>

          </ul>

          <div class="clear"></div>
        </div>
        <!--物流 -->
        <div class="logistics">
          <h3>选择物流方式</h3>
          <ul class="op_express_delivery_hot">
            <li
              data-value="圆通"
              class="OP_LOG_BTN  shipping"
              @click="shipping(0,'圆通')"
            ><i
                class="c-gap-right"
                style="background-position:0px -468px"
              ></i>圆通<span></span></li>
            <li
              data-value="申通"
              class="OP_LOG_BTN  shipping"
              @click="shipping(1,'申通')"
            ><i
                class="c-gap-right"
                style="background-position:0px -1008px"
              ></i>申通<span></span></li>
            <li
              data-value="韵达"
              class="OP_LOG_BTN  shipping"
              @click="shipping(2,'韵达')"
            ><i
                class="c-gap-right"
                style="background-position:0px -576px"
              ></i>韵达<span></span></li>
            <li
              data-value="中通"
              class="OP_LOG_BTN shipping op_express_delivery_hot_last "
              @click="shipping(3,'中通')"
            ><i
                class="c-gap-right"
                style="background-position:0px -324px"
              ></i>中通<span></span></li>
            <li
              data-value="顺丰"
              class="OP_LOG_BTN shipping op_express_delivery_hot_bottom"
              @click="shipping(4,'顺丰')"
            ><i
                class="c-gap-right"
                style="background-position:0px -180px"
              ></i>顺丰<span></span></li>
          </ul>
        </div>
        <div class="clear"></div>

        <!--支付方式-->
        <div class="logistics">
          <h3>选择支付方式</h3>
          <ul class="pay-list">
            <li class="pay card" @click="pay(0)" data-value="银联"><img src="@/assets/images/wangyin.jpg">银联<span></span></li>
            <li class="pay qq " @click="pay(1)" data-value="微信"><img src="@/assets/images/weizhifu.jpg">微信<span></span></li>
            <li class="pay taobao" @click="pay(2)" data-value="支付宝"><img src="@/assets/images/zhifubao.jpg">支付宝<span></span></li>
          </ul>
        </div>
        <div class="clear"></div>

        <!--订单 -->
        <div class="concent">
          <div id="payTable">
            <h3>确认订单信息</h3>
            <div class="cart-table-th">
              <div class="wp">

                <div class="th th-item">
                  <div class="td-inner">商品信息</div>
                </div>
                <div class="th th-price">
                  <div class="td-inner">单价</div>
                </div>
                <div class="th th-amount">
                  <div class="td-inner">数量</div>
                </div>
                <div class="th th-sum">
                  <div class="td-inner">金额</div>
                </div>
                <div class="th th-oplist">
                  <div class="td-inner">配送方式</div>
                </div>

              </div>
            </div>
            <div class="clear"></div>

            <div class="bundle  bundle-last">

              <div class="bundle-main">
                <ul v-for=" (item,index) in commoditys" class="item-content clearfix">
                  <div class="pay-phone">
                    <li class="td td-item">
                      <div class="item-pic">
                        <a
                          href="#"
                          class="J_MakePoint"
                        >
                          <img
                            src="@/assets/images/kouhong.jpg_80x80.jpg"
                            class="itempic J_ItemImg"
                          ></a>
                      </div>
                      <div class="item-info">
                        <div class="item-basic-info" style="color:#000">
                          {{item.title}}
                        </div>
                      </div>
                    </li>
                    <li class="td td-info" style="margin-top:15px">
                      <div class="item-props">
                        <span class="sku-line">颜色：{{item.style}}</span>
                        <span class="sku-line">包装：{{item.packageStyle}}</span>
                      </div>
                    </li>
                    <li class="td td-price" style="margin-top: 40px">
                      <div class="item-price price-promo-promo">
                        <div class="price-content">
                          <em class="J_Price price-now">{{item.newPrice}}</em>
                        </div>
                      </div>
                    </li>
                  </div>
                  <li class="td td-amount">
                    <div class="amount-wrapper ">
                      <div class="item-amount ">
                        <span class="phone-title">购买数量</span>
                        <div class="sl">
                            <el-input-number
                                v-model="item.num"
                                :min="1"
                                :max="10"
                                @change="numberChange()"
                                style="width: 130px;margin-top: 15px"
                            ></el-input-number>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="td td-sum" style="margin-top: 40px">
                    <div class="td-inner">
                      <em
                        tabindex="0"
                        class="J_ItemSum number"
                      >{{item.newPrice*item.num}}</em>
                    </div>
                  </li>
                  <li class="td td-oplist">
                    <div class="td-inner">
                      <span class="phone-title">配送方式</span>
                      <div class="pay-logis" style="margin-top: 10px">
                        快递<b class="sys_item_freprice">10</b>元
                      </div>
                    </div>
                  </li>

                </ul>
                <div class="clear"></div>

              </div>

              <div class="clear"></div>
            </div>

            <div class="clear"></div>
            <div class="pay-total">
              <!--留言-->
              <div class="order-extra">
                <div class="order-user-info">
                  <div
                    id="holyshit257"
                    class="memo"
                  >
                    <label>买家留言：</label>
                    <input
                      type="text"
                      title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）"
                      placeholder="选填,建议填写和卖家达成一致的说明"
                      class="memo-input J_MakePoint c2c-text-default memo-close"
                      v-model="buyerMessage"
                    >
                    <div class="msg hidden J-msg">
                      <p class="error">最多输入500个字符</p>
                    </div>
                  </div>
                </div>

              </div>
              <div class="clear"></div>
            </div>
            <!--含运费小计 -->
            <div class="buy-point-discharge ">
              <p class="price g_price ">
                合计（含运费） <span>¥</span><em class="pay-sum">{{total}}</em>
              </p>
            </div>

            <!--信息 -->
            <div class="order-go clearfix">
              <div class="pay-confirm clearfix">
                <div class="box">
                  <div
                    tabindex="0"
                    id="holyshit267"
                    class="realPay"
                  ><em class="t">实付款：</em>
                    <span class="price g_price ">
                      <span>¥</span> <em
                        class="style-large-bold-red "
                        id="J_ActualFee"
                      >{{total}}</em>
                    </span>
                  </div>

                  <div
                    id="holyshit268"
                    class="pay-address"
                  >

                    <p class="buy-footer-address">
                      <span class="buy-line-title buy-line-title-type">寄送至：</span>
                      <span class="buy--address-detail">
                        <span class="province">{{currentAddress.receiverState}} </span>
                        <span class="city">{{currentAddress.receiverCity}} </span>
                        <span class="dist">{{currentAddress.receiverDistric}} </span>
                        <span class="street">{{currentAddress.receiverAddress}}</span>
                      </span>

                    </p>
                    <p class="buy-footer-address">
                      <span class="buy-line-title">收货人：</span>
                      <span class="buy-address-detail">
                        <span class="buy-user">{{currentAddress.receiver}} </span>
                        <span class="buy-phone">{{currentAddress.receiverMobile}}</span>
                      </span>
                    </p>
                  </div>
                </div>

                <div
                  id="holyshit269"
                  class="submitOrder"
                >
                  <div class="go-btn-wrap">
                    <a
                      id="J_Go"
                      href="#"
                      class="btn-go"
                      tabindex="0"
                      title="点击此按钮，提交订单"
                      @click="addOrder()"
                    >提交订单</a>
                  </div>
                </div>
                <div class="clear"></div>
              </div>
            </div>
          </div>

          <div class="clear"></div>
        </div>
      </div>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import { queryAddress,addOrder } from '@/api/item'
import Top from '../top/Index'
import Footer from '../footer/Index'
export default {
  name: 'Pay',
  components: {
    Top,
    Footer
  },
  data() {
    return {
        commoditys: null,
        addressList: null,
        buyerMessage: '',
        orders: {
            uid: 1,
            addressId: null,
            shippingName: null,
            paymentType: null,
            buyerMessage: null,
            postFee: null,
            totalPay: null,
            actualPay: null,
            ordersDetails: []
        },
        currentAddress: null,
        total: null
    }
  },
  methods: {
      /* 查询用户地址信息 */
      queryAddress(){
          queryAddress(1).then(response => {
              this.addressList = response.result
              this.currentAddress = this.addressList[0]
        })
      },
      /* 添加地址选中效果 */
      defaultAddr(item,index){
        this.$('.addressListLi').removeClass('defaultAddr')
        this.$('.addressListLi').eq(index).addClass('defaultAddr')
        this.orders.addressId = item.id   
        this.currentAddress = item
      },
      /* 点击添加物流 */
      shipping(index,shippingName){
        let $ = this.$
        $('.shipping').removeClass('selected')
        $('.shipping').eq(index).addClass('selected')
        this.orders.shippingName = shippingName
      },
      /* 点击支付方式 */
      pay(index){
        let $ = this.$
        $('.pay').removeClass('selected')
        $('.pay').eq(index).addClass('selected')
        this.orders.paymentType = index
      },
      /* 监听已选商品的数量变化 */
        numberChange(){
        //获取合计
        let total = 0
        this.commoditys.forEach(function (item, index) {
            total += item.num*item.newPrice
        })
        this.total = total
        },
        /* 添加订单 */
        addOrder(){
            this.orders.buyerMessage = this.buyerMessage
            this.orders.totalPay = this.total
            this.orders.actualPay = this.total
            this.orders.ordersDetails = this.commoditys
            addOrder(this.orders).then(response => {
               console.log('--order--')
               console.log(response)
            })
        }
  },
  mounted(){
      this.commoditys = this.$route.params
      this.numberChange()
      this.queryAddress()
  }
}
</script>

<style lang="less">
.tem-basic-info{
    margin: 0!important;
    color: #000;
    padding-top: -20px!important;
}
.item-info{
    margin-left: 0!important;
}
</style>
