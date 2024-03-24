<template>
  <div v-if="isDelivery">
    <UButton v-if="!isUploaded" @click="openFileInput" size="xl" block
      >Upload your project</UButton
    >
    <UButton v-else size="xl" block disabled
      >You have already submit your project</UButton
    >

    <UModal v-model="isOpen">
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
        <div
          v-if="!address"
          class="p-4"
          style="display: flex; flex-direction: column; align-items: center"
        >
          <p style="font-weight: bold; margin-bottom: 18px">
            Please connect your wallet to submit your project.
          </p>
        </div>
        <div
          v-else
          class="p-4"
          style="display: flex; flex-direction: column; align-items: center"
        >
          <img
            src="/check.png"
            style="height: 50px; width: 50px; margin-bottom: 18px"
          />
          <p style="font-weight: bold">Thank you for you participation!</p>
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

<script lang="ts">
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

    handleFileUpload(event: any) {
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

<script setup lang="ts">
import type { WalletClient } from 'viem';
import { createWalletClient, custom } from 'viem';
import { mainnet } from 'viem/chains';
import 'viem/window';

let walletClient: WalletClient;
let address: `0x${string}`;

async function createWallet() {
  walletClient = createWalletClient({
    chain: mainnet,
    transport: custom(window.ethereum!),
  });
  address = (await walletClient.getAddresses())[0];
}

if (window?.ethereum) {
  await createWallet();
}
</script>
