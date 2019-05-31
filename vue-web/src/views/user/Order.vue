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
            v-for="(item,index) in orderList"
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
                >{{item.id}}</a></div><span data-v-6df06484="">成交时间：{{item.stringTime}}</span>
            </div>
            <div
              data-v-6df06484=""
              class="order-content"
              v-for="(list,index) in item.ordersDetails"
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
                          :src="require('@/assets/images/'+list.img)"
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
                          <p data-v-6df06484="">{{list.title}} </p>
                          <p
                            data-v-6df06484=""
                            class="info-little"
                          >口味：{{list.style}} 包装：{{list.packageStyle}}</p>
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
                      {{list.price/100}}
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-number"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-number"
                    ><span data-v-6df06484="">×</span>{{list.num}}
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
                    合计：{{item.actualPay/100}}
                    <p data-v-6df06484="">含运费：<span data-v-6df06484="">{{item.postFee}}</span></p>
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
                      >{{item.orderInfo}}</p>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-change"
                  >
                    <div
                      data-v-6df06484=""
                      class="am-btn am-btn-danger anniu"
                      @click="orderOperator(item)"
                    >
                      {{item.orderBtnInfo}}</div>
                  </li>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane
          label="待付款"
          name="second"
        >

          <div
            data-v-6df06484=""
            class="order-status3"
            v-for="(item,index) in orderList"
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
                >{{item.id}}</a></div><span data-v-6df06484="">成交时间：{{item.stringTime}}</span>
            </div>
            <div
              data-v-6df06484=""
              class="order-content"
              v-for="(list,index) in item.ordersDetails"
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
                          :src="require('@/assets/images/'+list.img)"
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
                          <p data-v-6df06484="">{{list.title}} </p>
                          <p
                            data-v-6df06484=""
                            class="info-little"
                          >口味：{{list.style}} 包装：{{list.packageStyle}}</p>
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
                      {{list.price/100}}
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-number"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-number"
                    ><span data-v-6df06484="">×</span>{{list.num}}
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
                    合计：{{item.actualPay/100}}
                    <p data-v-6df06484="">含运费：<span data-v-6df06484="">{{item.postFee}}</span></p>
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
                      >{{item.orderInfo}}</p>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-change"
                  >
                    <div
                      data-v-6df06484=""
                      class="am-btn am-btn-danger anniu"
                      @click="orderOperator(item)"
                    >
                      {{item.orderBtnInfo}}</div>
                  </li>
                </div>
              </div>
            </div>
          </div>

        </el-tab-pane>
        <el-tab-pane
          label="待发货"
          name="third"
        >
          <div
            data-v-6df06484=""
            class="order-status3"
            v-for="(item,index) in orderList"
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
                >{{item.id}}</a></div><span data-v-6df06484="">成交时间：{{item.stringTime}}</span>
            </div>
            <div
              data-v-6df06484=""
              class="order-content"
              v-for="(list,index) in item.ordersDetails"
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
                          :src="require('@/assets/images/'+list.img)"
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
                          <p data-v-6df06484="">{{list.title}} </p>
                          <p
                            data-v-6df06484=""
                            class="info-little"
                          >口味：{{list.style}} 包装：{{list.packageStyle}}</p>
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
                      {{list.price/100}}
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-number"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-number"
                    ><span data-v-6df06484="">×</span>{{list.num}}
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
                    合计：{{item.actualPay/100}}
                    <p data-v-6df06484="">含运费：<span data-v-6df06484="">{{item.postFee}}</span></p>
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
                      >{{item.orderInfo}}</p>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-change"
                  >
                    <div
                      data-v-6df06484=""
                      class="am-btn am-btn-danger anniu"
                      @click="orderOperator(item)"
                    >
                      {{item.orderBtnInfo}}</div>
                  </li>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane
          label="待收货"
          name="fourth"
        >
          <div
            data-v-6df06484=""
            class="order-status3"
            v-for="(item,index) in orderList"
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
                >{{item.id}}</a></div><span data-v-6df06484="">成交时间：{{item.stringTime}}</span>
            </div>
            <div
              data-v-6df06484=""
              class="order-content"
              v-for="(list,index) in item.ordersDetails"
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
                          :src="require('@/assets/images/'+list.img)"
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
                          <p data-v-6df06484="">{{list.title}} </p>
                          <p
                            data-v-6df06484=""
                            class="info-little"
                          >口味：{{list.style}} 包装：{{list.packageStyle}}</p>
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
                      {{list.price/100}}
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-number"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-number"
                    ><span data-v-6df06484="">×</span>{{list.num}}
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
                    合计：{{item.actualPay/100}}
                    <p data-v-6df06484="">含运费：<span data-v-6df06484="">{{item.postFee}}</span></p>
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
                      >{{item.orderInfo}}</p>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-change"
                  >
                    <div
                      data-v-6df06484=""
                      class="am-btn am-btn-danger anniu"
                      @click="orderOperator(item)"
                    >
                      {{item.orderBtnInfo}}</div>
                  </li>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
        <el-tab-pane
          label="待评价"
          name="fifth"
        >
          <div
            data-v-6df06484=""
            class="order-status3"
            v-for="(item,index) in orderList"
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
                >{{item.id}}</a></div><span data-v-6df06484="">成交时间：{{item.stringTime}}</span>
            </div>
            <div
              data-v-6df06484=""
              class="order-content"
              v-for="(list,index) in item.ordersDetails"
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
                          :src="require('@/assets/images/'+list.img)"
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
                          <p data-v-6df06484="">{{list.title}} </p>
                          <p
                            data-v-6df06484=""
                            class="info-little"
                          >口味：{{list.style}} 包装：{{list.packageStyle}}</p>
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
                      {{list.price/100}}
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-number"
                  >
                    <div
                      data-v-6df06484=""
                      class="item-number"
                    ><span data-v-6df06484="">×</span>{{list.num}}
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
                    合计：{{item.actualPay/100}}
                    <p data-v-6df06484="">含运费：<span data-v-6df06484="">{{item.postFee}}</span></p>
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
                      >{{item.orderInfo}}</p>
                    </div>
                  </li>
                  <li
                    data-v-6df06484=""
                    class="td td-change"
                  >
                    <div
                      data-v-6df06484=""
                      class="am-btn am-btn-danger anniu"
                      @click="orderOperator(item)"
                    >
                      {{item.orderBtnInfo}}</div>
                  </li>
                </div>
              </div>
            </div>
          </div>
        </el-tab-pane>
      </el-tabs>

    </div>
    <el-dialog
      title="评价"
      :visible.sync="dialogVisible"
      width="30%"
      :before-close="handleClose">
      <span>评价商品</span>
      <el-input
        type="textarea"
        :rows="1"
        placeholder="请输入评价内容"
        v-model="textarea">
      </el-input>
      <span>评分</span>
      <el-rate
        v-model="rateValue"
        show-text>
      </el-rate>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="addComment()">确 定</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
