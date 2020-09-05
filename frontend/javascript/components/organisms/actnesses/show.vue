<template>
  <div id="app">
    <table>
      <tbody>
      <tr>
        <th>ID</th>
        <th>Ball Type</th>
        <th>Swing</th>
        <th>Ball</th>
        <th>Strike</th>
        <th>Foul</th>
        <th>Ball Strike</th>
      </tr>
      <tr>
        <td>{{ actness.id }}</td>
        <td>{{ actness.ball_type }}</td>
        <td>{{ actness.swing }}</td>
        <td>{{ actness.ball }}</td>
        <td>{{ actness.strike }}</td>
        <td>{{ actness.foul }}</td>
        <td>{{ actness.ball_strike }}</td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  props: {
    actnessId: {
      type: String,
      required: true,
    },
  },
  data: function () {
    return {
      actness: []
    }
  },
  mounted () {
    axios
        .get(`/api/v1/actnesses/${this.actnessId}`)
        .then(response => (this.actness = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>