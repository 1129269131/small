<template>
<div>
  <Top></Top>
  <ListMain></ListMain>
</div>
</template>

<script>
import Top from '../top/Index'
import ListMain from './listMain'
export default {
  name: 'Introduction',
  components: {
    Top,
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

