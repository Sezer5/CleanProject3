<template>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-5">
        <div class="card shadow-sm border-0 rounded-lg">
          <div class="card-body p-4">
            <h3 class="text-center mb-4 fw-bold text-primary">Login</h3>

            <form @submit.prevent="">
              <div class="mb-3">
                <label for="email" class="form-label">E-mail</label>
                <input
                  type="email"
                  id="email"
                  v-model="formData.email"
                  class="form-control"
                  placeholder="sample@email.com"
                  required
                />
              </div>

              <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <input
                  type="password"
                  id="password"
                  v-model="formData.password"
                  class="form-control"
                  placeholder="********"
                  required
                />
              </div>

              <div class="d-grid">
                <button type="submit" class="btn btn-primary btn-lg">
                  Submit
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { reactive, ref } from "vue";

const formData = reactive({
  email: "",
  password: "",
});
</script>