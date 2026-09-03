import { BASE_URL } from "@/helpers/config";
import axios from "axios";
import { defineStore } from "pinia";

export const useCartStore = defineStore('cart', {
  state: () => ({ 
    cartItems:[],
    
   }),
  getters: {
    doubleCount: (state) => state.count * 2,
  },
  actions: {
    
  },
})