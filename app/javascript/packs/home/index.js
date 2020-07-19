import Vue from 'vue'
import HomeIndex from '../../organisms/home/index.vue'

document.addEventListener('DOMContentLoaded', () => {
    const el = document.body.appendChild(document.createElement('hello'))
    const app = new Vue({
        el,
        render: h => h(HomeIndex)
    })

    console.log(app)
})