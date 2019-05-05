module.exports = {
  lintOnSave: false,
  devServer: {
    open: true, // 在浏览器中打开（默认false）
    proxy: { // 代理(解决跨域问题)
      '/api': {
        target: 'http://127.0.0.1:10010',
        changeOrigin: true,
        pathRewrite: {
          '^/api': 'api'
        }
      }
    }
  },
  configureWebpack: {
    externals: {
      'BMap': 'BMap',
      'BMap_Symbol_SHAPE_POINT': 'BMap_Symbol_SHAPE_POINT'
    }
  }
}