import { queryOrder,addComment } from '@/api/item'
export default {
  name: 'Order',
  data() {
    return {
      activeName: 'first',
      order: {
        uid: null,
        orderStatus: null
      },
      orderList: null,
      dialogVisible: false,
      textarea: '',
      rateValue: null,
      ratingItem: {
        uid: null,
        skuId: null,
        commentRate: null,
        commentContent: null
      }
    }
  },
  methods: {
    /* 订单管理选项卡切换 */
    handleClick() {
      this.order.uid = 1
      if (this.activeName === 'first') {
        this.order.orderStatus = 4
        queryOrder(this.order).then(response => {
          this.orderList = response.result
        })
      } else if (this.activeName === 'second') {
        this.order.orderStatus = 0
        queryOrder(this.order).then(response => {
          this.orderList = response.result
        })
      } else if (this.activeName === 'third') {
        this.order.orderStatus = 1
        queryOrder(this.order).then(response => {
          this.orderList = response.result
        })
      } else if (this.activeName === 'fourth') {
        this.order.orderStatus = 2
        queryOrder(this.order).then(response => {
          this.orderList = response.result
        })
      } else {
        this.order.orderStatus = 3
        queryOrder(this.order).then(response => {
          this.orderList = response.result
        })
      }
    },
    /* 订单按钮点击 */
    orderOperator(item) {
      if (item.orderStatus === 0) {

      } else if (item.orderStatus === 1) {
        this.$message.success('已提醒卖家尽快发货！')
      } else if (item.orderStatus === 2) {

      } else if (item.orderStatus === 3) {
        this.dialogVisible = true
        this.ratingItem.uid = item.uid
        this.ratingItem.skuId = item.ordersDetails[0].skuId
      }
    },
    /* 添加商品评价 */
    addComment(){
      this.dialogVisible = false
      this.ratingItem.commentRate = this.rateValue
      this.ratingItem.commentContent = this.textarea
      addComment(this.ratingItem).then(response => {
        this.$message.success(`评价成功`)
      }).catch(error => {
        this.$message.error(`评价失败：${error.message}`)
      })
    }
  },
  mounted() {
    this.handleClick()
  }
}
</script>

<style lang="less" scoped>
.info-little {
  width: 250px;
  top: 70px;
  left: 0;
  span {
    display: inline;
  }
}
.item-basic-info {
  margin-top: 0;
}
.item-info {
  width: 250px;
}
.Mystatus {
  margin-top: 30px;
}
</style>
