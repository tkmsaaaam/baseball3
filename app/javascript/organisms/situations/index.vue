<template>
    <el-table
        :data="situations"
        style="width: 100%">
        <el-table-column
            prop="game_id"
            label="Game"
            width="120">
        </el-table-column>
        <el-table-column
            prop="bat_counts"
            label="BatCounts"
            width="120">
        </el-table-column>
        <el-table-column
            prop="inings"
            label="Inings"
            width="120">
        </el-table-column>
        <el-table-column
            prop="actness_results"
            label="Results"
            width="120">
        </el-table-column>
        <el-table-column
            prop="where_go"
            label="WhereGo"
            width="120">
        </el-table-column>
        <el-table-column
            prop="ball_counts"
            label="BallCounts"
            width="120">
        </el-table-column>
        <el-table-column
            prop="ball_strike"
            label="BallStrike"
            width="120">
        </el-table-column>
        <el-table-column
            prop="rbi"
            label="RBI"
            width="120">
        </el-table-column>
        <el-table-column
            prop="steal_counts"
            label="StealCounts"
            width="120">
        </el-table-column>
        <el-table-column
            prop="score"
            label="Score"
            width="120">
        </el-table-column>
        <el-table-column
            width="120">
            <template v-slot="scope">
                <el-button
                    @click="destroySituation(scope.row.id)"
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
                    situations:[]
                }
            },
            created(){
                axios.get('/api/v1/situations')
                    .then(res => {
                        this.situations =res.data
                    })
            },
            methods:{
                destroySituation(id) {
                    axios.delete('/api/v1/situations' + id)
                    .then(res => {
                        if (res.status === 200) {
                            this.situations = reject(this.situations, ['id', id]);
                        }
                    });
                }
            }
        }
</script>
