<template>
<div>
  <Hmtop></Hmtop>
  <ListMain></ListMain>
</div>
</template>

<script>
import Hmtop from '@/views/index/hmtop'
import ListMain from './listMain'
export default {
  name: 'Introduction',
  components: {
    Hmtop,
    ListMain
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

