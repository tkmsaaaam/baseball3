<template>
    <el-table
        :data="actnesses"
        style="width: 100%">
        <el-table-column
            prop="ball_type"
            label="BallType"
            width="120">
        </el-table-column>
        <el-table-column
            prop="swing"
            label="Swing"
            width="120">
        </el-table-column>
        <el-table-column
            prop="ball"
            label="Ball"
            width="120">
        </el-table-column>
        <el-table-column
            prop="strike"
            label="Strike"
            width="120">
        </el-table-column>
        <el-table-column
            prop="foul"
            label="Foul"
            width="120">
        </el-table-column>
        <el-table-column
            prop="ball_strike"
            label="BallStrike"
            width="120">
        </el-table-column>
        <el-table-column
            prop="situation_id"
            label="SituationId"
            width="120">
        </el-table-column>
        <el-table-column
            width="120">
            <template v-slot="scope">
                <el-button
                    @click="destroyActness(scope.row.id)"
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
            data () {
                return {
                    actnesses: []
                }
            },
            created(){
                axios.get('/api/v1/actnesses')
                    .then(res => {
                        this.actnesses = res.data
                    })
            },
            methods: {
                destroyActness(id) {
                    axios.delete('/api/v1/actnesses/' + id)
                    .then(res => {
                        if (res.status === 200 ) {
                            this.actnesses = reject(this.actnesses, ['id', id]);
                        }
                    });
                }
            }
        }
</script>
