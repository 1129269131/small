<template>
  <div
    class="layout-header-wrapper"
    :class="{'light-theme': layout === 'sidemenu' || navTheme === 'light','fixed-header': fixedHeader, 'collapse-menu': MenuToggle }"
  >
    <div class="layout-header">
      <div
        class="layout-header-wide container-wide"
        :class="{'fixed-wide': contentWidth === 'Fixed'}"
        :style="layout === 'sidemenu' ? 'padding-left: 0;': ''"
      >
        <div class="layout-header-left-wrapper">
          <div
            v-if="layout === 'topmenu'"
            class="layout-header-logo"
          >
            <router-link to="/dashboard">
              <img
                src="../../assets/images/logo.png"
                alt="Vue Admin"
              >
              <h1>Vue Admin</h1>
            </router-link>
          </div>
          <div
            v-if="layout === 'sidemenu'"
            class="layout-header-menu-fold"
            @click="$emit('toggle-menu')"
          >
            <i :class="MenuToggle ? 'el-icon-cms-indent' : 'el-icon-cms-outdent'"></i>
          </div>
          <basic-layout-menu
            v-if="layout === 'topmenu'"
            :layout="layout"
            :navTheme="navTheme"
          ></basic-layout-menu>
        </div>
        <div class="layout-header-right-wrapper">
          <!-- <el-popover
            placement="bottom"
            trigger="click"
          >
            <el-tabs v-model="messageTabsActive">
              <el-tab-pane
                label="通知"
                name="notice"
              >通知</el-tab-pane>
              <el-tab-pane
                label="消息"
                name="message"
              >消息</el-tab-pane>
              <el-tab-pane
                label="待办"
                name="pending"
              >待办</el-tab-pane>
            </el-tabs>
            <template slot="reference">
              <el-button type="text">
                <el-badge :value="12">
                  <i class="el-icon-cms-bell"></i>
                </el-badge>
              </el-button>
            </template>
          </el-popover> -->
          <div
            class="layout-header-fullscreen"
            @click="FullScreen"
          >
            <i class="el-icon-cms-fullscreen"></i>
          </div>
          <el-dropdown placement="bottom">
            <div class="layout-header-dropdown layout-header-account">
              <div class="layout-header-avatar">
                <img
                  v-if="userInfo && userInfo.avatar"
                  :src="userInfo.avatar"
                >
                <img
                  v-else
                  src="../../assets/images/default-avatar.jpg"
                >
              </div>
              <div class="layout-header-username">{{userInfo && userInfo.name}}</div>
            </div>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>个人中心</el-dropdown-item>
              <el-dropdown-item>个人设置</el-dropdown-item>
              <el-dropdown-item divided>
                <div @click="handleLogout">退出登录</div>
              </el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
          <el-dropdown
            placement="bottom"
            @command="ChooseLanguage"
          >
            <span class="layout-header-dropdown el-icon-cms-earth"></span>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item
                command="zh"
                :disabled="lang === 'zh'"
              >{{ $t('lang.chinese') }}</el-dropdown-item>
              <el-dropdown-item
                command="en"
                :disabled="lang === 'en'"
              >{{ $t('lang.english') }}</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import BasicLayoutMenu from './Menu'

