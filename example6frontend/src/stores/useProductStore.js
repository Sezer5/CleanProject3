import { BASE_URL } from "@/helpers/config";
import axios from "axios";
import { defineStore } from "pinia";

export const useProductStore = defineStore('product', {
  state: () => ({ 
    isLoading:false,
    products:[],
    colors:[],
    categories:[],
    sizes:[],
    productDetail:null
   }),
  getters: {
    doubleCount: (state) => state.count * 2,
  },
  actions: {
    async fetchAllProducts(){
        this.isLoading = true
        try {
            const response = await axios.get(`${BASE_URL}/api/products`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.categories = response.data.categories
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            this.isLoading=false
            console.log(error)
        }
    },
    async fetchProductsByCategory(category){
        this.isLoading = true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${category}/category`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.categories = response.data.categories
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            this.isLoading=false
            console.log(error)
        }
    },
    async fetchProductsByColor(color){
        this.isLoading = true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${color}/color`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.categories = response.data.categories
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            this.isLoading=false
            console.log(error)
        }
    },
    async fetchProductsBySize(size){
        this.isLoading = true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${size}/size`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.categories = response.data.categories
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            this.isLoading=false
            console.log(error)
        }
    },
    async fetchProductsByTerm(term){
        this.isLoading = true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${term}/term`)
            this.products = response.data.data
            this.colors = response.data.colors
            this.categories = response.data.categories
            this.sizes = response.data.sizes
            this.isLoading=false
        } catch (error) {
            this.isLoading=false
            console.log(error)
        }
    },
    async fetchProductsDetail(product){
        this.isLoading = true
        try {
            const response = await axios.get(`${BASE_URL}/api/products/${product}/product`)
            this.productDetail = response.data.data
            this.isLoading=false
        } catch (error) {
            this.isLoading=false
            console.log(error)
        }
    },
  },
})