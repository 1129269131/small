<template>
  <div
    class="layout-menu-wrapper"
    :style="{'background-color': backgroundColor}"
  >
    <el-menu
      v-if="userInfo"
      :default-active="$route.path"
      :collapse="mode === 'vertical' ? MenuToggle : null"
      :mode="mode"
      :background-color="backgroundColor"
      :text-color="textColor"
      :active-text-color="activeTextColor"
      :router="true"
      :unique-opened="true"
      menu-trigger="click"
    >
      <template v-for="item in userInfo.permission">
        <template v-if="item && !item.subMenu">
          <el-menu-item
            :key="item.id"
            :index="item.path"
          >
            <i v-if="item.iconClass" :class="`el-icon-cms-${item.iconClass}`"></i>
            <span slot="title">{{ $t(`routes.${item.name}`) }}</span>
          </el-menu-item>
        </template>
        <template v-else-if="item && item.subMenu && item.subMenu.length > 0">
          <el-submenu
            :key="item.id"
            :index="item.id"
          >
            <template slot="title">
              <i v-if="item.iconClass" :class="`el-icon-cms-${item.iconClass}`"></i>
              <span slot="title">{{ $t(`routes.${item.name}`) }}</span>
            </template>
            <template v-for="submenu in item.subMenu">
              <el-menu-item
                :key="submenu.id"
                :index="submenu.path"
              >
                <i v-if="submenu.iconClass" :class="`el-icon-cms-${submenu.iconClass}`"></i>
                <span slot="title">{{ $t(`routes.${submenu.name}`) }}</span>
              </el-menu-item>
            </template>
          </el-submenu>
        </template>
      </template>
    </el-menu>
  </div>
</template>

<script>
export default {
  name: 'BasicLayoutMenu',
  props: {
    MenuToggle: {
      type: Boolean,
      default: false
    },
    layout: {
      type: String,
      required: true
    },
    navTheme: {
      type: String,
      required: true
    }
  },
  computed: {
    mode () {
      return this.layout === 'topmenu' ? 'horizontal' : 'vertical'
    },
    backgroundColor () {
      return this.navTheme === 'light' ? '#fff' : '#001529'
    },
    textColor () {
      return this.navTheme === 'light' ? '#303133' : 'hsla(0,0%,100%,.65)'
    },
    activeTextColor () {
      return this.navTheme === 'light' ? '#409EFF' : '#fff'
    },
    userInfo () {
      return this.$store.state.user.userInfo
    }
  }
}
</script>

<style lang="less" scoped>
.layout-menu-wrapper {
  flex: 1;
  height: 100%;
  // background-color: transparent;
  transition: all 0.3s;
  overflow-x: hidden;
  overflow-y: auto;
  .el-menu {
    transition: background-color 0.3s;
    border-right: 0;
    .el-submenu__title {
      i {
        color: inherit;
      }
    }
    &:not(.el-menu--collapse) {
      width: 200px;
      min-height: 400px;
    }
    &.el-menu--horizontal {
      border-bottom: 0;
      &:not(.el-menu--collapse) {
        width: auto;
        min-height: unset;
      }
    }
  }
}

.light-theme {
  .el-menu {
    &.el-menu--horizontal {
      .el-menu-item {
        background-color: #fff !important;
      }
    }
  }
}
</style>
