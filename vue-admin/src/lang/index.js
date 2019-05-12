import Vue from 'vue'
import VueI18n from 'vue-i18n'
import elementZhLocale from 'element-ui/lib/locale/lang/zh-CN'
import elementEnLocale from 'element-ui/lib/locale/lang/en'
import zhLocale from './zh'
import enLocale from './en'

Vue.use(VueI18n)

const messages = {
  zh: {
    ...zhLocale,
    ...elementZhLocale
  },
  en: {
    ...enLocale,
    ...elementEnLocale
  }
}

const i18n = new VueI18n({
  locale: localStorage.getItem('lang') || 'zh',
  messages
})

export default i18n
