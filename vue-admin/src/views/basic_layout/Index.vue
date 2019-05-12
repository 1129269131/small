<template>
  <div
    class="layout-container-wrapper"
    :class="{ 'layout-sidemenu':  layout === 'sidemenu', 'layout-topmenu':  layout === 'topmenu', 'fixed-side': layout === 'sidemenu' && fixedSiderbar, 'fixed-header': fixedHeader, 'collapse-menu': MenuToggle}"
  >
    <basic-layout-side
      v-if="layout === 'sidemenu'"
      :MenuToggle="MenuToggle"
      :layout="layout"
      :navTheme="navTheme"
      :fixedSiderbar="fixedSiderbar"
      :class="{'fixed-side': fixedSiderbar}"
    ></basic-layout-side>
    <div class="layout-container">
      <basic-layout-header
        :MenuToggle="MenuToggle"
        :layout="layout"
        :navTheme="navTheme"
        :contentWidth="contentWidth"
        :fixedHeader="fixedHeader"
        :lang="lang"
        :showRouterTitle="showRouterTitle"
        :userInfo="userInfo"
        @toggle-menu="MenuToggle = !MenuToggle"
      ></basic-layout-header>
      <basic-layout-content :contentWidth="contentWidth"></basic-layout-content>
      <basic-layout-footer></basic-layout-footer>
    </div>
    <basic-layout-tools></basic-layout-tools>
    <basic-layout-view-tab v-if="false"></basic-layout-view-tab>
  </div>
</template>

<script>
import BasicLayoutSide from './Side'
import BasicLayoutHeader from './Header'
import BasicLayoutContent from './Content'
import BasicLayoutFooter from './Footer'
import BasicLayoutTools from './Tools'
import BasicLayoutViewTab from './ViewTab'
import { mapGetters } from 'vuex'

export default {
  name: 'BasicLayout',
  components: {
    BasicLayoutSide,
    BasicLayoutHeader,
    BasicLayoutContent,
    BasicLayoutFooter,
    BasicLayoutTools,
    BasicLayoutViewTab
  },
  data () {
    return {
      MenuToggle: false
    }
  },
  computed: mapGetters(['layout', 'navTheme', 'contentWidth', 'fixedHeader', 'autoHideHeader', 'fixedSiderbar', 'lang', 'showRouterTitle', 'userInfo']),
  created () {
    if (!this.userInfo) {
      this.$store.dispatch('GetUserInfo')
    }
  }
}
</script>

<style lang="less" scoped>
.layout-container-wrapper {
  position: relative;
  display: flex;
  flex-direction: row;
  background: #f0f2f5;
  min-height: 100vh;
  .layout-container {
    position: relative;
    display: flex;
    flex-direction: column;
    flex: 1;
    overflow: auto;
    z-index: 1;
  }
  .layout-side-wrapper {
    z-index: 3;
  }
  .layout-header-wrapper {
    z-index: 2;
  }
  &.layout-topmenu {
    &.fixed-header {
      .layout-container {
        width: 100%;
        height: 100vh;
        transition: all 0.3s;
      }
    }
  }
  &.layout-sidemenu {
    &.fixed-side {
      .layout-container {
        width: calc(100% - 200px);
        padding-left: 200px;
        transition: width 0.3s, padding 0.3s;
      }
      .layout-side-wrapper {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 200px;
        transition: width 0.3s;
      }
      &.collapse-menu {
        .layout-container {
          width: calc(100% - 64px);
          padding-left: 64px;
        }
      }
    }
    &.fixed-header {
      .layout-header-wrapper {
        width: calc(100% - 200px);
      }
      &.collapse-menu {
        .layout-header-wrapper {
          width: calc(100% - 64px);
        }
      }
    }
    &.fixed-header.fixed-side {
      .layout-container {
        width: 100%;
        height: 100vh;
        transition: all 0.3s;
      }
    }
    &.collapse-menu {
      .layout-side-wrapper {
        width: 64px;
      }
    }
  }
  &.fixed-header {
    .layout-header-wrapper {
      position: fixed;
      top: 0;
      right: 0;
      width: 100%;
    }
    .layout-content-wrapper {
      margin-top: 60px;
      overflow: auto;
    }
  }
}
</style>
