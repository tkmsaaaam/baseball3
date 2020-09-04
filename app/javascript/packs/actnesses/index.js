
import Vue from 'vue'
import ActnessIndex from '../../../../frontend/javascript/components/organisms/actnesses/index.vue'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('hello'))
    const app = new Vue({
        el,
        render: h => h(ActnessIndex)
    })

    console.log(app)
})
