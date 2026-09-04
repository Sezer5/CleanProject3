<template>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-5">
        <div class="card shadow-sm border-0 rounded-lg">
          <div class="card-body p-4">
            <h3 class="text-center mb-4 fw-bold text-primary">Register</h3>

            <form @submit.prevent="registerUser()">
              <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input
                  type="text"
                  id="name"
                  v-model="formData.name"
                  class="form-control"
                  placeholder="Enter your name..."
                  required
                />
              </div>

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
import { BASE_URL } from "@/helpers/config";
import axios from "axios";
import { reactive } from "vue";
import { useRoute, useRouter } from "vue-router";
import { useToast } from "vue-toastification";

const formData = reactive({
  name: "",
  email: "",
  password: "",
});

const toast = useToast();

const route = useRouter();

const registerUser = async () => {
  try {
    const response = await axios.post(
      `${BASE_URL}/api/user/register`,
      formData
    );
    toast.success(`User registered successfully`, {
      timeout: 2000,
    });
    route.push("/login");
  } catch (error) {
    if (error.response.status === 422) {
    }
  }
};
</script>