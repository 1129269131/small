<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">商品信息管理</h1>
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
              <el-input v-model="sku.title" placeholder="请输入商品信息"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button @click="querySku()" type="primary">查询</el-button>
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
            :data="skuList"
            style="width: 100%"
          >
            <el-table-column
              prop="style"
              label="商品分类"
            >
            </el-table-column>
            <el-table-column
              prop="title"
              label="商品信息"
            >
            </el-table-column>
            <el-table-column
              prop="price"
              label="商品价格"
            >
            </el-table-column>
            <el-table-column
              prop="old_price"
              label="商品原价"
            >
            </el-table-column>
            <el-table-column
              prop="img"
              label="商品图片"
            >
            </el-table-column>
            <el-table-column
              prop="stringTime"
              label="添加时间"
            >
            </el-table-column>
            <el-table-column label="操作">
              <template slot-scope="scope">
                <el-button
                  type="text"
                  size="small"
                   @click="deleteUser(scope.row)"
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
import { querySku } from '@/api/admin'
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'Goods',
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
      sku: {
          title: null
      },
      skuList: null
    }
  },
  methods:{
      /* 查询sku */
    querySku() {
      querySku(this.sku).then(response => {
        this.skuList = response.data.result
      })
    },
    /* 删除用户 */
    /* deleteUser(row){
        deleteUser(row).then(response => {
            this.queryUser()
            this.$message.success('用户已删除')
        }).catch(error => {
            this.$message.error('用户删除失败')
        })
    }, */
    /* 重置按钮 */
    reset(){
        this.sku.title = null
    }
  },
  mounted() {
    this.querySku()
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
