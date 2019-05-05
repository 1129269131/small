<template>
  <div class="page-container error-page-container">
    <div class="error-page-img error500"></div>
    <div class="error-content">
      <h1 class="error-name">500</h1>
      <h1 class="error-desc">{{ $t('errorPage.error500Info') }}</h1>
      <h1 class="error-actions">
        <el-button
          type="primary"
          size="medium"
          @click="$router.replace('/dashboard')"
        >{{ $t('errorPage.backToDashboard') }}</el-button>
      </h1>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Error500'
}
</script>
