<template>
  <div class="container">
    <div class="cover">
      <div class="login-wrapper">
        <span class="logo">{{ $t('title') }}</span>
        <el-form
          class="form"
          ref="loginForm"
          :rules="rules"
          :model="loginForm"
        >
          <el-form-item prop="username">
            <el-input
              :placeholder="$t('prompt.usernamePlaceholder')"
              prefix-icon="el-icon-cms-user"
              v-model="loginForm.username"
              @keyup.enter.native="loginHandler"
            ></el-input>
          </el-form-item>
          <el-form-item prop="password">
            <el-input
              type="password"
              :placeholder="$t('prompt.passwordPlaceholder')"
              prefix-icon="el-icon-cms-lock"
              v-model="loginForm.password"
              @keyup.enter.native="loginHandler"
            ></el-input>
          </el-form-item>
          <el-form-item>
            <el-button
              type="primary"
              round
              @click.native.prevent="loginHandler"
            >{{ $t('login') }}</el-button>
          </el-form-item>
        </el-form>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Login',
  data () {
    return {
      loginForm: {
        username: '',
        password: ''
      },
      rules: {
        username: [
          { required: true, message: this.$t('prompt.usernameRequired'), trigger: 'blur' }
        ],
        password: [
          { required: true, message: this.$t('prompt.passwordRequired'), trigger: 'blur' },
          { min: 6, max: 16, message: this.$t('prompt.passwordInvalid'), trigger: 'blur' }
        ]
      }
    }
  },
  methods: {
    loginHandler: function () {
      // 前端校验成功后进入首页
      this.$refs.loginForm.validate((valid) => {
        if (valid) {
          this.$store.dispatch('Login', this.loginForm).then(() => {
            this.$router.push({ path: '/lay' })
          })
        }
      })
    }
  }
}
</script>

<style lang="less" scoped>
.container {
  height: 100%;
  background: #fff;
  background: url(../../assets/images/back.jpg) center center/cover no-repeat;
  .cover {
    height: 100%;
    background: rgba(90, 112, 230, 0.8);
    background: -webkit-linear-gradient(
      to right,
      rgba(90, 112, 230, 0.8),
      rgba(137, 227, 249, 0.8)
    );
    background: linear-gradient(
      to right,
      rgba(90, 112, 230, 0.8),
      rgba(137, 227, 249, 0.8)
    );
    display: flex;
    justify-content: center;
    align-items: center;
  }
}

.login-wrapper {
  display: inline-block;
  background: #fff;
  padding: 50px 20px;
  border-radius: 5px;
  text-align: center;
  .logo {
    display: inline-block;
    margin-bottom: 35px;
    font-size: 22px;
    font-family: "Microsoft YaHei";
    font-weight: bold;
    background: linear-gradient(
      to right,
      rgb(90, 112, 230),
      rgb(137, 227, 249)
    );
    -moz-background-clip: text;
    -webkit-background-clip: text;
    -o-background-clip: text;
    background-clip: text;
    color: transparent;
  }
  .el-input {
    width: 350px;
  }
  .el-button {
    width: 100%;
  }
  .el-form-item {
    margin-bottom: 30px;
    &:last-child {
      margin-bottom: 0;
    }
  }
}
</style>
