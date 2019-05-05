<template>
  <div class="layout-content-wrapper container-wide" :class="{'fixed-wide': contentWidth === 'Fixed'}">
    <keep-alive :include="cachedPages">
      <router-view :key="key"></router-view>
    </keep-alive>
  </div>
</template>

<script>
export default {
  name: 'BasicLayoutContent',
  props: {
    contentWidth: {
      type: String,
      required: true
    }
  },
  computed: {
    cachedPages () {
      return this.$store.state.pageTabs.cachedPages
    },
    activeTab () {
      return this.$store.state.pageTabs.activeTab
    },
    key () {
      return this.$route.name
    }
  },
  mounted () {
    this.$store.dispatch('addPageTab', this.$route)
  },
  watch: {
    $route (route) {
      this.$store.dispatch('addPageTab', route)
    }
  }
}
</script>

<style lang="less" scoped>
.layout-content-wrapper {
  flex: 1;
}
</style>
