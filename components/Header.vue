<script setup lang="ts">
import type { NavItem } from '@nuxt/content/dist/runtime/types';

const navigation = inject<Ref<NavItem[]>>('navigation', ref([]));

const links = [
  {
    label: 'Home',
    to: '/',
  },
  {
    label: 'Lessons',
    to: '/lessons',
  },
  {
    label: 'About',
    to: '/pricing',
  },
];
</script>

<template>
  <UHeader :links="links">
    <template #logo>
      D3vWithMe <UBadge label="WEB3" variant="subtle" class="mb-0.5" />
    </template>

    <template #right>
      <WalletButton />
    </template>

    <template #panel>
      <UNavigationTree :links="mapContentNavigation(navigation)" default-open />
    </template>
  </UHeader>
</template>
