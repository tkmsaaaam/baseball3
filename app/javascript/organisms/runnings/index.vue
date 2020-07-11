<template>
    <el-table
            :data="runnings"
            style="width: 100%">
        <el-table-column
                prop="situation_id"
                label="SituationId"
                width="120">
        </el-table-column>
        <el-table-column
                prop="place"
                label="Place"
                width="120">
        </el-table-column>
        <el-table-column
                prop="base_id"
                label="BaseId"
                width="120">
        </el-table-column>
        <el-table-column
                prop="go_counts"
                label="GoCounts"
                width="120">
        </el-table-column>
        <el-table-column
                prop="reason"
                label="Reason"
                width="120">
        </el-table-column>
        <el-table-column
            width="120">
            <template v-slot="scope">
                <el-button
                        @click="destroyRunning(scope.row.id)"
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
                    runnings: []
                }
            },
            created(){
                axios.get('/api/v1/runnings')
                    .then(res => {
                        this.runnings = res.data
                    })
            },
            methods: {
                destroyRunning(id) {
                    axios.delete('/api/v1/runnings/' + id)
                    .then(res => {
                        if (res.status === 200 ) {
                            this.runnings = reject(this.runnings, ['id', id])
                        }
                    });
                }
            }
        }
</script>
