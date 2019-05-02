<template>
<div>
  <Hmtop></Hmtop>
  <Banner> </Banner>
</div>
</template>

<script>
import Hmtop from './hmtop'
import Banner from './banner'
export default {
  name: 'Index',
  components: {
    Hmtop,
    Banner
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
