<template>
  <UButton v-if="!address" @click="connectWallet" size="md" color="black"
    >Connect Wallet</UButton
  >
  <UButton v-on="address" v-else size="md" color="black"
    >{{ address.slice(0, 6) }}...{{ address.slice(38, 42) }}</UButton
  >
</template>

<script setup lang="ts">
import type { WalletClient, PublicClient } from 'viem';
import { createWalletClient, createPublicClient, custom, http } from 'viem';
import { mainnet } from 'viem/chains';
import 'viem/window';

let walletClient: WalletClient;
let publicClient: PublicClient;
let address: `0x${string}`;

async function createWallet() {
  walletClient = createWalletClient({
    chain: mainnet,
    transport: custom(window.ethereum!),
  });
  address = (await walletClient.getAddresses())[0];
}

function createPublic() {
  publicClient = createPublicClient({
    chain: mainnet,
    transport: http(),
  });
}

async function connectWallet() {
  try {
    await walletClient.requestPermissions({ eth_accounts: {} });
    address = (await walletClient.getAddresses())[0];
  } catch (error) {
    console.log(error);
  }
}

if (window?.ethereum) {
  await createWallet();
  createPublic();
}
</script>
