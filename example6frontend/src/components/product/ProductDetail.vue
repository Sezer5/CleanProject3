<template>
  <div class="row mt-3">
    <Spinner :isLoading="productStore.isLoading" />
    <!-- Product Images -->
    <div class="col-md-6 mb-2">
      <img
        :src="`${BASE_URL}/` + productStore.productDetail?.thumbnail"
        alt="Product"
        class="img-fluid rounded mb-3 product-image shadow shadow-md w-100"
        id="mainImage"
      />
    </div>

    <!-- Product Details -->
    <div class="col-md-6">
      <h2 class="mb-3">{{ productStore.productDetail?.name }}</h2>
      <p class="text-muted mb-4">SKU: {{ productStore.productDetail?.slug }}</p>
      <div class="mb-3">
        <span class="h4 me-2">${{ productStore.productDetail?.price }}</span>
        <span class="text-muted"
          ><s>${{ productStore.productDetail?.price * 1.2 }}</s></span
        >
      </div>
      <div class="mb-3">
        <i class="bi bi-star-fill text-warning"></i>
        <i class="bi bi-star-fill text-warning"></i>
        <i class="bi bi-star-fill text-warning"></i>
        <i class="bi bi-star-fill text-warning"></i>
        <i class="bi bi-star-half text-warning"></i>
        <span class="ms-2">4.5 (120 reviews)</span>
      </div>
      <p class="mb-4">
        {{ productStore.productDetail?.description }}
      </p>
      <div class="mb-4">
        <h5>Color:</h5>
        <div class="btn-group" role="group" aria-label="Color selection">
          <div
            v-for="color in productStore.productDetail?.colors"
            :key="color.id"
            :style="{
              backgroundColor: color.name,
              width: '30px',
              height: '30px',
              borderRadius: '30px',
              marginRight: '10px',
              cursor: 'pointer',
              color: 'white',
              fontSize: '20px',
              display: 'flex',
              justifyContent: 'center',
              alignItems: 'center',
            }"
          >
            <i class="bi bi-check-lg"></i>
          </div>
        </div>
      </div>
      <div class="mb-4">
        <h5>Size:</h5>
        <div class="btn-group" role="group" aria-label="Color selection">
          <span
            class="badge bg-secondary text-white border fs-6"
            v-for="size in productStore.productDetail?.sizes"
            :key="size.id"
            style="cursor: pointer"
            >{{ size.name }}</span
          >
        </div>
      </div>
      <div class="mb-4">
        <h5>Quantity:</h5>
        <input
          type="number"
          class="form-control"
          id="quantity"
          value="1"
          min="1"
          style="width: 80px"
        />
      </div>
      <button class="btn btn-primary btn-lg mb-3 me-2">
        <i class="bi bi-cart-plus"></i> Add to Cart
      </button>
      <button class="btn btn-outline-secondary btn-lg mb-3">
        <i class="bi bi-heart"></i> Add to Wishlist
      </button>
    </div>
  </div>
</template>

<script setup>
import { useProductStore } from "@/stores/useProductStore";
import { onMounted, reactive } from "vue";
import { useRoute } from "vue-router";
import Spinner from "../layouts/Spinner.vue";
import { BASE_URL } from "@/helpers/config";

const productStore = useProductStore();

const data = reactive({
  term: useRoute().params.slug,
  chosenColor: null,
  chosenSize: null,
  chosenQty: 0,
});

onMounted(() => {
  productStore.fetchProductsDetail(data.term);
});
</script>

<style scoped>
.product-image {
  object-fit: cover;
}
.thumbnail {
  width: 80px;
  height: 80px;
  object-fit: cover;
  cursor: pointer;
  opacity: 0.6;
  transition: opacity 0.3s ease;
}
.thumbnail:hover,
.thumbnail.active {
  opacity: 1;
}
</style>