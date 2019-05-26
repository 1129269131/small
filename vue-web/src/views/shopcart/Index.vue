<template>
  <div>
    <Top></Top>
    <div>
      <div class="concent">
        <div id="cartTable">
          <div class="cart-table-th">
            <div class="cart-table-head" style="float: right">
              <span>单价</span>
              <span>数量</span>
              <span>金额</span>
              <span>操作</span>
            </div>
          </div>
          <div class="clear"></div>

          <div class="bundle  bundle-last ">
            <div class="bundle-hd">
              <div class="bd-promos">
                <div class="bd-has-promo">已享优惠:<span class="bd-has-promo-content">省￥19.50</span>&nbsp;&nbsp;</div>
                <div class="act-promo">
                  <a
                    href="#"
                    target="_blank"
                  >第二支半价，第三支免费<span class="gt">&gt;&gt;</span></a>
                </div>
                <span class="list-change theme-login">编辑</span>
              </div>
            </div>
            <div class="clear"></div>
            <div class="bundle-main">
              <ul class="item-content goodsList clearfix">
                <div v-for="(item,index) in cartData">
                <li>
                  <div class="cart-checkbox ">
                    <input
                      class="check toCheck"
                      @click="checkCommodity(index,item)"
                      type="checkbox"
                    />
                    <!-- <label for="J_CheckBox_170037950254"></label> -->
                  </div>
                </li>
                <li>
                  <div class="item-pic">
                    <a
                      href="#"
                      target="_blank"
                      data-title=""
                      class="J_MakePoint"
                      data-point="tbcart.8.12"
                    >
                      <img
                        :src="require('@/assets/images/'+item.img)"
                        class="itempic J_ItemImg"
                      ></a>
                  </div>
                </li>
                <li class="item-info-li">
                  <div class="item-basic-info">
                    <a
                      href="#"
                      target="_blank"
                      title=""
                      class="item-title J_MakePoint"
                      data-point="tbcart.8.11"
                    >{{item.title}}</a>
                  </div>
                </li>
                <li>
                  <div class="item-props item-props-can">
                    <span class="sku-line">味道：{{item.style}} </span>
                    <span class="sku-line">包装：{{item.packageStyle}}</span>
                    <i class="theme-login am-icon-sort-desc"></i>
                  </div>
                </li>
                <li class="td td-price">
                  <div class="item-price price-promo-promo">
                    <div class="price-content">
                      <div class="price-line">
                        <em class="price-original">{{item.oldPrice}}</em>
                      </div>
                      <div class="price-line">
                        <em
                          class="J_Price price-now"
                          tabindex="0"
                        >{{item.newPrice}}</em>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <el-input-number
                    v-model="item.num"
                    :min="1"
                    :max="10"
                    @change="numberChange()"
                    style="width: 130px;margin-top: 15px"
                  ></el-input-number>
                </li>
                <li>
                  <div class="td-inner amountNumber">
											<em tabindex="0" class="J_ItemSum number">{{item.newPrice*item.num}}</em>
									</div>
                </li>
                <li>
                  <div class="td-inner delete-operation">
											<a href="javascript:;" data-point-url="#" class="delete">
                  删除</a>
									</div>
                </li>
                </div>
                </ul>
            </div>
          </div>

          <div class="clear"></div>

        </div>
        <div class="clear"></div>

        <div class="float-bar-wrapper">
          <div
            id="J_SelectAll2"
            class="select-all J_SelectAll"
          >
            <div class="cart-checkbox">
              <input
                class="check-all check"
                id="allSelect"
                name="select-all"
                value="true"
                type="checkbox"
              >
              <label for="J_SelectAllCbx2"></label>
            </div>
            <span>全选</span>
          </div>
          <div class="operations">
            <a
              href="#"
              hidefocus="true"
              class="deleteAll"
            >删除</a>
          </div>
          <div class="float-bar-right">
            <div class="amount-sum">
              <span class="txt">已选商品</span>
              <em id="J_SelectedItemsCount">{{item.selectedNum}}</em><span class="txt">件</span>
              <div class="arrow-box">
                <span class="selected-items-arrow"></span>
                <span class="arrow"></span>
              </div>
            </div>
            <div class="price-sum">
              <span class="txt">合计:</span>
              <strong class="price">¥<em id="J_Total">{{item.total}}</em></strong>
            </div>
            <div class="btn-area">
              <router-link :to="{ name: 'Pay', params: checkItems}">
              <a
                href="@"
                id="J_Go"
                class="submit-btn submit-btn-disabled"
                aria-label="请注意如果没有选择宝贝，将无法结算"
              >
                <span>结&nbsp;算</span></a>
              </router-link>
            </div>
          </div>

        </div>

      </div>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import { queryCartList } from '@/api/item'
