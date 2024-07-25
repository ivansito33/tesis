<!-- src/routes/+layout.svelte -->
<script lang="ts">
    import "../app.css";
    import{page} from '$app/stores'
  </script>

  
  <nav class="p-4 bg-gray-100">
    {#if !$page.data.user}
      <div class="flex justify-end space-x-4">
        <a href="/register" class="inline-block bg-blue-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded transition duration-300 ease-in-out">Registrarse</a>
        <a href="/login" class="inline-block bg-blue-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded transition duration-300 ease-in-out">Iniciar Sesión</a>
      </div>
    {/if}
    {#if $page.data.user}
      <div class="flex justify-between items-center">
        <a href="/admin" class="text-gray-700 font-semibold hover:text-gray-900 transition duration-300 ease-in-out">Admin</a>
        <form class="logout" action="/logout" method="POST">
          <button type="submit" class="bg-red-500 hover:bg-red-700 text-white font-semibold py-2 px-4 rounded transition duration-300 ease-in-out">Log Out</button>
        </form>
      </div>
    {/if}
  </nav>
  
  <main>
  <slot />
</main>
  