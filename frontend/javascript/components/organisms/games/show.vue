<template>
  <div id="app">
    <table>
      <tbody>
      <tr>
        <th>ID</th>
        <th>CreatedAt</th>
      </tr>
      <tr>
        <td>{{ game.id }}</td>
        <td>{{ game.created_at }}</td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  props: {
    gameId: {
      type: String,
      required: true,
    },
  },
  data: function () {
    return {
      game: []
    }
  },
  mounted () {
    axios
        .get(`/api/v1/games/${this.gameId}`)
        .then(response => (this.game = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
