<template>
    <el-table
            :data="games"
            style="width: 100%">
        <el-table-column
                prop="date"
                label="Date"
                width="180">
        </el-table-column>
        <el-table-column
                prop="id"
                label="ID"
                width="180">
        </el-table-column>
        <el-table-column
            width="120">
            <template v-slot="scope">
                <el-button
                        @click="destroyGame(scope.row.id)"
                        type="danger"
                        icon="el-icon-delete"
                        circle></el-button>
            </template>
        </el-table-column>
    </el-table>
</template>
<script>
    import axios from 'axios'
    import {reject} from 'lodash';
        export default {
            data() {
                return {
                    games: []
                }
            },
            created(){
                axios.get('/api/v1/games')
                    .then(res => {
                        this.games = res.data
                    })
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
            }
        }
</script>
