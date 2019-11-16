<template>
  <div id="app">
    <AddEntry v-on:add-entry="addEntry" />
    <Message v-bind:message="message"  />
    <!-- <div v-bind:key="entry.id" v-for="entry in message.entries" >
       {{ entry.title }}
    </div> -->
  </div>
</template>

<script>
import Message from 'Message';
import AddEntry from 'AddEntry';
import VueResource from "vue-resource";

export default {
  name: 'app',

  components: {
    Message,
    AddEntry,
    

  },

  // data(){
  //     return {
  //       message: {
  //         entries: [ ]
  //       }
  //     }

  // },

  // props: ['message'],

  data(){
      return {
        message: {
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
      }
  },

  

  methods: {
    addEntry: function(newEntry) {
    const [ title ] = newEntry;
    
      this.message.entries.push( newEntry)
      // console.log(message)
    }
    
  }
}
</script>

<style >

</style>







// addPlayer: function() {
    //   this.message.players_attributes.push({
    //     id: null,
    //     title: "",
    //     //position: "",a
    //     // _destroy: null
    //   })
    // },


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



// data(){
  //     return {
  //       message: {
  //       entries: [
  //         {
  //           id: 1,
  //           title: 'Title 1'
  //         },
  //         {
  //           id: 2,
  //           title: 'Title 2'
  //         },
  //         {
  //           id: 3,
  //           title: 'Title 3'
  //         },
  //        ]
  //       } 
  //     }
  // },

