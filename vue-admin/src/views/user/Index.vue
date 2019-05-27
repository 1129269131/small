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
              <el-input v-model="user.username" placeholder="请输入用户名"></el-input>
            </el-form-item>
            <el-form-item>
              <el-button @click="queryUser()" type="primary">查询</el-button>
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
            :data="userList"
            style="width: 100%"
          >
            <el-table-column
              prop="username"
              label="用户名"
            >
            </el-table-column>
            <el-table-column
              prop="truename"
              label="真实姓名"
            >
            </el-table-column>
            <el-table-column
              prop="phone"
              label="手机号码"
            >
            </el-table-column>
            <el-table-column
              prop="stringSex"
              label="性别"
            >
            </el-table-column>
            <el-table-column
              prop="email"
              label="邮箱"
            >
            </el-table-column>
            <el-table-column
              prop="stringTime"
              label="创建时间"
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
import { queryUser,deleteUser } from '@/api/admin'
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'BasicSearchExample',
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
      user: {
          username: null
      },
      userList: null
    }
  },
  methods:{
      /* 查询用户 */
    queryUser() {
      queryUser(this.user).then(response => {
        this.userList = response.data.result
      })
    },
    /* 删除用户 */
    deleteUser(row){
        deleteUser(row).then(response => {
            this.queryUser()
            this.$message.success('用户已删除')
        }).catch(error => {
            this.$message.error('用户删除失败')
        })
    }
  },
  mounted() {
    this.queryUser()
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
