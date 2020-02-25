<template>
  <div
    class="container px-4 sm:px-12 pt-16 pb-12 mx-auto flex items-center md:min-h-screen"
    style="max-width:600px"
  >
    <div class="w-full">
      <img src="~/assets/ef.svg" alt="Eurofurence Logo" />
      <div class="mt-12 mb-12">
        <h1 class="text-primary-500 font-semibold text-5xl">Welcome,</h1>
        <h2 class="text-gray-600 text-3xl">Sign in to continue</h2>
      </div>
      <div class="mb-4">
        <input
          style="-webkit-box-sizing: border-box;"
          class="w-full bg-gray-200 p-6 py-5 rounded-lg transition-all duration-75 ease-in-out tran border-transparent border-2 focus:border-2 focus:border-primary-500 focus:outline-none"
          type="email"
          name=""
          placeholder="E-Mail Address"
          autocomplete="username"
        />
      </div>
      <div class="mb-16">
        <input
          style="    -moz-box-sizing: border-box;"
          class="w-full bg-gray-200 p-6 py-5 rounded-lg transition-all duration-75 ease-in-out tran border-transparent border-2 focus:border-2 focus:border-primary-500 focus:outline-none"
          type="password"
          name=""
          placeholder="Your Password"
          autocomplete="password"
        />
      </div>
      <div class="flex flex-col">
        <a
          class="bg-primary-500 py-5 rounded-lg px-12 ml-auto text-white text-2xl mb-4"
          @click="$auth.login()"
        >
          Sign in
        </a>
        <nuxt-link to="/auth/forgot-password" class="ml-auto text-gray-700"
          >Forgot your password?</nuxt-link
        >
      </div>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'auth',
  components: {}
}
</script>
