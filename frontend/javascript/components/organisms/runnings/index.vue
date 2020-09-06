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
            <tr v-for="e in runnings" :key="e.id">
                <td>{{ e.id }}</td>
                <td>{{ e.place }}</td>
                <td>{{ e.base_id }}</td>
                <td>{{ e.go_counts }}</td>
                <td>{{ e.reason }}</td>
                <td @click="destroyRunning(e.id)">Destroy</td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    import axios from 'axios';
    import {reject} from "lodash";

    export default {
        data: function () {
            return {
                runnings: []
            }
        },
        methods: {
          destroyRunning(id) {
            axios.delete('api/v1/situations/' + id)
                .then(res => {
                  if (res.status === 200) {
                    this.runnings = reject(this.runnings,['id', id]);
                  }
                });
          }
        },
        mounted () {
            axios
                .get('/api/v1/runnings.json')
                .then(response => (this.runnings = response.data))
        }
    }
</script>

<style scoped>
    p {
        font-size: 2em;
        text-align: center;
    }
</style>