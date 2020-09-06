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
            <tr v-for="e in situations" :key="e.id">
                <td>{{ e.game_id }}</td>
                <td>{{ e.bat_counts }}</td>
                <td>{{ e.inings }}</td>
                <td>{{ e.actness_results }}</td>
                <td>{{ e.where_go }}</td>
                <td>{{ e.ball_counts }}</td>
                <td>{{ e.ball_strike }}</td>
                <td>{{ e.steal_counts }}</td>
                <td>{{ e.score }}</td>
                <td @click="destroySituation(e.id)">Destroy</td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    import axios from 'axios';
    import {reject} from 'lodash';

    export default {
        data: function () {
            return {
                situations: []
            }
        },
        methods: {
          destroySituation(id) {
            axios.delete('api/v1/situations/' + id)
              .then(res => {
                if (res.status === 200) {
                  this.situations = reject(this.situations,['id', id]);
                }
              });
          }
        },
        mounted () {
            axios
                .get('/api/v1/situations.json')
                .then(response => (this.situations = response.data))
        }
    }
</script>

<style scoped>
    p {
        font-size: 2em;
        text-align: center;
    }
</style>