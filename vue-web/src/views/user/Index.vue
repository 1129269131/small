<template>
    <div>
        <Top></Top>
        <div class="center">
            <div class="col-main">
				<div class="main-wrap">
          <router-view></router-view>
				</div>
			</div>
            <Aside></Aside>
        </div>
        <Footer></Footer>
    </div>
</template>

<script>
import Top from '../top/Index'
import Footer from '../footer/Index'
import Aside from './Aside'
export default {
  name: 'User',
  components: {
    Top,
    Footer,
    Aside
  },
  data () {
    return {
    }
  },
  methods: {

  }
}
</script>

<style lang="less">
.am-form-group{
	position: relative;
	.am-form-label{
		float: none;
		position: absolute;
		left: 0;
		top: 0;
	}
}
.am-btn-danger{
	width: 72px;
	height: 40px;
	line-height: 30px;
}
</style>
