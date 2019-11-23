<template>
  <div id="">
    <input class="form-control form-control-lg mt-5" type="text" v-model="session.title" />
    <br>
    <br>
    <AddPost v-on:add-post="addPost" />
    <Session v-bind:session="session"  />
    <br>
    {{topic.title}}
    <br>
    <button class="btn form-control btn-outline-secondary btn-block msg-btn" v-on:click="saveSession">Save </button>
  </div>
</template>

<script>
import Session from 'Session';
import AddPost from 'AddPost';
import VueResource from "vue-resource";

export default {
  name: 'app',

  components: {
    Session,
    AddPost,
  },

  props: ['topic'],

  // part of Vue instance Lifecycle Hook. https://vuejs.org/v2/guide/instance.html#Instance-Lifecycle-Hooks
  // Created hook runs a code after the vue isntance gets initialized
  created() {
    // console.log(this.topic)
  } ,

  computed: {
    
  } ,

  data(){
      return {
        session: {
          title: this.topic.title,
          posts_attributes: [ ]
        }

      }
      console.log(topic)
  },

  methods: {
    addPost: function(newPost) {
      const { post } = newPost;
        
        this.session.posts_attributes.push( newPost)
        
      },
    
    saveSession: function(){
      // const { message } = newMessage;
      this.$http.post('/sessions', { session: this.session }).then(response => {
        Turbolinks.visit(`sessions/${response.body.id}`)
      }, response => {
        console.log(response)
      })

    }
  }
}
</script>

<style >
.msg-btn{
  margin-top: 3em;
}
</style>







