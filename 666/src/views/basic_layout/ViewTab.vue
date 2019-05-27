<template>
  <div
    class="layout-view-tab-wrapper"
    :class="{'open': toggleShow}"
  >
    <div
      class="layout-view-tab-toggle-button"
      @click="toggleShow = !toggleShow"
    >
      快捷导航
      <!-- <i :class="toggleShow ? 'el-icon-cms-close' :'el-icon-cms-setting'"></i> -->
    </div>
    <div class="layout-view-tab-list-wrapper">
      <transition-group name="slide-right">
        <div
          v-for="(item, index) in list"
          :key="item"
          @click="handleDelete(index)"
          style="width: 100px; height: 40px; line-height: 40px; margin: 10px; border-radius: 5px; background-color: #666;color: #fff;text-align:center;"
        >
          <span class="layout-view-tab-item-name">{{ item }}</span>
          <span class="layout-view-tab-item-close">
            <i class="el-icon-cms-close-circle-fill"></i>
          </span>
        </div>
      </transition-group>
    </div>
  </div>
</template>

<script>
export default {
  name: 'BasicLayouViewTab',
  data () {
    return {
      toggleShow: false,
      list: ['北京', '上海', '广州', '深圳', '厦门']
    }
  },
  methods: {
    handleDelete (index) {
      this.list.splice(index, 1)
    }
  }
}
</script>

<style lang="less" scoped>
.layout-view-tab-wrapper {
  position: fixed;
  top: 0;
  right: 0;
  width: 300px;
  height: 100%;
  transform: translateX(100%);
  transition: transform 0.3s cubic-bezier(0.9, 0, 0.3, 0.7);
  box-shadow: -2px 0 8px rgba(0, 0, 0, 0.15);
  background: #fff;
  z-index: 1000;
  .layout-view-tab-toggle-button {
    position: absolute;
    top: 50%;
    right: 300px;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 15px;
    height: auto;
    padding: 5px;
    cursor: pointer;
    pointer-events: auto;
    z-index: 0;
    text-align: center;
    font-size: 13px;
    color: #fff;
    border-radius: 4px 0 0 4px;
    background: #1890ff;
    box-sizing: content-box;
    transform: translateY(-50%);
  }
  &.open {
    transform: translateX(0);
  }
}

/* 可以设置不同的进入和离开动画 */
/* 设置持续时间和动画函数 */
.slide-right-enter-active {
  transition: all 0.3s ease;
}
.slide-right-leave-active {
  transition: all 0.8s ease;
}
.slide-right-enter,
.slide-right-leave-to {
  transform: translateX(100px);
  opacity: 0;
}
</style>
