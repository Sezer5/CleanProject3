import { BASE_URL } from "@/helpers/config";
import axios from "axios";
import { defineStore } from "pinia";
import { useToast } from "vue-toastification";
const toast = useToast();
export const useCartStore = defineStore('cart', {
  state: () => ({ 
    cartItems:[],
    
   }),
  persist: true,
  getters: {
    doubleCount: (state) => state.count * 2,
  },
  actions: {
    addToCart(item){
      let index = this.cartItems.findIndex(product => product.product_id === item.product_id && product.color === item.color && product.size === item.size)

      if(index != -1){
        toast.info(`${item.name} is already in your cart`, {
        timeout: 2000
        });
      }else{
        this.cartItems.push(item)
        toast.success(`${item.name} is added in your cart`, {
        timeout: 2000
        });
      }
    },
    incrementCartItem(item){
      let index = this.cartItems.findIndex(product => product.ref === item.ref)

      if(index !== -1){
            if(this.cartItems[index].Qty === item.maxQty){
                toast.warning(`Only ${item.Qty} available`, {
                    timeout: 2000
                });
            }else{
                this.cartItems[index].Qty +=1
            }
        }
    },
    decrementCartItem(item){
      let index = this.cartItems.findIndex(product =>product.product_id === item.product_id
            && product.color === item.color && product.size === item.size
        )

        // if product exist 

        if(index !== -1){
            this.cartItems[index].Qty -=1
            if(this.cartItems[index].Qty === 0){
                this.cartItems = this.cartItems.filter(product => product.ref !== item.ref)
            }
        }
    },
    deleteCartItem(item){
      let index = this.cartItems.findIndex(product => product.ref === item.ref);
      this.cartItems = this.cartItems.filter(product => product.ref !== item.ref);
      toast.success(`Item deleted successfully`, {
        timeout: 2000
        });
    },
    emptyToCart(){
      this.cartItems = [];
       toast.success(`Cart items deleted successfully`, {
        timeout: 2000
        });
    }
  },
})