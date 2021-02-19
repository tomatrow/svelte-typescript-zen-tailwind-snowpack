<script>
    import { onMount } from "svelte"
    let count: number = 0
    onMount(() => {
        const interval = setInterval(() => count++, 1000)
        return () => {
            clearInterval(interval)
        }
    })
</script>

<main class="flex items-center flex-col justify-center">
    <img src="/logo.svg" class="w-44" alt="logo" />
    <p>Edit <code>src/App.svelte</code> and save to reload.</p>
    <p>Page has been open for <code>{count}</code> seconds.</p>
    <span class="text-orange-500 font-bold">More things</span>
</main>
