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
            <tr v-for="e in actnesses" :key="e.id">
                <td>{{ e.id }}</td>
                <td>{{ e.ball_type }}</td>
                <td>{{ e.swing }}</td>
                <td>{{ e.ball }}</td>
                <td>{{ e.strike }}</td>
                <td>{{ e.foul }}</td>
                <td>{{ e.ball_strike }}</td>
                <td @click="destroyActness(e.id)">Destroy</td>
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
                actnesses: []
            }
        },
        methods: {
          destroyActness(id) {
            axios.delete('api/v1/actnesses/' + id)
                .then(res => {
                  if (res.status === 200) {
                    this.actnesses = reject(this.actnesses,['id', id]);
                  }
                });
          }
        },
        mounted () {
            axios
                .get('/api/v1/actnesses.json')
                .then(response => (this.actnesses = response.data))
        }
    }
</script>

<style scoped>
    p {
        font-size: 2em;
        text-align: center;
    }
</style>