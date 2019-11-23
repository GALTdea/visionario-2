<template>
  <div>
  	<form autocomplete="off" @submit.prevent="addPost" >
      <div class="row">
        <div class=" entry-input d-inline p-2">
          <input class="form-control form-control-lg d-inline p-2 " type="text" v-model="title" name="title" placeholder="Add Post..." >
        </div>
        <div class=" d-inline p-2  .btn-entry">
          <button class="btn btn-outline-secondary d-inline p-2 ">Add</button>
        </div>
      </div> 
    </form>
  </div>
</template>

<script>
export default {
  name: 'AddPost',
  data() {
    return {
      title: ''
    }
  }, 

  methods: {
    addPost: function() {
      const newPost = {
        title: this.title,
      }
      this.$emit('add-post', newPost);
      this.title = ""
    },

    // createEntry() {
    //   const newEntry = {
    //     title: this.title,
    //   }
    //   this.$emit('create-entry', newEntry);
    //   this.title = '';
    // }

  }
}

</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

.entry-input{
  width: 90%;
}
.btn-entry{
  width: 5%;
}
</style>

