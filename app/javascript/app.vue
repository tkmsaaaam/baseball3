<template>
  <div id="app">
    <el-form
            :model="game"
            :action="game.action"
            method="post">
      <el-form-item>
        <el-input
                type="hidden"
                :value="game.csrfToken"
                name="authenticity_token"></el-input>
      </el-form-item>
      <el-form-item>
        <el-date-picker
                type="date"
                format="yyyy/MM/dd"
                value-format="yyyy/MM/dd"
                placeholder="日付を選択"
                v-model="game.date"
                name="game[date]"></el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button
                type="primary"
                native-type="submit">作成
        </el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        game: {
          csrfToken: document.getElementsByName('csrf-token')[0].content,
          date: '',
          action: 'games'
        }
      }
    }
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
