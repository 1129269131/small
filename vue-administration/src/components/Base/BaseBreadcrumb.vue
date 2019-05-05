<template>
  <el-breadcrumb
    v-if="levelList.length > 0"
    :separator="separator"
    :separator-class="separatorClass"
  >
    <el-breadcrumb-item
      v-for="(item, index) in levelList"
      :key="index"
      :to="item.to"
      :replace="item.isReplace"
    >{{ $t(`routes.${item.name}`) }}</el-breadcrumb-item>
  </el-breadcrumb>
</template>

<script>
export default {
  name: 'BaseBreadcrumb',
  props: {
    separator: {
      type: String,
      default: '/'
    },
    separatorClass: {
      type: String
    }
  },
  data () {
    return {
      levelList: null
    }
  },
  methods: {
    getBreadcrumb () {
      let matched = this.$route.matched.filter(item => item.name)
      const first = matched[0]
      if (first && first.name !== 'Dashboard') {
        matched = [{ name: 'Dashboard', path: '/dashboard' }].concat(matched)
      }
      matched.forEach((item, index) => {
        if (index !== matched.length - 1 && ((item.name && item.name === 'Dashboard') || item.parent)) {
          item.to = { name: item.name }
        }
      })
      this.levelList = matched
    }
  },
  created () {
    this.getBreadcrumb()
  }
}
</script>
