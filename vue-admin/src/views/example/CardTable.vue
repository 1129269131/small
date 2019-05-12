<template>
  <div class="page-container">
    <div class="page-title-bar-wrapper">
      <base-breadcrumb class="page-title-bar-breadcrumb"></base-breadcrumb>
      <div class="page-title-bar-content">
        <h1 class="page-title-bar-index-title">{{ $t(`routes.${$route.meta.title}`) }}</h1>
      </div>
    </div>
    <div class="page-content-wrapper">
      <div class="card-table">
        <div
          v-for="(item, index) of cardList"
          :key="index"
          class="card-item"
        >
          <el-card shadow="hover">
            <div class="app-wrapper">
              <div class="app-logo-wrapper">
                <img :src="item.img">
              </div>
              <div class="app-info-wrapper">
                <div class="app-name">{{ item.name }}</div>
                <div class="app-desc">在中台产品的研发过程中，会出现不同的设计规范和实现方式，但其中往往存在很多类似的页面和组件，这些类似的组件会被抽离成一套标准规范。</div>
              </div>
            </div>
          </el-card>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import BaseBreadcrumb from '@/components/Base/BaseBreadcrumb'

export default {
  name: 'CardTableExample',
  components: {
    BaseBreadcrumb
  },
  data () {
    return {
      cardList: [
        { name: 'Alipay', img: 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png' },
        { name: 'Angular', img: 'https://gw.alipayobjects.com/zos/rmsportal/zOsKZmFRdUtvpqCImOVY.png' },
        { name: 'Ant Design', img: 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png' },
        { name: 'Ant Design Pro', img: 'https://gw.alipayobjects.com/zos/rmsportal/sfjbOqnsXXJgNCjCzDBL.png' },
        { name: 'Bootstrap', img: 'https://gw.alipayobjects.com/zos/rmsportal/siCrBXXhmvTQGWPNLBow.png' },
        { name: 'React', img: 'https://gw.alipayobjects.com/zos/rmsportal/kZzEzemZyKLKFsojXItE.png' },
        { name: 'Vue', img: 'https://gw.alipayobjects.com/zos/rmsportal/ComBAopevLwENQdKWiIn.png' },
        { name: 'Webpack', img: 'https://gw.alipayobjects.com/zos/rmsportal/nxkuOJlFJuAUhzlMTCEe.png' },
        { name: 'Alipay', img: 'https://gw.alipayobjects.com/zos/rmsportal/WdGqmHpayyMjiEhcKoVE.png' },
        { name: 'Angular', img: 'https://gw.alipayobjects.com/zos/rmsportal/zOsKZmFRdUtvpqCImOVY.png' },
        { name: 'Ant Design', img: 'https://gw.alipayobjects.com/zos/rmsportal/dURIMkkrRFpPgTuzkwnB.png' },
        { name: 'Ant Design Pro', img: 'https://gw.alipayobjects.com/zos/rmsportal/sfjbOqnsXXJgNCjCzDBL.png' },
        { name: 'Bootstrap', img: 'https://gw.alipayobjects.com/zos/rmsportal/siCrBXXhmvTQGWPNLBow.png' },
        { name: 'React', img: 'https://gw.alipayobjects.com/zos/rmsportal/kZzEzemZyKLKFsojXItE.png' },
        { name: 'Vue', img: 'https://gw.alipayobjects.com/zos/rmsportal/ComBAopevLwENQdKWiIn.png' },
        { name: 'Webpack', img: 'https://gw.alipayobjects.com/zos/rmsportal/nxkuOJlFJuAUhzlMTCEe.png' }
      ]
    }
  }
}
</script>

<style lang="less" scoped>
.card-table {
  display: flex;
  flex-wrap: wrap;
  margin-left: -10px;
  margin-right: -10px;
  .card-item {
    width: 25%;
    padding: 0 10px;
    box-sizing: border-box;
    .el-card {
      width: 100%;
      margin-bottom: 20px;
    }
  }
}

.app-wrapper {
  display: flex;
  width: 100%;
  .app-logo-wrapper {
    padding-right: 16px;
    img {
      width: 48px;
      height: 48px;
      border-radius: 48px;
    }
  }
  .app-info-wrapper {
    flex: 1;
    .app-name {
      margin-bottom: 12px;
      font-size: 16px;
      font-weight: 500;
      color: rgba(0, 0, 0, 0.85);
      text-overflow: ellipsis;
      overflow: hidden;
      white-space: nowrap;
    }
    .app-desc {
      position: relative;
      display: -webkit-box;
      font-size: 14px;
      color: rgba(0, 0, 0, 0.45);
      -webkit-line-clamp: 3;
      -webkit-box-orient: vertical;
      text-overflow: ellipsis;
      overflow: hidden;
    }
  }
}
</style>