import Top from '../top/Index'
import Footer from '../footer/Index'
export default {
  name: 'Shopcart',
  components: {
    Top,
    Footer
  },
  data() {
    return {
      commondityNum: 1,
      isChecked: true,
      cartData: null,
      checkItems: [],
      item: {
        selectedNum: 0,
        total: 0
      }
    }
  },
  methods: {
    /* 查看购物车 */
    checkCar(){
      if(localStorage.getItem('user')){
        queryCartList().then(response => {
          this.cartData = response.result
          console.log('-----')
          console.log(this.cartData)
        })
      }else{
        this.cartData = JSON.parse(localStorage.getItem('cars'))
      } 
      this.checkCommodity()
    },
    /* 选中商品 */
    checkCommodity(index,item){
      let currentItem = this.$('.toCheck').eq(index)
      let commodityItem = item
      if(currentItem.is(':checked')){
        this.checkItems.push(item)
      }else{
        this.checkItems = this.checkItems.filter(function (item, index) {
            return item.skuId != commodityItem.skuId
        })
      }
      //获取已选商品数量
      this.item.selectedNum = this.checkItems.length
      //获取合计
      let total = 0
      this.checkItems.forEach(function (item, index) {
        total += item.num*item.newPrice
      })
      this.item.total = total
    },
    /* 监听已选商品的数量变化 */
    numberChange(){
      //获取合计
      let total = 0
      this.checkItems.forEach(function (item, index) {
        total += item.num*item.newPrice
      })
      this.item.total = total
    },
    /* 监听全选 */
    allSelect(){
      let $this = this
      this.$('#allSelect').click(function(){
        if($this.$(this).is(':checked')){
          // $this.$('.toCheck').attr("checked","true")
          $this.$('.toCheck').prop("checked",true);
          $this.checkItems = $this.cartData
          //获取已选商品数量
          $this.item.selectedNum = $this.checkItems.length
          //获取合计
          let total = 0
          $this.checkItems.forEach(function (item, index) {
            total += item.num*item.newPrice
          })
          $this.item.total = total
        }else{
          // $this.$('.toCheck').attr("checked","false")
          $this.$('.toCheck').prop("checked",false);
          $this.checkItems = []
          //获取已选商品数量
          $this.item.selectedNum = 0
          //获取合计
          $this.item.total = 0
        }
      })
    }
  },
  mounted() {
    this.checkCar()
    this.allSelect()
  }
}
</script>

<style lang="less" scoped>
.td.td-item {
  padding-left: 30px;
}
.clearfix {
  clear: both;
}
.goodsList li {
  float: left;
}
.item-info-li {
  text-align: left;
  .item-basic-info {
    width: 200px !important;
    padding-right: 15px;
    a {
      width: 100%;
      float: left;
    }
  }
}
.item-props {
  padding-top: 20px;
}
.cart-table-head{
  float: right;
  span{
    display: inline-block;
    width: 115px;
  }
}
.amountNumber{
  width: 110px;
  margin-top: 25px;
  em{
    display: inline-block;
    width: 100%;
    text-align: center;
  }
}
.delete-operation{
  width: 110px;
  margin-top: 25px;
  a{
    display: inline-block;
    width: 100%;
    text-align: center
  }
}

.footer {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
}
</style>
