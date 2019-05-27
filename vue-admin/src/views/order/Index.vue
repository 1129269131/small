<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">订单管理</h1>
      </div>
    </div>
    <div class="page-content-wrapper">
      <el-card
        class="box-card"
        shadow="never"
      >
        <div class="search-panel">
          <el-form
            :inline="true"
            :model="formInline"
            size="small"
            class="demo-form-inline"
          >
            <el-form-item label="">
              <el-input v-model="ordersDetail.orderId" placeholder="请输入订单信息"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button @click="queryOrderDetail()" type="primary">查询</el-button>
              <el-button @click="reset()">重置</el-button>
              <el-button
                class="export-btn"
                type="text"
                icon="el-icon-cms-export"
              ></el-button>
            </el-form-item>
          </el-form>
        </div>
        <div class="content-panel">
          <el-table
            :data="ordersDetailList"
            style="width: 100%"
          >
            <el-table-column
              prop="id"
              label="订单详情Id"
            >
            </el-table-column>
            <el-table-column
              prop="orderId"
              label="订单Id"
            >
            </el-table-column>
            <el-table-column
              prop="skuId"
              label="skuId"
            >
            </el-table-column>
            <el-table-column
              prop="title"
              label="商品信息"
            >
            </el-table-column>
            <el-table-column
              prop="price"
              label="价格"
            >
            </el-table-column>
            <el-table-column
              prop="num"
              label="数量"
            >
            </el-table-column>
            <el-table-column
              prop="style"
              label="口味"
            >
            </el-table-column>
            <el-table-column
              prop="packageStyle"
              label="包装类型"
            >
            </el-table-column>
            
            <!-- <el-table-column
              prop="stringTime"
              label="创建时间"
            >
            </el-table-column> -->
            <el-table-column label="操作">
              <template slot-scope="scope">
                <el-button
                  type="text"
                  size="small"
                   @click="deleteOrdersDetail(scope.row)"
                >
                  删除
                </el-button>
              </template>
            </el-table-column>
          </el-table>
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
import { queryOrderDetail,deleteUser,deleteOrdersDetail } from '@/api/admin'
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'Order',
  components: {
    BaseBreadcrumb
  },
  data () {
    return {
      moreSolution: false,
      formInline: {
        user: '',
        region: '',
        expire: new Date()
      },
      ordersDetail: {
          orderId: null
      },
      ordersDetailList: null
    }
  },
  methods:{
      /* 查询订单 */
    queryOrderDetail() {
      queryOrderDetail(this.ordersDetail).then(response => {
        this.ordersDetailList = response.data.result
      })
    },
    /* 删除用户 */
    deleteOrdersDetail(row){
        deleteOrdersDetail(row).then(response => {
            this.queryOrderDetail()
            this.$message.success('订单已删除')
        }).catch(error => {
            this.$message.error('订单删除失败')
        })
    },
    /* 重置按钮 */
    reset(){
        this.ordersDetail.orderId = null
    }
  },
  mounted() {
    this.queryOrderDetail()
  }
}
</script>

<style lang="less" scoped>
@keyframes statusProcessing {
  0% {
    transform: scale(0.8);
    opacity: 0.5;
  }
  to {
    transform: scale(2.4);
    opacity: 0;
  }
}
.statusText {
  margin-left: 8px;
}
</style>
