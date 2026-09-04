<template>
  <div>
    <div
      v-if="cartStore.cartItems.length === 0"
      class="alert alert-info text-center fs-3"
    >
      <i class="bi bi-exclamation-triangle"></i> Your is Cart Empty
    </div>
    <div v-else>
      <table class="table table-responsive table-bordered text-center">
        <thead>
          <tr>
            <th>*</th>
            <th>*</th>
            <th>Name</th>
            <th>Color</th>
            <th>Size</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Subtotal</th>
            <th>
              <i
                class="bi bi-trash text-danger"
                style="cursor: pointer"
                @click="cartStore.emptyToCart()"
              ></i>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(item, index) in cartStore.cartItems" :key="item.ref">
            <td>{{ (index += 1) }}</td>
            <td><img :src="`${BASE_URL}/` + item.thumbnail" width="60" /></td>
            <td>{{ item.name }}</td>
            <td>{{ item.color }}</td>
            <td>{{ item.size }}</td>
            <td>
              <i
                class="bi bi-caret-up-fill"
                style="cursor: pointer"
                @click="
                  cartStore.incrementCartItem({
                    ref: item.ref,
                    product_id: item.product_id,
                    color: item.color,
                    size: item.size,
                  })
                "
              ></i>
              {{ item.Qty }}
              <i
                class="bi bi-caret-down-fill"
                style="cursor: pointer"
                @click="
                  cartStore.decrementCartItem({
                    ref: item.ref,
                    product_id: item.product_id,
                    color: item.color,
                    size: item.size,
                  })
                "
              ></i>
            </td>
            <td>$ {{ item.price }}</td>
            <td>$ {{ item.Qty * item.price }}</td>
            <td>
              <i
                class="bi bi-trash"
                style="cursor: pointer"
                @click="
                  cartStore.deleteCartItem({
                    ref: item.ref,
                    product_id: item.product_id,
                    color: item.color,
                    size: item.size,
                  })
                "
              ></i>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>

<script setup>
import { BASE_URL } from "@/helpers/config";
import { useCartStore } from "@/stores/useCartStore";

const cartStore = useCartStore();
</script>

<style scoped>
</style>