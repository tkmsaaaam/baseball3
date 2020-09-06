<template>
    <div id="app">
        <table>
            <tbody>
            <tr>
                <th>ID</th>
                <th>CreatedAt</th>
            </tr>
            <tr v-for="e in games" :key="e.id">
                <td>{{ e.id }}</td>
                <td>{{ e.created_at }}</td>
                <td @click="destroyGame(e.id)">Destroy</td>
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
                games: []
            }
        },
        methods: {
          destroyGame(id) {
            axios.delete('/api/v1/games/' + id)
                .then(res => {
                  if (res.status === 200) {
                    this.games = reject(this.games, ['id', id]);
                  }
                });
          }
        },
        mounted () {
            axios
                .get('/api/v1/games.json')
                .then(response => (this.games = response.data))
        }
    }
</script>

<style scoped>
    p {
        font-size: 2em;
        text-align: center;
    }
</style>