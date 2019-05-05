<template>
  <div
    class="layout-tools-container-wrapper"
    :class="{'open': open}"
  >
    <div
      class="layout-tools-mark"
      @click="toggleToolsHandle"
    ></div>
    <div class="layout-tools-container">
      <div class="layout-tools-list-wrapper">
        <div class="layout-tools-item-wrapper">
          <h3 class="layout-tools-item-title">{{ $t('layoutTools.themeSetting') }}</h3>
          <div class="layout-tools-item-content">
            <el-tooltip
              effect="dark"
              :content="$t('layoutTools.darkTheme')"
              placement="top"
              :open-delay="openDelay"
            >
              <div
                class="layout-style-check-item"
                @click="setThemeStyle('dark')"
              >
                <img
                  src="../../assets/images/dark-theme.svg"
                  :alt="$t('layoutTools.darkTheme')"
                >
                <div
                  v-if="navTheme === 'dark'"
                  class="layout-style-check-icon"
                >
                  <i class="el-icon-cms-check"></i>
                </div>
              </div>
            </el-tooltip>
            <el-tooltip
              effect="dark"
              :content="$t('layoutTools.lightTheme')"
              placement="top"
              :open-delay="openDelay"
            >
              <div
                class="layout-style-check-item"
                @click="setThemeStyle('light')"
              >
                <img
                  src="../../assets/images/light-theme.svg"
                  :alt="$t('layoutTools.lightTheme')"
                >
                <div
                  v-if="navTheme === 'light'"
                  class="layout-style-check-icon"
                >
                  <i class="el-icon-cms-check"></i>
                </div>
              </div>
            </el-tooltip>
          </div>
        </div>
        <div class="layout-tools-item-wrapper">
          <h3 class="layout-tools-item-title">{{ $t('layoutTools.navMode') }}</h3>
          <div class="layout-tools-item-content">
            <el-tooltip
              effect="dark"
              :content="$t('layoutTools.sideMenuLayout')"
              placement="top"
              :open-delay="openDelay"
            >
              <div
                class="layout-style-check-item"
                @click="setLayoutStyle('sidemenu')"
              >
                <img
                  src="../../assets/images/layout-sidemenu.svg"
                  :alt="$t('layoutTools.sideMenuLayout')"
                >
                <div
                  v-if="layout === 'sidemenu'"
                  class="layout-style-check-icon"
                >
                  <i class="el-icon-cms-check"></i>
                </div>
              </div>
            </el-tooltip>
            <el-tooltip
              effect="dark"
              :content="$t('layoutTools.topMenuLayout')"
              placement="top"
              :open-delay="openDelay"
            >
              <div
                class="layout-style-check-item"
                @click="setLayoutStyle('topmenu')"
              >
                <img
                  src="../../assets/images/layout-topmenu.svg"
                  :alt="$t('layoutTools.topMenuLayout')"
                >
                <div
                  v-if="layout === 'topmenu'"
                  class="layout-style-check-icon"
                >
                  <i class="el-icon-cms-check"></i>
                </div>
              </div>
            </el-tooltip>
          </div>
        </div>
        <div class="layout-tools-horizonal-divider"></div>
        <div class="layout-tools-item-wrapper horizonal">
          <h3 class="layout-tools-item-title">{{ $t('layoutTools.contentWidth') }}</h3>
          <div class="layout-tools-item-content">
            <el-select
              size="mini"
              v-model="contentWidth"
              :placeholder="$t('layoutTools.select')"
              style="width: 90px;"
            >
              <el-option
                key="Fluid"
                :label="$t('layoutTools.fluidWidth')"
                value="Fluid"
              >
              </el-option>
              <el-option
                v-if="layout === 'topmenu'"
                key="Fixed"
                :label="$t('layoutTools.fixedWith')"
                value="Fixed"
              >
              </el-option>
            </el-select>
          </div>
        </div>
        <div class="layout-tools-item-wrapper horizonal">
          <h3 class="layout-tools-item-title">{{ $t('layoutTools.fixedHeader') }}</h3>
          <div class="layout-tools-item-content">
            <el-switch
              class="mini"
              :width="switchWidth"
              v-model="fixedHeader"
              :active-value="true"
              :inactive-value="false"
              inactive-color="#BFBFBF"
              @change="FixedHeaderChange"
            ></el-switch>
          </div>
        </div>
        <el-tooltip
          v-if="!fixedHeader"
          effect="dark"
          :content="$t('layoutTools.needFixedHeader')"
          placement="left"
          :open-delay="openDelay"
        >
          <div
            class="layout-tools-item-wrapper horizonal"
            :class="{'disabled': !fixedHeader}"
          >
            <h3 class="layout-tools-item-title">{{ $t('layoutTools.scrollHideHeader') }}</h3>
            <div class="layout-tools-item-content">
              <el-switch
                class="mini"
                :width="switchWidth"
                v-model="autoHideHeader"
                :disabled="!fixedHeader"
                :active-value="true"
                :inactive-value="false"
                inactive-color="#BFBFBF"
              ></el-switch>
            </div>
          </div>
        </el-tooltip>
        <template v-else>
          <div class="layout-tools-item-wrapper horizonal">
            <h3 class="layout-tools-item-title">{{ $t('layoutTools.scrollHideHeader') }}</h3>
            <div class="layout-tools-item-content">
              <el-switch
                class="mini"
                :width="switchWidth"
                v-model="autoHideHeader"
                :disabled="!fixedHeader"
                :active-value="true"
                :inactive-value="false"
                inactive-color="#BFBFBF"
              ></el-switch>
            </div>
          </div>
        </template>
        <el-tooltip
          v-if="layout === 'topmenu'"
          effect="dark"
          :content="$t('layoutTools.needSideMenuLayout')"
          placement="left"
          :open-delay="openDelay"
        >
          <div
            class="layout-tools-item-wrapper horizonal"
            :class="{'disabled': layout === 'topmenu'}"
          >
            <h3 class="layout-tools-item-title">{{ $t('layoutTools.fixedSideMenu') }}</h3>
            <div class="layout-tools-item-content">
              <el-switch
                class="mini"
                :width="switchWidth"
                v-model="fixedSiderbar"
                :disabled="layout === 'topmenu'"
                :active-value="true"
                :inactive-value="false"
                inactive-color="#BFBFBF"
              ></el-switch>
            </div>
          </div>
        </el-tooltip>
        <template v-else>
          <div class="layout-tools-item-wrapper horizonal">
            <h3 class="layout-tools-item-title">{{ $t('layoutTools.fixedSideMenu') }}</h3>
            <div class="layout-tools-item-content">
              <el-switch
                class="mini"
                :width="switchWidth"
                v-model="fixedSiderbar"
                :disabled="layout === 'topmenu'"
                :active-value="true"
                :inactive-value="false"
                inactive-color="#BFBFBF"
              ></el-switch>
            </div>
          </div>
        </template>
        <el-button
          class="btn-copy"
          size="medium"
          icon="el-icon-cms-file-copy"
          plain
          @click="copyConfig"
        >{{ $t('layoutTools.copy') }}</el-button>
        <div class="production-hint">
          {{ $t('layoutTools.productionHint') }}
          <span class="color-link"> config/themeConfig.js </span>
        </div>
      </div>
      <div
        class="layout-tools-toggle-btn"
        @click="toggleToolsHandle"
      >
        <i :class="open ? 'el-icon-cms-close' : 'el-icon-cms-setting'"></i>
      </div>
    </div>
  </div>
