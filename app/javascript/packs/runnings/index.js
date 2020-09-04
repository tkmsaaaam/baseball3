
import Vue from 'vue'
import RunningIndex from '../../../../frontend/javascript/components/organisms/runnings/index.vue'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('hello'))
    const app = new Vue({
        el,
        render: h => h(RunningIndex)
    })

    console.log(app)
})
