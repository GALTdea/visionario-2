<template>
  <div id="app">
    <input type="text" v-model="message.title" />
    <AddEntry v-on:add-entry="addEntry" />
    <Message v-bind:message="message"  />
    <!-- <div v-bind:key="entry.id" v-for="entry in message.entries" >
       {{ entry.title }}
    </div> -->
    <br>
    <button v-on:click="saveMessage">Save Message</button>
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

  data(){
      return {
        message: {
          title: '',
          entries_attributes: [ ]
        }

      }
      console.log(message)
  },

  methods: {
    addEntry: function(newEntry) {
      const { entry } = newEntry;
        
        this.message.entries_attributes.push( newEntry)
        
      },
    
    saveMessage: function(){
      // const { message } = newMessage;
      this.$http.post('/messages', { message: this.message }).then(response => {
        Turbolinks.visit(`messages/${response.body.id}`)
      }, response => {
        console.log(response)
      })

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


 // props: ['message'],

  // data(){
  //     return {
  //       message: {
  //         entries: [
  //           {
  //             id: 1,
  //             title: 'Title 1'
  //           },
  //           {
  //             id: 2,
  //             title: 'Title 2'
  //           },
  //           {
  //             id: 3,
  //             title: 'Title 3'
  //           },
  //          ]
  //       } 
  //     }
  // },