</template>

<script>
import { copy } from '@/utils/clipboard'

export default {
  name: 'BasicLayoutTools',
  data () {
    return {
      switchWidth: 32,
      openDelay: 500,
      open: false
    }
  },
  computed: {
    navTheme: {
      get () {
        return this.$store.state.theme.navTheme
      },
      set (value) {
        this.$store.dispatch('SetNavTheme', value)
      }
    },
    layout: {
      get () {
        return this.$store.state.theme.layout
      },
      set (value) {
        this.$store.dispatch('SetLayout', value)
      }
    },
    contentWidth: {
      get () {
        return this.$store.state.theme.contentWidth
      },
      set (value) {
        this.$store.dispatch('SetContentWidth', value)
      }
    },
    fixedHeader: {
      get () {
        return this.$store.state.theme.fixedHeader
      },
      set (value) {
        this.$store.dispatch('SetFixedHeader', value)
      }
    },
    autoHideHeader: {
      get () {
        return this.$store.state.theme.autoHideHeader
      },
      set (value) {
        this.$store.dispatch('SetAutoHideHeader', value)
      }
    },
    fixedSiderbar: {
      get () {
        return this.$store.state.theme.fixedSiderbar
      },
      set (value) {
        this.$store.dispatch('SetFixedSiderbar', value)
      }
    },
    configText () {
      return `{ navTheme: '${this.navTheme}', layout: '${this.layout}', contentWidth: '${this.contentWidth}', fixedHeader: ${this.fixedHeader}, autoHideHeader: ${this.autoHideHeader}, fixedSiderbar: ${this.fixedSiderbar} }`
    }
  },
  methods: {
    toggleToolsHandle () {
      this.open = !this.open
    },
    FixedHeaderChange (value) {
      if (value === false) this.autoHideHeader = false
    },
    setThemeStyle (theme) {
      this.navTheme = theme
    },
    setLayoutStyle (layout) {
      this.layout = layout
      if (layout === 'sidemenu') {
        this.contentWidth = 'Fluid'
      }
    },
    copyConfig () {
      var successText = this.$t('layoutTools.copyInfo')
      copy(this.configText, () => {
        this.$message({
          dangerouslyUseHTMLString: true,
          message: `<span style="color: rgba(0,0,0,.65)">${successText}</span>`,
          type: 'success',
          duration: 3 * 1000
        })
      })
    }
  }
}
</script>

