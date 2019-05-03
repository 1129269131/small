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
    }
  },
  methods: {
  }
}
</script>

<style lang="less" scoped>

</style>

