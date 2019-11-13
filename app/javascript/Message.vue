<!-- <template>
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
  name: 'Message',
  components: {
    Entries,
    AddEntry
  },

  data(){
    return {
      entries: [ ]
    }
  },

  methods: {
    
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
            name: "", --> -->