<style lang="less" scoped>
.layout-tools-container-wrapper {
  position: fixed;
  top: 0;
  width: 0;
  height: 100%;
  z-index: 1000;
  .layout-tools-mark {
    position: fixed;
    width: 100%;
    height: 0;
    opacity: 0;
    background-color: rgba(0, 0, 0, 0.65);
    filter: alpha(opacity=50);
    transition: opacity 0.3s linear, height 0s ease 0.3s;
  }
  .layout-tools-container {
    position: fixed;
    right: 0;
    width: 300px;
    height: 100%;
    transform: translateX(100%);
    transition: transform 0.3s cubic-bezier(0.9, 0, 0.3, 0.7);
    background: #fff;
    box-shadow: -2px 0 8px rgba(0, 0, 0, 0.15);
    .layout-tools-list-wrapper {
      position: relative;
      width: 100%;
      height: 100%;
      padding: 24px;
      border: 0;
      font-size: 14px;
      line-height: 1.5;
      word-wrap: break-word;
      background-color: #fff;
      background-clip: padding-box;
      z-index: 999;
      overflow: auto;
    box-sizing: border-box;
      .layout-tools-item-wrapper {
        margin-bottom: 24px;
        .layout-tools-item-title {
          margin-top: 0;
          margin-bottom: 12px;
          font-size: 14px;
          font-weight: 500;
          color: rgba(0, 0, 0, 0.85);
          line-height: 22px;
        }
        .layout-tools-item-content {
          display: flex;
          .layout-style-check-item {
            margin-right: 16px;
            position: relative;
            border-radius: 4px;
            cursor: pointer;
            img {
              width: 48px;
            }
            .layout-style-check-icon {
              position: absolute;
              top: 0;
              right: 0;
              width: 100%;
              padding-top: 15px;
              padding-left: 24px;
              height: 100%;
              color: #1890ff;
              font-size: 14px;
              font-weight: 700;
              box-sizing: border-box;
            }
          }
        }
        &.horizonal {
          display: flex;
          align-items: center;
          padding: 12px 0;
          margin-bottom: 0;
          .el-tooltip {
            display: flex;
            width: 100%;
            align-items: center;
          }
          .layout-tools-item-title {
            display: flex;
            flex: 1 1;
            margin-bottom: 0;
            justify-content: flex-start;
          }
          .layout-tools-item-content {
            flex: 0 0 auto;
            margin-left: 28px;
            padding: 0;
          }
        }
        &.disabled {
          opacity: 0.5;
        }
      }
      .layout-tools-horizonal-divider {
        position: relative;
        top: -0.06em;
        display: block;
        height: 1px;
        width: 100%;
        min-width: 100%;
        margin: 24px 0;
        padding: 0;
        font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI,
          PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue,
          Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji,
          Segoe UI Symbol;
        font-size: 14px;
        font-variant: tabular-nums;
        line-height: 1.5;
        color: rgba(0, 0, 0, 0.65);
        list-style: none;
        background: #e8e8e8;
        clear: both;
        box-sizing: border-box;
      }
    }
    .layout-tools-toggle-btn {
      position: absolute;
      top: 240px;
      width: 48px;
      height: 48px;
      right: 300px;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      pointer-events: auto;
      z-index: 0;
      text-align: center;
      font-size: 16px;
      color: #fff;
      border-radius: 4px 0 0 4px;
      background: #1890ff;
    }
    .btn-copy {
      margin-top: 20px;
      margin-bottom: 16px;
      width: 100%;
    }
    .production-hint {
      position: relative;
      padding: 8px 20px;
      margin: 0;
      border: 1px solid #ffe58f;
      border-radius: 4px;
      font-family: Chinese Quote, -apple-system, BlinkMacSystemFont, Segoe UI,
        PingFang SC, Hiragino Sans GB, Microsoft YaHei, Helvetica Neue,
        Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji,
        Segoe UI Symbol;
      font-size: 12px;
      font-variant: tabular-nums;
      line-height: 1.5;
      list-style: none;
      color: rgba(0, 0, 0, 0.65);
      background-color: #fffbe6;
      box-sizing: border-box;
      .color-link {
        color: #40a9ff;
      }
    }
  }
  &.open {
    width: 100%;
    .layout-tools-mark {
      opacity: 0.3;
      height: 100%;
      animation: antdDrawerFadeIn 0.3s cubic-bezier(0.7, 0.3, 0.1, 1);
      transition: none;
    }
    .layout-tools-container {
      transform: translateX(0);
    }
  }
}
</style>
