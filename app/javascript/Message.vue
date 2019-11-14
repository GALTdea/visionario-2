<template>
  <!-- had add an additional parent div to debog  -->
  <div>
    <div v-bind:key="entry.id" v-for="entry in message" >
      <Entry v-bind:entry="entry" />
       {{ entry.title }}
    </div>
  </div>
</template>

<script>
import Entry from './Entry';
export default {
  name: 'Message',
  
  components: {
    Entry,
  },

  props: [ "entry", "message"],

  methods: {
    //   addEntry: function() {
    //     this.message.entry.push({
    //       id: null,
    //       title: "",
    //       //position: "",a
    //       // _destroy: null
    //   })
    // },
  }

}
</script>

<style scoped>

</style>