export default {
  name: 'BasicLayoutHeader',
  props: {
    MenuToggle: {
      type: Boolean,
      default: false
    },
    navTheme: {
      type: String,
      required: true
    },
    layout: {
      type: String,
      required: true
    },
    contentWidth: {
      type: String,
      required: true
    },
    fixedHeader: {
      type: Boolean,
      required: true
    },
    lang: {
      type: String,
      default: 'zh'
    },
    showRouterTitle: {
      type: Boolean,
      default: true
    },
    userInfo: {
      type: Object
    }
  },
  components: {
    BasicLayoutMenu
  },
  data () {
    return {
      isFullScreen: false,
      messageTabsActive: 'message'
    }
  },
  methods: {
    handleLogout () {
      this.$store.dispatch('FedLogOut').then(() => { location.reload() })
    },
    ChooseLanguage (val) {
      // 设置更新语言
      this.$store.dispatch('SetSystemLang', val)
      this.$i18n.locale = val
      // 切换语言时 更新当前路由页面标题
      if (this.showRouterTitle) {
        let browserTitle = this.$t(`routes.${this.$route.meta.title}`) || ''
        window.document.title = browserTitle ? browserTitle + ' • Vue Admin' : 'Vue Admin'
      }
    },
    FullScreen () {
      if (this.isFullScreen) {
        let el = document
        let cfs = el.cancelFullScreen || el.webkitCancelFullScreen ||
          el.mozCancelFullScreen || el.exitFullScreen
        if (cfs) { // typeof cfs != "undefined" && cfs
          cfs.call(el)
        } else if (typeof window.ActiveXObject !== 'undefined') {
          // for IE，这里和fullScreen相同，模拟按下F11键退出全屏
          let wscript = new window.ActiveXObject('WScript.Shell')
          if (wscript != null) {
            wscript.SendKeys('{F11}')
          }
        }
        this.isFullScreen = false
      } else {
        let el = document.documentElement
        let rfs = el.requestFullScreen || el.webkitRequestFullScreen ||
          el.mozRequestFullScreen || el.msRequestFullScreen
        if (rfs) { // typeof rfs != "undefined" && rfs
          rfs.call(el)
        } else if (typeof window.ActiveXObject !== 'undefined') {
          // for IE，这里其实就是模拟了按下键盘的F11，使浏览器全屏
          let wscript = new window.ActiveXObject('WScript.Shell')
          if (wscript != null) {
            wscript.SendKeys('{F11}')
          }
        }
        this.isFullScreen = true
      }
    }
  }
}
</script>

<style lang="less" scoped>
.layout-header-wrapper {
  width: 100%;
  height: 60px;
  line-height: 60px;
  color: #fff;
  background: #001529;
  box-shadow: 0 1px 4px rgba(0, 21, 41, 0.08);
  transition: background-color 0.3s, width 0.3s;
  .layout-header {
    width: 100%;
    transition: background-color 0.3s, width 0.2s;
    height: 60px;
    position: relative;
    .layout-header-wide {
      display: flex;
      height: 60px;
      padding-left: 24px;
      box-sizing: border-box;
      &.fixed-wide {
        padding-left: 0;
      }
      .layout-header-left-wrapper {
        flex: 1 1;
        display: flex;
        .layout-header-logo {
          height: 60px;
          margin-right: 15px;
          position: relative;
          line-height: 60px;
          color: inherit;
          transition: all 0.3s;
          overflow: hidden;
          a {
            color: inherit;
          }
          img {
            display: inline-block;
            vertical-align: middle;
            height: 32px;
          }
          h1 {
            display: inline-block;
            vertical-align: top;
            font-size: 20px;
            margin: 0 0 0 12px;
            font-family: Avenir, Helvetica Neue, Arial, Helvetica, sans-serif;
            font-weight: 600;
            color: inherit;
          }
        }
        .layout-header-menu-fold {
          height: 60px;
          padding: 22px 24px;
          line-height: normal;
          font-size: 20px;
          box-sizing: border-box;
          transition: all 0.3s, padding 0s;
          cursor: pointer;
        }
      }
      .layout-header-right-wrapper {
        display: flex;
        align-items: center;
        float: right;
        height: 100%;
        overflow: hidden;
        .layout-header-fullscreen {
          font-size: 18px;
          height: 60px;
          padding: 0 12px;
          line-height: 60px;
          color: #f7f7f7;
          cursor: pointer;
          transition: background-color 0.3s;
          &:hover {
            background-color: #1890ff;
          }
        }
        .layout-header-dropdown {
          display: flex;
          align-items: center;
          height: 60px;
          line-height: 60px;
          padding: 0 12px;
          color: #f7f7f7;
          cursor: pointer;
          transition: background-color 0.3s;
          &:hover {
            background-color: #1890ff;
          }
        }
        .layout-header-account {
          .layout-header-avatar {
            width: 30px;
            height: 30px;
            margin-right: 8px;
            // border: 1px solid #fff;
            border-radius: 50%;
            color: #1890ff;
            background: hsla(0, 0%, 100%, 0.85);
            overflow: hidden;
            img {
              display: block;
              width: 100%;
              height: 100%;
            }
          }
        }
      }
    }
  }
  &.light-theme {
    color: rgba(0, 0, 0, 0.65);
    background: #fff;
    .layout-header {
      .layout-header-wide {
        .layout-header-right-wrapper {
          .layout-header-fullscreen,
          .layout-header-dropdown {
            color: inherit;
            &:hover {
              background-color: #f9f9f9;
            }
          }
        }
      }
    }
  }
}
</style>
