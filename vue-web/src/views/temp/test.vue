<template>
<div>666666666</div>
</template>

<script>
import { test,order,orderDetail,addCart,testCart } from '@/api/test'
export default {
  name: 'Test',
  data () {
    return {
      ordersDetail:{
        skuId: 1,
        num: 199,
        price: 299
      },
      cart:{
        skuId: 1,
        num: 199,
        price: 299
      }
    }
  },
  methods: {
    test () {
      test().then(response => {
        
      })
    },
    order () {
      order(1,19,199).then(response => {
        
      })
    },
    orderDetail () {
      orderDetail(this.ordersDetail).then(response => {
        
      })
    },
    addCart () {
      addCart(this.cart).then(response => {
        
      })
    },
    testCart(){
      testCart(this.cart).then(response => {
        
      })
    }
  },
  mounted() {
    this.addCart()
  }
}
</script>

<style lang="less" scoped>
</style>
