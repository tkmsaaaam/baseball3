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
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
    import axios from 'axios';

    export default {
        data: function () {
            return {
                games: []
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