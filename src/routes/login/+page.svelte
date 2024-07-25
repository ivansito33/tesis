<script lang="ts">
  export let form: any;
  let username = '';
  let password = '';
</script>

<div class="min-h-screen bg-gray-200 flex flex-col">
  <header class="bg-blue-600 text-white py-4 shadow-md">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <h1 class="text-3xl font-bold">Plomería MB</h1>
    </div>
  </header>
  <main class="flex-grow flex items-center justify-center">
    <div class="max-w-md w-full bg-white p-8 rounded-lg shadow-lg">
      <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Login</h1>
      <form method="POST" action="/login">
        <div class="mb-4">
          <label for="username" class="block text-gray-700 font-bold mb-2">Username</label>
          <input id="username" name="username" type="text" bind:value={username} required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>
        <div class="mb-4">
          <label for="password" class="block text-gray-700 font-bold mb-2">Password</label>
          <input id="password" name="password" type="password" bind:value={password} required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>
        {#if form?.error}
          <p class="text-red-500 text-sm mb-4">{form.error}</p>
        {/if}
        <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500">Log in</button>
      </form>
    </div>
  </main>
</div>
