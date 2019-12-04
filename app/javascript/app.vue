<template>
    <div id="app">
      <form @submit.prevent="addUser">
        <div> Name Here: {{ values.name }}</div>
        <input class="form-control form-control-lg d-inline p-2 " type="text" v-model="name" name="name" placeholder="Add Name..." >
        <!-- <input class="form-control form-control-lg d-inline p-2 " type="text" v-model="id" name="id" placeholder="Add Name..." > -->

        <button  class="btn btn-outline-secondary d-inline p-2 " >Add Entry</button>
      </form>
      <div  v-for="(val, i) in values" >
          <input type="checkbox" style="display: none;" :id="val.name" :value="val.id" v-model="newObjects" v-on:click="activate(val)" ><label :for="val.name"><img :src="val.img" width="20" height="20" /></label> </label>

          <span  v-bind:class="{ red : val.highlated }"> {{ val.name }} </span>
      </div>
     
      <pre>Id's of Selected Names: {{ newObjects }}</pre>
    </div>
  
</template>

<script>

export default {
  name: 'app',
  methods: {
    activate: function(x) { 
     x.highlated =  !x.highlated
    },


    addUser: function(){
      this.values.unshift({
        id:  Number(this.id) + this.values.length,
        name: this.name,
        highlated: this.highlated,
        img: this.img
      })  
    }


  },

 data(){
    return {
          
            id: '123456784566',
            name: '',
            highlated: false,
            img: 'https://static.intercomassets.com/avatars/1677766/square_128/Adam-1564762812.jpg?1564762812',

        values: [
          {
            id: '01bbb998-af3d-47a4-b0ff-e67d033d80e9',
            name: 'Luz Ballard',
            highlated: false,
            img: 'https://static.intercomassets.com/avatars/1677766/square_128/Adam-1564762812.jpg?1564762812',

          },
          {
            id: '01021494-f157-4183-964c-6b0ddc964ab8',
            name: 'Corey Johnson',
            highlated: false,
            img: '//placekitten.com/200/300',

          },
          {
            id: '97a2daa4-406b-4b1c-831e-bdfd90b224f2',
            name: 'Andrew Torres',
            highlated: false,
            img: '//placekeanu.com/200/150',

          },
          {
            id: '6256ba85-b59f-40b9-8715-406cc54d7f05',
            name: 'Nichole Wilson',
            highlated: false,
            img: '//placem.at/things?w=250&random=some_seed',
          },
          {
            id: '5c0c746c-ec56-4fb7-8b32-066b64d70611',
            name: 'Nancy Hall',
            highlated: false,
            img: '//placem.at/things?w=250&random=some_seed',
          },
          {
            id: 'c103b480-8efb-450f-9141-6a8037de2348',
            name: 'Agnes Lorenzen',
            highlated: false,
            img: '//placekeanu.com/300/550/yg',
          },
          {
            id: '4e0cc3dc-fce9-45d9-85c7-a3ae5cb0ce57',
            name: 'Donald Hyde',
            highlated: false,
            img: '//placem.at/things?w=250&random=some_seed',
          },
          {
            id: 'f80af139-5c68-4475-8cb6-ced7e38c6f43',
            name: 'Dennis Fuller',
            highlated: false,
            img: '//placem.at/things?w=250&random=some_seed',
          },
          {
            id: '5073359e-b228-4852-b1a3-3f2edfc8672f',
            name: 'Francis Hodgkins',
            highlated: false,
            img: '//placem.at/things?w=250&random=some_seed',
          },
          {
            id: '9c9a3cc8-044e-43d0-87ff-58a6b44eca53',
            name: 'David McLain',
            highlated: false,
            img: '//placem.at/things?w=250&random=some_seed',
          },
          
        ],
          
      newObjects: []
    }

  }
 
}
</script>

<style >

.red {
  color: red;
}

label {
    margin : 10px;
}
label img {
    opacity : 0.5;
}
input[type=checkbox]:checked + label img {
    opacity : 1;
}


</style>





