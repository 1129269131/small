<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <base-breadcrumb class="page-title-bar-breadcrumb"></base-breadcrumb>
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">{{ $t(`routes.${$route.meta.title}`) }}</h1>
      </div>
    </div>
    <div class="page-content-wrapper">
      <div class="role-auth-content-wrapper">
        <div class="role-tree-wrapper">
          <el-input
            placeholder="输入关键字进行过滤"
            v-model="filterText"
          >
          </el-input>
          <el-tree
            :data="tree"
            :props="defaultProps"
            :filter-node-method="filterNode"
            ref="tree2"
          ></el-tree>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'Auth',
  components: {
    BaseBreadcrumb
  },
  data () {
    return {
      filterText: '',
      defaultProps: {
        children: 'children',
        label: 'label'
      },
      tree: [
        { label: '超级管理员' },
        { label: '编辑' }
      ]
    }
  },
  methods: {
    filterNode (value, data) {
      if (!value) return true
      return data.label.indexOf(value) !== -1
    }
  },
  watch: {
    filterText (val) {
      this.$refs.tree2.filter(val)
    }
  }
}
</script>

<style lang="less" scoped>
.page-container {
  display: flex;
  flex-direction: column;
}
.page-header-wrapper {
  padding: 20px;
  background: #fff;
  border-bottom: 1px solid #e8e8e8;
}

.page-content-wrapper {
  flex: 1;
  padding: 20px;
}

.role-auth-content-wrapper {
  display: flex;
  width: 100%;
  min-height: 100%;
  background: #fff;
  border-radius: 5px;
  overflow: hidden;
  .role-tree-wrapper {
    width: 150px;
  }
}
</style>
