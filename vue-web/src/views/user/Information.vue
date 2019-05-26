<template>
  <div>
    <div class="user-info">
      <!--标题 -->
      <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
      </div>
      <hr>

      <!--头像 -->
			<UserBasicInfo></UserBasicInfo>

      <!--个人信息 -->
      <div class="info-main">
        <form class="am-form am-form-horizontal">

          <div class="am-form-group">
            <label
              for="user-name2"
              class="am-form-label"
            >昵称</label>
            <div class="am-form-content">
              <input
                type="text"
                id="user-name2"
                placeholder="nickname"
                v-model="userInfo.username"
              >

            </div>
          </div>

          <div class="am-form-group">
            <label
              for="user-name"
              class="am-form-label"
            >姓名</label>
            <div class="am-form-content">
              <input
                type="text"
                id="user-name2"
                placeholder="name"
                v-model="userInfo.truename"
              >

            </div>
          </div>

          <div class="am-form-group">
            <label class="am-form-label">性别</label>
            <div class="am-form-content sex">
              <label class="am-radio-inline">
                <input
                  type="radio"
                  name="radio10"
                  value="male"
                  data-am-ucheck=""
                  class="am-ucheck-radio"
                >
                <span class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i class="am-icon-checked"></i></span> 男
              </label>
              <label class="am-radio-inline">
                <input
                  type="radio"
                  name="radio10"
                  value="female"
                  data-am-ucheck=""
                  class="am-ucheck-radio"
                ><span class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i class="am-icon-checked"></i></span> 女
              </label>
              <label class="am-radio-inline" style="width: 50px">
                <input
                  type="radio"
                  name="radio10"
                  value="secret"
                  data-am-ucheck=""
                  class="am-ucheck-radio"
                ><span class="am-ucheck-icons"><i class="am-icon-unchecked"></i><i class="am-icon-checked"></i></span>保密
              </label>
            </div>
          </div>

         <!--  <div class="am-form-group">
            <label
              for="user-birth"
              class="am-form-label"
            >生日</label>
            <div class="am-form-content birth">
              <div class="birth-select">
                <el-select v-model="value" placeholder="请选择">
                  <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                  </el-option>
                </el-select>
              </div>
              <div class="birth-select2">
                <el-select v-model="value" placeholder="请选择">
                  <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                  </el-option>
                </el-select>
              </div>
              <div class="birth-select2">
                <el-select v-model="value" placeholder="请选择">
                  <el-option
                    v-for="item in options"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                  </el-option>
                </el-select>
              </div>
            </div>

          </div> -->
          <div class="am-form-group">
            <label
              for="user-phone"
              class="am-form-label"
            >电话</label>
            <div class="am-form-content">
              <input
                id="user-phone"
                placeholder="telephonenumber"
                type="tel"
                v-model="userInfo.phone"
              >

            </div>
          </div>
          <div class="am-form-group">
            <label
              for="user-email"
              class="am-form-label"
            >电子邮件</label>
            <div class="am-form-content">
              <input
                id="user-email"
                placeholder="Email"
                type="email"
                v-model="userInfo.email"
              >

            </div>
          </div>
          <div class="am-form-group address">
            <label
              for="user-address"
              class="am-form-label"
            >收货地址</label>
            <div class="am-form-content address">
              <a href="address.html">
                <p class="new-mu_l2cw">
                  <span class="province">湖北</span>省
                  <span class="city">武汉</span>市
                  <span class="dist">洪山</span>区
                  <span class="street">雄楚大道666号(中南财经政法大学)</span>
                  <span class="am-icon-angle-right"></span>
                </p>
              </a>

            </div>
          </div>
          <div class="am-form-group safety">
            <label
              for="user-safety"
              class="am-form-label"
            >账号安全</label>
            <div class="am-form-content safety">
              <a href="safety.html">

                <span class="am-icon-angle-right"></span>

              </a>

            </div>
          </div>
          <div class="info-btn">
            <div class="am-btn am-btn-danger" @click="updateUser()">保存修改</div>
          </div>

        </form>
      </div>

    </div>
  </div>
</template>

<script>
import UserBasicInfo from './UserBasicInfo'
import { updateUser } from '@/api/item'
export default {
  name: 'Information',
  components: {
		UserBasicInfo
  },
  data() {
    return {
      userInfo: {
        id: null,
        username: null,
        truename: null,
        sex: null,
        phone: null,
        email: null
      }
    }
  },
  methods: {
    updateUser(){
      this.userInfo.id = 1
      this.userInfo.sex = 1
      updateUser(this.userInfo).then(response => {
        alert(response)
      })
    }
  }
}
</script>

<style lang="less" scoped>
</style>
