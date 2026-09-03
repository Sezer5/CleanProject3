<template>
  <div class="col-md-5 m-2">
    <div class="card product-card border-0 rounded-4 shadow-sm">
      <div class="position-relative">
        <span class="badge bg-danger badge-custom">{{
          product.category.name
        }}</span>
        <div class="overflow-hidden">
          <img
            :src="`${BASE_URL}/` + product.thumbnail"
            class="card-img-top product-image"
            alt="Product Image"
          />
        </div>
      </div>
      <div class="card-body p-4">
        <h5 class="card-title mb-3 fw-bold">{{ product.name }}</h5>
        <p class="card-text text-muted mb-4">{{ product.description }}</p>
        <div class="d-flex justify-content-between align-items-center mb-2">
          <div class="colors d-flex">
            <div
              v-for="color in product.colors"
              :key="color.id"
              :style="{
                backgroundColor: color.name,
                width: '10px',
                height: '10px',
                borderRadius: '10px',
                marginRight: '5px',
              }"
            ></div>
          </div>
          <div class="sizes d-flex">
            <div
              v-for="size in product.sizes"
              :key="size.id"
              class="badge bg-dark"
              style="margin-right: 5px"
            >
              {{ size.name }}
            </div>
          </div>
        </div>
        <div class="d-flex justify-content-between align-items-center">
          <span class="price">${{ product.price }}</span>
          <router-link
            class="btn btn-custom text-white px-4 py-2 rounded-pill"
            :to="`/productDetail/` + product.slug"
          >
            <i class="bi bi-eye"></i> Review
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { BASE_URL } from "@/helpers/config";

const data = defineProps({
  product: {
    type: Object,
    required: true,
  },
});
</script>

<style scoped>
.product-card {
  transition: all 0.3s ease;
  overflow: hidden;
  cursor: pointer;
}

.product-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
}

.product-image {
  transition: all 0.5s ease;
  height: 300px;
  object-fit: cover;
}

.product-card:hover .product-image {
  transform: scale(1.05);
}

.badge-custom {
  position: absolute;
  top: 10px;
  right: 10px;
  z-index: 2;
}

.price {
  font-size: 1.5rem;
  font-weight: 600;
  color: #2c3e50;
}

.btn-custom {
  background: linear-gradient(45deg, #3498db, #2ecc71);
  border: none;
  transition: all 0.3s ease;
}

.btn-custom:hover {
  transform: translateX(5px);
  box-shadow: -5px 5px 15px rgba(46, 204, 113, 0.3);
}
</style>