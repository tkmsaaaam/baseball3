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
                runnings: []
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