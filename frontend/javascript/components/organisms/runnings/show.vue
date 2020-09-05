<template>
  <div id="app">
    <table>
      <tbody>
      <tr>
        <th>ID</th>
        <th>Place</th>
        <th>Base</th>
        <th>Go Counts</th>
        <th>Reason</th>
      </tr>
      <tr>
        <td>{{ running.id }}</td>
        <td>{{ running.place }}</td>
        <td>{{ running.base_id }}</td>
        <td>{{ running.go_counts }}</td>
        <td>{{ running.reason }}</td>
      </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  props: {
    runningId: {
      type: String,
      required: true
    },
  },
  data: function () {
    return {
      running: []
    }
  },
  mounted () {
    axios
        .get(`/api/v1/runnings/${this.runningId}`)
        .then(response => (this.running = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>