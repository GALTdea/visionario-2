<template>
	<!-- had add an additional parent div to debog  -->
	<div>
	  <div v-bind:key="entry.id" v-for="entry in entries" >
	    <Entry v-bind:entry="entry" />
	     {{ entry.title }}
	  </div>
	</div>
</template>

<script>
import EntryItem from './EntryItem';
import AddEntry from './AddEntry';
export default {
  name: 'Entries',
  components: {
  	EntryItem,
  	AddEntry
  },
  props: ["entries", "entry"],

}
</script>

<style scoped>

</style>

