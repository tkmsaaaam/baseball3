
import Vue from 'vue'
import GameIndex from '../../organisms/games/index.vue'

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('hello'))
  const app = new Vue({
    el,
    render: h => h(GameIndex)
  })

  console.log(app)
})
