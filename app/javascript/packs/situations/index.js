
import Vue from 'vue'
import SituationIndex from '../../organisms/situations/index.vue'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('hello'))
    const app = new Vue({
        el,
        render: h => h(SituationIndex)
    })

    console.log(app)
})
