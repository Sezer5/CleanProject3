<template>
  <div>
    <div class="d-flex justify-content-around flex-wrap">
      <Spinner :isLoading="productStore.isLoading" />
      <ProductListItem
        v-for="product in productStore.products.slice(0, data.loadItemData)"
        :key="product.id"
        :product="product"
      />
    </div>
    <div
      class="my-3 text-center"
      v-if="productStore.products.length != data.loadItemData"
    >
      <button
        class="btn btn-dark btn-lg shadow shadow-sm"
        @click="data.loadItemData += 2"
      >
        <i class="bi bi-arrow-clockwise"></i> Load More
      </button>
    </div>
  </div>
</template>

<script setup>
import { useProductStore } from "@/stores/useProductStore";
import Spinner from "../layouts/Spinner.vue";
import { onMounted, reactive } from "vue";
import ProductListItem from "./ProductListItem.vue";

const productStore = useProductStore();

const data = reactive({
  loadItemData: 4,
});

onMounted(() => {
  productStore.fetchAllProducts();
});
</script>

<style scoped>
</style>