<template>
  <div id="app">
    <table>
      <tbody>
      <tr>
        <th>Game ID</th>
        <th>Bat Counts</th>
        <th>Inings</th>
        <th>Actness Results</th>
        <th>Where Go</th>
        <th>Ball Counts</th>
        <th>Ball Strike</th>
        <th>Steal Counts</th>
        <th>Score</th>
      </tr>
      <tr>
        <td>{{ situation.game_id }}</td>
        <td>{{ situation.bat_counts }}</td>
        <td>{{ situation.inings }}</td>
        <td>{{ situation.actness_results }}</td>
        <td>{{ situation.where_go }}</td>
        <td>{{ situation.ball_counts }}</td>
        <td>{{ situation.ball_strike }}</td>
        <td>{{ situation.steal_counts }}</td>
        <td>{{ situation.score }}</td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  props: {
    situationId: {
      type: String,
      required: true,
    },
  },
  data: function () {
    return {
      situation: []
    }
  },
  mounted () {
    axios
        .get(`/api/v1/situations/${this.situationId}`)
        .then(response => (this.situation = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>