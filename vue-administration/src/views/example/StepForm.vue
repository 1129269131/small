<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <base-breadcrumb class="page-title-bar-breadcrumb"></base-breadcrumb>
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">{{ $t(`routes.${$route.meta.title}`) }}</h1>
      </div>
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-desc">表单页用于向用户收集或验证信息，基础表单常见于数据项较少的表单场景。</h1>
      </div>
    </div>
    <div class="page-content-wrapper">
      <el-card
        class="box-card"
        shadow="never"
      >
        <el-row>
          <el-col
            :span="16"
            :offset="4"
          >
            <el-steps
              :active="active"
              finish-status="success"
              simple
              style="margin-bottom: 20px"
            >
              <el-step title="填写转账信息"></el-step>
              <el-step title="确认转账信息"></el-step>
              <el-step title="完成"></el-step>
            </el-steps>
          </el-col>
          <div
            class="step-content-wrapper"
            style="margin-top: 20px;"
          >
            <el-col
              :span="8"
              :offset="8"
            >
              <div
                class="step-content"
                v-if="active === 0"
              >
                <el-form
                  ref="form"
                  :model="form"
                  label-width="100px"
                  size="small"
                >
                  <el-form-item label="付款账户">
                    <el-select
                      v-model="form.account"
                      placeholder="请选择付款账户"
                    >
                      <el-option
                        label="ant-design@alipay.com"
                        value="ant-design@alipay.com"
                      ></el-option>
                    </el-select>
                  </el-form-item>
                  <el-form-item label="收款账户">
                    <div class="form-group">
                      <el-select
                        v-model="form.incomeAccountType"
                        placeholder="请选择收款账户类型"
                      >
                        <el-option
                          label="支付宝"
                          value="支付宝"
                        ></el-option>
                        <el-option
                          label="银行账户"
                          value="银行账户"
                        ></el-option>
                      </el-select>
                      <el-input v-model="form.incomeAccount"></el-input>
                    </div>
                  </el-form-item>
                  <el-form-item label="收款人姓名">
                    <el-input v-model="form.incomeName"></el-input>
                  </el-form-item>
                  <el-form-item label="转账金额">
                    <el-input v-model="form.amount">
                      <template slot="prefix">￥</template>
                    </el-input>
                  </el-form-item>
                  <el-form-item>
                    <el-button
                      type="primary"
                      @click="next"
                    >下一步</el-button>
                  </el-form-item>
                </el-form>
              </div>
              <div
                class="step-content"
                v-if="active === 1"
              >
                <el-alert
                  type="info"
                  description="确认转账后，资金将直接打入对方账户，无法退回。"
                  show-icon
                  style="margin-bottom: 15px;"
                >
                </el-alert>
                <el-form
                  ref="form"
                  :model="form"
                  label-width="100px"
                  size="small"
                >
                  <el-form-item label="付款账户:">
                    {{ form.account }}
                  </el-form-item>
                  <el-form-item label="收款账户:">
                    {{ form.incomeAccount }}
                  </el-form-item>
                  <el-form-item label="收款人姓名:">
                    {{ form.incomeName }}
                  </el-form-item>
                  <el-form-item label="转账金额:">
                    <span class="strong">{{ form.amount }}</span> 元
                  </el-form-item>
                  <hr>
                  <el-form-item
                    label="支付密码"
                    style="margin-top: 15px;"
                  >
                    <el-input
                      v-model="form.password"
                      type="password"
                      style="width: 250px;"
                    ></el-input>
                  </el-form-item>
                  <el-form-item>
                    <el-button
                      type="primary"
                      @click="next"
                    >提交</el-button>
                    <el-button @click="prev">上一步</el-button>
                  </el-form-item>
                </el-form>
              </div>
              <div
                class="step-content"
                v-if="active === 2"
              >
                <div class="status-content">
                  <div class="status-icon">
                    <i class="el-icon-cms-check-circle-fill"></i>
                  </div>
                  <div class="status-title">操作成功</div>
                  <div class="status-desc">预计两小时内到账</div>
                </div>
                <el-form
                  ref="form"
                  :model="form"
                  label-width="150px"
                  size="small"
                  style="background: #fafafa;padding: 15px 0 5px; margin-bottom: 15px;"
                >
                  <el-form-item label="付款账户:">
                    {{ form.account }}
                  </el-form-item>
                  <el-form-item label="收款账户:">
                    {{ form.incomeAccount }}
                  </el-form-item>
                  <el-form-item label="收款人姓名:">
                    {{ form.incomeName }}
                  </el-form-item>
                  <el-form-item label="转账金额:">
                    <span class="strong">{{ form.amount }}</span> 元
                  </el-form-item>
                </el-form>
                <div class="center-block">
                  <el-button
                    type="primary"
                    size="mini"
                    @click="next"
                  >再转一笔</el-button>
                  <el-button size="mini">查看账单</el-button>
                </div>
              </div>
            </el-col>
          </div>
        </el-row>
      </el-card>
    </div>
  </div>
</template>

<script>
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'StepFormExample',
  components: {
    BaseBreadcrumb
  },
  data () {
    return {
      active: 0,
      form: {
        account: 'ant-design@alipay.com',
        incomeAccountType: '支付宝',
        incomeAccount: 'test@example.com',
        incomeName: 'Alex',
        amount: 500,
        password: '123456'
      }
    }
  },
  methods: {
    prev () {
      if (this.active-- < 0) return false
    },
    next () {
      if (this.active++ > 1) this.active = 0
    }
  }
}
</script>

<style lang="less" scoped>
.strong {
  font-family: Helvetica Neue, sans-serif;
  font-weight: 500;
  font-size: 20px;
  line-height: normal;
}

.form-group {
  display: flex;
  .el-select {
    & /deep/ .el-input__inner {
      border-top-right-radius: 0 !important;
      border-bottom-right-radius: 0 !important;
    }
  }
  .el-input {
    & /deep/ .el-input__inner {
      border-top-left-radius: 0 !important;
      border-bottom-left-radius: 0 !important;
    }
  }
}

.status-content {
  text-align: center;
  .status-icon {
    font-size: 80px;
    color: #52c41a;
    margin-bottom: 16px;
  }

  .status-title {
    margin-bottom: 16px;
    font-size: 24px;
    font-weight: 500;
    color: rgba(0, 0, 0, 0.85);
  }

  .status-desc {
    font-size: 14px;
    color: rgba(0, 0, 0, 0.45);
    margin-bottom: 15px;
  }
}

.center-block {
  text-align: center;
}
</style>
