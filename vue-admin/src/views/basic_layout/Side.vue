<template>
  <div
    class="layout-side-wrapper"
    :class="{'light-theme': navTheme === 'light'}"
  >
    <div class="layout-side-logo">
      <router-link to="/dashboard">
        <img
          src="../../assets/images/logo.png"
          alt="Vue Admin"
        >
        <h1 v-if="!MenuToggle">Vue Admin</h1>
      </router-link>
    </div>
    <basic-layout-menu
      :MenuToggle="MenuToggle"
      :layout="layout"
      :navTheme="navTheme"
    ></basic-layout-menu>
  </div>
</template>

<script>
import BasicLayoutMenu from './Menu'

export default {
  name: 'BasicLayoutSide',
  props: {
    MenuToggle: {
      type: Boolean,
      default: false
    },
    fixedSiderbar: {
      type: Boolean,
      required: true
    },
    navTheme: {
      type: String,
      required: true
    },
    layout: {
      type: String,
      required: true
    }
  },
  components: {
    BasicLayoutMenu
  }
}
</script>

<style lang="less" scoped>
.layout-side-wrapper {
  display: flex;
  color: #fff;
  flex-direction: column;
  box-shadow: 2px 0 8px 0 rgba(29, 35, 41, 0.05);
  width: 200px;
  transition: all 0.3s;
  overflow: auto;
  z-index: 2;
  .layout-side-logo {
    flex: 0 0 60px;
    height: 60px;
    position: relative;
    line-height: 60px;
    text-align: center;
    transition: all 0.3s;
    background: #002140;
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
      vertical-align: middle;
      font-size: 20px;
      margin: 0 0 0 12px;
      font-family: Avenir, Helvetica Neue, Arial, Helvetica, sans-serif;
      font-weight: 600;
      color: inherit;
    }
  }
  &.light-theme {
    background: #fff;
    color: rgba(0, 0, 0, 0.65);
    .layout-side-logo {
      background: #fff;
      color: rgba(0, 0, 0, 0.65);
    }
  }
}
</style>
