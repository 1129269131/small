<template>
  <div>
    <Top></Top>
    <div>
      <div class="take-delivery">
        <div class="status">
          <h2>您已成功付款</h2>
          <div class="successInfo">
            <ul>
              <li>付款金额<em>¥{{orderInfo.actualPay}}</em></li>
              <div class="user-info">
                <p>收货人：{{orderInfo.addressInfo.receiver}}</p>
                <p>联系电话：{{orderInfo.addressInfo.receiverMobile}}</p>
                <p>收货地址：{{orderInfo.addressInfo.receiverState}} {{orderInfo.addressInfo.receiverCity}} {{orderInfo.addressInfo.receiverDistric}} {{orderInfo.addressInfo.receiverAddress}}</p>
              </div>
              请认真核对您的收货信息，如有错误请联系客服

            </ul>
            <div class="option">
              <span class="info">您可以</span>
              <a
                href="../person/order.html"
                class="J_MakePoint"
              >查看<span>已买到的宝贝</span></a>
              <a
                href="../person/orderinfo.html"
                class="J_MakePoint"
              >查看<span>交易详情</span></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Top from '../top/Index'
import Footer from '../footer/Index'
export default {
  name: 'Success',
  components: {
    Top,
    Footer
  },
  data() {
    return {
        orderInfo: null
    }
  },
  methods: {

  },
  mounted(){
      this.orderInfo = JSON.parse(localStorage.getItem('orderInfo'))
  }
}
</script>

<style lang="less" scoped>
.footer {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
}
</style>
