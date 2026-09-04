import { createRouter, createWebHistory } from 'vue-router'

const Home = () =>import('@/components/Home.vue')
const ProductDetail = () => import('@/components/product/ProductDetail.vue')
const Cart = () => import('@/components/cart/Cart.vue')
const Register = () => import('@/components/Register.vue')
const Login = () => import('@/components/Login.vue')

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home,
    },
    {
      path: '/productdetail/:slug',
      name: 'productdetail',
      component: ProductDetail,
    },
    {
      path: '/cart',
      name: 'cart',
      component: Cart,
    },
    {
      path: '/register',
      name: 'register',
      component: Register,
    },
    {
      path: '/login',
      name: 'login',
      component: Login,
    },
    
  ],
})

export default router
