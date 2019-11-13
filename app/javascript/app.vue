<template>
  <div id="message">
    <AddEntry />
    <Entries v-bind:entries="entries"  />
  </div>
</template>

<script>
import Entries from 'Entries';
import AddEntry from 'AddEntry';
import VueResource from "vue-resource";
// need to import the addEntry here
export default {
  name: 'app',

  components: {
    Entries,
    AddEntry
  },

  // data(){
  //     return {
  //       entries: [ ]
  //     }
  // },

  data(){
      return {
        entries: [
          {
            id: 1,
            title: 'Title 1'
          },
          {
            id: 2,
            title: 'Title 2'
          },
          {
            id: 3,
            title: 'Title 3'
          },
         ]
          
      }
  },

  methods: {
    // Creates a new message. 
    // addMessage: function(){
    //       this.$http.post('/messages', { message: this.message }).then(response => {
    //         Turbolinks.visit(`/messages/${response.body.id}`)
    //       }, response => {
    //             console.log(response)
    //           })
    //       // console.log(response)
    //       console.log(this.message, "from addMessage function on App.vue")
    //     }
    // }
  }
}
</script>

<style >

</style>













