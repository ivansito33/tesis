<script lang="ts">
    import type { ActionData } from './$types';

    export let form: ActionData;
</script>

<div class="min-h-screen bg-gray-200 flex flex-col">
    <header class="bg-blue-600 text-white py-4 shadow-md">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <h1 class="text-3xl font-bold">Plomería MB</h1>
        </div>
    </header>
    <main class="flex-grow flex items-center justify-center">
        <div class="max-w-md w-full bg-white p-8 rounded-lg shadow-lg">
            <h1 class="text-3xl font-bold mb-6 text-center text-gray-800">Register</h1>
            <form method="POST" action="/register"> 
                <div class="mb-4">
                    <label for="username" class="block text-gray-700 font-bold mb-2">Username</label>
                    <input id="username" name="username" type="text" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                <div class="mb-4">
                    <label for="email" class="block text-gray-700 font-bold mb-2">Email</label>
                    <input id="email" name="email" type="email" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                <div class="mb-4">
                    <label for="password" class="block text-gray-700 font-bold mb-2">Password</label>
                    <input id="password" name="password" type="password" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                <div class="mb-4">
                    <label for="password2" class="block text-gray-700 font-bold mb-2">Confirm Password</label>
                    <input id="password2" name="password2" type="password" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                </div>
                {#if form?.error}
                    <p class="text-red-500 text-sm mb-4">{form.error}</p>
                {/if}

                <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500">Register</button>
            </form>
        </div>
    </main>
</div>
