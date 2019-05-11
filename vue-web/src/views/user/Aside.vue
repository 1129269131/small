<template>
    <aside class="menu">
				<ul>
					<li class="person module">
						<router-link to="/user/center">
							个人中心
						</router-link>
					</li>
					<li class="person">
						<a href="#">个人资料</a>
						<ul>
							<li class="module"> 
								<router-link to="/user/information">个人信息</router-link>
							</li>
							<li class="module"> 
								<router-link to="/user/setUpSafety">安全设置</router-link>
							</li>
							<li class="module"> 
								<router-link to="/user/address">收货地址</router-link>
							</li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li class="module">
								<router-link to="/user/order">订单管理</router-link>
							</li>
							<li class="module">
								<router-link to="/user/change">退款售后</router-link>
							</li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li class="module"> 
								<router-link to="/user/coupon">优惠券</router-link>
							</li>
							<li class="module">
								<router-link to="/user/bonus">红包</router-link>
							</li>
							<li class="module">
								<router-link to="/user/bill">账单明细</router-link>
							</li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li class="module"> 
								<router-link to="/user/collection">收藏</router-link>
							</li>
							<li class="module"> 
								<router-link to="/user/foot">足迹</router-link>
							</li>
							<li class="module"> 
								<router-link to="/user/comment">评价</router-link>
							</li>
							<li class="module"> 
								<router-link to="/user/news">消息</router-link>
							</li>
						</ul>
					</li>

				</ul>

			</aside>
</template>

<script>

export default {
  name: 'Aside',
  data () {
    return {

    }
  },
  methods: {
		/* 右侧模块选择 */
		chooseModule(index){
			let $ = this.$
			$('.module').click(function(){
				$('.module').removeClass('active')
				$(this).addClass('active')
			})
		},
		showSelect(){
			let $ = this.$ 
			switch(this.$route.path){
				case '/user/center':
					$('.module').removeClass('active')
					$('.module').eq(0).addClass('active')
					break
				case '/user/setUpSafety':
					$('.module').removeClass('active')
					$('.module').eq(2).addClass('active')
					break
			}
		}
	},
	mounted(){
		this.chooseModule()
		this.showSelect()
	}
}
</script>

<style lang="less" scoped>
</style>
