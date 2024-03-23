<template>
  <div v-if="isDelivery">
    <UButton v-if="!isUploaded" @click="openFileInput" size="xl" block
      >Upload your project</UButton
    >
    <UButton v-else size="xl" block disabled
      >You have already submit your project</UButton
    >

    <UModal v-model="isOpen" prevent-close>
      <UCard>
        <div style="display: flex; justify-content: flex-end">
          <UButton
            color="gray"
            variant="ghost"
            icon="i-heroicons-x-mark-20-solid"
            class="-my-1"
            @click="isOpen = false"
          />
        </div>
        <div class="pb-4 pt-4">
          <UPage style="font-weight: bold"
            >Thank you for you participation!</UPage
          >
        </div>
      </UCard>
    </UModal>

    <input
      ref="fileInput"
      type="file"
      style="display: none"
      @change="handleFileUpload"
    />
  </div>
</template>

<script>
export default {
  data() {
    return {
      isOpen: false,
      isUploaded: false,
    };
  },
  methods: {
    openFileInput() {
      this.$refs.fileInput.click();
    },

    handleFileUpload(event) {
      const file = event.target.files[0];
      this.isUploaded = true;
      this.isOpen = true;
      console.log('Fichier sélectionné : ', file);
      // this.uploadFile(file);
    },
  },
  props: {
    isDelivery: {
      type: Boolean,
      default: false,
    },
  },
};
</script>
