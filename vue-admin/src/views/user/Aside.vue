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
							<li @click="chooseModule()" class="module"> <a href="information.html">个人信息</a></li>
							<li class="module"> 
								<router-link to="/user/setUpSafety">安全设置</router-link>
							</li>
							<li class="module"> <a href="address.html">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
							<li class="module"><a href="order.html">订单管理</a></li>
							<li class="module"> <a href="change.html">退款售后</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li class="module"> <a href="coupon.html">优惠券 </a></li>
							<li class="module"> <a href="bonus.html">红包</a></li>
							<li class="module"> <a href="bill.html">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li class="module"> <a href="collection.html">收藏</a></li>
							<li class="module"> <a href="foot.html">足迹</a></li>
							<li class="module"> <a href="comment.html">评价</a></li>
							<li class="module"> <a href="news.html">消息</a></li>
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
