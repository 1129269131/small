<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">用户信息管理</h1>
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
              <el-input v-model="userNameInput" placeholder="请输入用户名"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary">查询</el-button>
              <el-button>重置</el-button>
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
            :data="tableData"
            style="width: 100%"
          >
            <el-table-column
              prop="role"
              label="用户名"
            >
            </el-table-column>
            <el-table-column
              prop="account"
              label="真实姓名"
            >
            </el-table-column>
            <el-table-column
              prop="name"
              label="手机号码"
            >
            </el-table-column>
            <el-table-column
              prop="sex"
              label="性别"
            >
            </el-table-column>
            <el-table-column
              prop="idnumber"
              label="邮箱"
            >
            </el-table-column>
            <el-table-column
              prop="contact"
              label="创建时间"
            >
            </el-table-column>
            <el-table-column label="操作">
              <template slot-scope="scope">
                <el-button
                  type="text"
                  size="small"
                >
                  移除
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
import { querySpuById } from '@/api/admin'
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'BasicSearchExample',
  components: {
    BaseBreadcrumb
  },
  data () {
    return {
      moreSolution: false,
      userNameInput: '',
      formInline: {
        user: '',
        region: '',
        expire: new Date()
      },
      tableData: [
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '女', status: 0, expire: '2019-01-01 16:36:15' },
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '男', status: 1, expire: '2019-01-02 16:36:15' },
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '男', status: 2, expire: '2019-01-03 16:36:15' },
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '女', status: 3, expire: '2019-01-04 16:36:15' },
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '女', status: 0, expire: '2019-01-05 16:36:15' },
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '男', status: 1, expire: '2019-01-06 16:36:15' },
        { role: '默认巡游车企业角色', account: 'gallonce', name: 'hades', sex: '女', status: 2, expire: '2019-01-07 16:36:15' }
      ]
    }
  },
  methods:{
    querySpuById() {
      querySpuById(1).then(response => {

      })
    }
  },
  mounted() {
    this.querySpuById()
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
