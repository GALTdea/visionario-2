<template>
  <div>
  	<form @submit.prevent="addMessage" >
      <input type="text" v-model="title" name="title" placeholder="Add Entry..." >
      <input type="submit" value="Submit" class="btn"> 
    </form>
  </div>
</template>

<script>
export default {
  name: 'AddEntry',
  data() {
    return {
      title: ''
    }
  }, 

  methods: {
    addEntry() {
      const newEntry = {
        title: this.title,
      }
      this.$emit('add-entry', newEntry);
      this.title = '';
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

<!-- this.team.players_attributes.push({
            id: null,
            name: "", -->