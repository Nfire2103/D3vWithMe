<template>
  <div
    class="bg-gray-900/5 dark:bg-white/5 ring-1 ring-inset ring-gray-900/10 dark:ring-white/10 rounded-xl lg:-m-4 p-4"
  >
    <div
      class="aspect-w-16 aspect-h-9 rounded-lg relative overflow-hidden border border-dashed border-gray-900/10 dark:border-white/10"
    >
    <img
        :src="imagePath"
        alt="Descriptive text"
        class="object-cover w-full h-full"
      />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    imagePath: {
      type: String,
    }
  }
}
</script>
