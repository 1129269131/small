<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <base-breadcrumb class="page-title-bar-breadcrumb"></base-breadcrumb>
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">{{ $t(`routes.${$route.meta.title}`) }}</h1>
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
            <el-form-item label="规则名称">
              <el-input
                v-model="formInline.user"
                placeholder="规则名称"
              ></el-input>
            </el-form-item>
            <el-form-item label="使用状态">
              <el-select
                v-model="formInline.region"
                placeholder="使用状态"
              >
                <el-option
                  label="关闭"
                  value="close"
                ></el-option>
                <el-option
                  label="运行中"
                  value="running"
                ></el-option>
              </el-select>
            </el-form-item>
            <el-form-item label="有效期">
              <el-date-picker
                v-model="formInline.expire"
                type="date"
                placeholder="选择日期"
              >
              </el-date-picker>
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
          <!-- <div class="search-form-more">
            <div
              class="search-form-more-text"
              @click="moreSolution = !moreSolution"
            >更多条件</div>
            <div
              :class="['search-form-more-icon', moreSolution ? 'el-icon-cms-up': 'el-icon-cms-down']"
              @click="moreSolution = !moreSolution"
            ></div>
          </div> -->
        </div>
        <div class="content-panel">
          <el-table
            :data="tableData"
            style="width: 100%"
          >
            <el-table-column
              prop="role"
              label="所属角色"
            >
            </el-table-column>
            <el-table-column
              prop="account"
              label="用户名"
            >
            </el-table-column>
            <el-table-column
              prop="name"
              label="真实姓名"
            >
            </el-table-column>
            <el-table-column
              prop="sex"
              label="性别"
            >
            </el-table-column>
            <el-table-column
              prop="idnumber"
              label="身份证号"
            >
            </el-table-column>
            <el-table-column
              prop="contact"
              label="联系方式"
            >
            </el-table-column>
            <el-table-column
              prop="expire"
              label="账户有效期止"
            >
            </el-table-column>
            <el-table-column label="状态">
              <template slot-scope="scope">
                <span :class="['status-dot', statusClass[scope.row.status], scope.row.status === 1 ? 'status-dot-processing' : '']"></span>
                <span class="statusText">{{statusText[scope.row.status]}}</span>
              </template>
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
      statusText: ['禁用', '启用', '删除', '异常'],
      statusClass: ['status-dot-danger', 'status-dot-primary', 'status-dot-default', 'status-dot-warning'],
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
