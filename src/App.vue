<script setup>
  import { ref } from 'vue'
  const editIndex = ref(null);
  const editedName = ref("");
  const product=ref([
    {name:'珍珠奶茶',des:'香濃奶茶搭配QQ珍珠',price:50,num:20},
    {name:'冬瓜檸檬',des:'清新冬瓜配上新鮮檸檬',price:45,num:18},
    {name:'翡翠檸檬',des:'綠茶與檸檬的完美結合',price:55,num:34},
    {name:'四季春茶',des:'香醇四季春茶，回甘無比',price:45,num:10},
    {name:'阿薩姆奶茶',des:'阿薩姆紅茶搭配香醇鮮奶',price:50,num:25},
    {name:'檸檬冰茶',des:'檸檬與冰茶的清新組合',price:45,num:20},
    {name:'芒果綠茶',des:'芒果與綠茶的獨特風味',price:55,num:18},
    {name:'抹茶拿鐵',des:'抹茶與鮮奶的絕配',price:60,num:20}
  ]);
  const editItem = (index)=>{
    editIndex.value = index;
    editedName.value = product.value[index].name;
  }
  const saveEdit = (index) => {
      product.value[index].name = editedName.value;
      editIndex.value = null;
    };
</script>

<template>
  <table>
  <thead>
    <tr>
      <th scope="col">品項</th>
      <th scope="col">描述</th>
      <th scope="col">價格</th>
      <th scope="col">庫存</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="(item,index) in product" :key="index">
      <td v-if="editIndex!==index">{{item.name}}</td>
      <td v-else>
        <input v-model="editedName" @blur="saveEdit(index)" />
      </td>
      <td><small>{{item.des}}</small></td>
      <td>{{item.price}}</td>
      <td>
        <button type="button" @click="item.num--" :disabled="item.num===0">-</button>
        {{item.num}}
        <button type="button" @click="item.num++">+</button>
      </td>
      <td>
        <button type="button" @click="editItem(index)">修改</button>
      </td>
    </tr>
   
  </tbody>
</table>
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}

</style>
