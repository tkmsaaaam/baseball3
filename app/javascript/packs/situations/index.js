import Vue from 'vue'
import SituationIndex from '../../organisms/situations/index.vue'
import ElementUI from 'element-ui'
import locale from 'element-ui/lib/locale/lang/ja'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI, { locale })
document.addEventListener('DOMContentLoaded', () => {
    const app = new Vue({
        render: h => h(SituationIndex)
    }).$mount()
    document.body.appendChild(app.$el)
})