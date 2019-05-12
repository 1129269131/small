import hljs from 'highlight.js'
import 'highlight.js/styles/vs2015.css'

// const hljs = require('highlight.js')
// if (!hljs) {
//   throw new Error('you shold npm install `highlight.js` --save at first ')
// }

export default {
  bind (el) {
    const blocks = el.querySelectorAll('pre code')
    blocks.forEach((block) => {
      hljs.highlightBlock(block)
    })
  }
}
