<template>
  <div class="user-order">

    <!--标题 -->
    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
    </div>
    <hr>

    <div
      class="am-tabs am-tabs-d2 am-margin"
      data-am-tabs=""
    >
      <el-tabs
        v-model="activeName"
        @tab-click="handleClick"
      >
        <el-tab-pane
          label="所有订单"
          name="first"
        >
          <div
            data-v-6df06484=""
            class="order-status3"
          >
            <div
              data-v-6df06484=""
              class="order-title"
            >
              <div
                data-v-6df06484=""
                class="dd-num"
              >订单编号：<a
                  data-v-6df06484=""
                  href="javascript:;"
                >1601430</a></div><span data-v-6df06484="">成交时间：2015-12-20</span>
            </div>
            <div
              data-v-6df06484=""
              class="order-content"
            >
              <div
                data-v-6df06484=""
                class="order-left"
              >
                <ul
                  data-v-6df06484=""
                  class="item-list"
                >
                  <li
                    data-v-6df06484=""
                    class="td td-item"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-pic"
                    ><a
                        data-v-6df06484=""
                        href="#"
                        class="J_MakePoint"
                      ><img
                          data-v-6df06484=""
                          src="/img/62988.jpg_80x80.9f79d4dd.jpg"
                          class="itempic J_ItemImg"
                        ></a></div>
                    <div
                      data-v-6df06484=""
                      class="item-info"
                    >
                      <div
                        data-v-6df06484=""
                        class="item-basic-info"
                      ><a
                          data-v-6df06484=""
                          href="#"
                        >
                          <p data-v-6df06484="">礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                          <p
                            data-v-6df06484=""
                            class="info-little"
                          ><span>颜色分类：李清照</span> <span>尺码：均码</span></p>
                        </a></div>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-price"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-price"
                    >
                      333.00
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-number"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-number"
                    ><span data-v-6df06484="">×</span>2
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-operation"
                  >
                  </li>
                </ul>
              </div>
              <div
                data-v-6df06484=""
                class="order-right"
              >
                <li
                  data-v-6df06484=""
                  class="td td-amount"
                >
                  <div
                    data-v-6df06484=""
                    class="item-amount"
                  >
                    合计：676.00
                    <p data-v-6df06484="">含运费：<span data-v-6df06484="">10.00</span></p>
                  </div>
                </li>
                <div
                  data-v-6df06484=""
                  class="move-right"
                >
                  <li
                    data-v-6df06484=""
                    class="td td-status"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-status"
                    >
                      <p
                        data-v-6df06484=""
                        class="Mystatus"
                      >卖家已发货</p>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-change"
                  >
                    <div
                      data-v-6df06484=""
                      class="am-btn am-btn-danger anniu"
                    >
                      确认收货</div>
                  </li>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane
          label="待付款"
          name="second"
        >配置管理</el-tab-pane>
        <el-tab-pane
          label="待发货"
          name="third"
        >角色管理</el-tab-pane>
        <el-tab-pane
          label="待评价"
          name="fourth"
        >定时任务补偿</el-tab-pane>
      </el-tabs>

    </div>
  </div>
</template>

<script>
import { queryOrder } from '@/api/item'
export default {
  name: 'Order',
  data() {
    return {
      activeName: 'first',
      order:{
        uid: null,
        orderStatus: null
      }
    }
  },
  methods: {
    handleClick(){
      this.order.uid = 1
      if(this.activeName === 'first'){
        this.order.orderStatus = 1
          queryOrder(this.order).then(response => {

      })
      }
    }
  },
  mounted() {
    this.handleClick()
  }
}
</script>

<style lang="less" scoped>
.info-little{
  width: 250px;
  top: 70px;
  left: 0;
  span{
    display: inline;
  }
}
.item-basic-info{
  margin-top: 0;
}
</style>
