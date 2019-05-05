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
        <el-col
          :span="10"
          :offset="7"
        >
          <el-form
            ref="form"
            :model="form"
            label-width="80px"
            size="small"
          >
            <el-form-item label="活动名称">
              <el-input v-model="form.name">
              </el-input>
            </el-form-item>
            <el-form-item label="活动区域">
              <el-select
                v-model="form.region"
                placeholder="请选择活动区域"
                style="width: 100%"
              >
                <el-option
                  label="区域一"
                  value="shanghai"
                ></el-option>
                <el-option
                  label="区域二"
                  value="beijing"
                ></el-option>
              </el-select>
            </el-form-item>
            <el-form-item label="活动时间">
              <el-date-picker
                v-model="form.date"
                type="daterange"
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期"
                style="width: 100%"
              >
              </el-date-picker>
            </el-form-item>
            <el-form-item label="即时配送">
              <el-switch v-model="form.delivery"></el-switch>
            </el-form-item>
            <el-form-item label="活动性质">
              <el-checkbox-group v-model="form.type">
                <el-checkbox
                  label="美食/餐厅线上活动"
                  name="type"
                ></el-checkbox>
                <el-checkbox
                  label="地推活动"
                  name="type"
                ></el-checkbox>
                <el-checkbox
                  label="线下主题活动"
                  name="type"
                ></el-checkbox>
                <el-checkbox
                  label="单纯品牌曝光"
                  name="type"
                ></el-checkbox>
              </el-checkbox-group>
            </el-form-item>
            <el-form-item label="特殊资源">
              <el-radio-group v-model="form.resource">
                <el-radio label="线上品牌商赞助"></el-radio>
                <el-radio label="线下场地免费"></el-radio>
              </el-radio-group>
            </el-form-item>
            <el-form-item label="活动形式">
              <el-input
                type="textarea"
                v-model="form.desc"
              ></el-input>
            </el-form-item>
            <el-form-item>
              <el-button type="primary">立即创建</el-button>
              <el-button>取消</el-button>
            </el-form-item>
          </el-form>
        </el-col>
      </el-card>
    </div>
  </div>
</template>

<script>
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'BasicFormExample',
  components: {
    BaseBreadcrumb
  },
  data () {
    return {
      form: {
        name: '',
        region: '',
        date1: '',
        date2: '',
        delivery: false,
        type: [],
        resource: '',
        desc: ''
      }
    }
  }
}
</script>
