<template>
<div>
  <Hmtop></Hmtop>
  <Banner> </Banner>
  <ShopNav></ShopNav>
  <ShopMainbg></ShopMainbg>
  <Footer></Footer>
</div>
</template>

<script>
import Hmtop from './hmtop'
import Banner from './banner'
import ShopNav from './shopNav'
import ShopMainbg from './shopMainbg'
import Footer from '../footer/Index'
export default {
  name: 'Index',
  components: {
    Hmtop,
    Banner,
    ShopNav,
    ShopMainbg,
    Footer
  },
  data () {
    return {
      loginForm: {
        username: '',
        password: ''
      }
    }
  },
  methods: {
    loginHandler: function () {
      // 前端校验成功后进入首页
      this.$refs.loginForm.validate((valid) => {
        if (valid) {
          this.$store.dispatch('Login', this.loginForm).then(() => {
            this.$router.push({ path: '/' })
          })
        }
      })
    }
  }
}
</script>

<style lang="less" scoped>
</style>
