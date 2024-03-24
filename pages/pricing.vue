<script setup lang="ts">
const { data: page } = await useAsyncData('pricing', () =>
  queryContent('/pricing').findOne(),
);
if (!page.value) {
  throw createError({
    statusCode: 404,
    statusMessage: 'Page not found',
    fatal: true,
  });
}

useSeoMeta({
  title: page.value.title,
  ogTitle: page.value.title,
  description: page.value.description,
  ogDescription: page.value.description,
});

defineOgImage({
  component: 'Saas',
  title: page.value.title,
  description: page.value.description,
});

const isYearly = ref(false);
</script>

<template>
  <div v-if="page">

    <ULandingSection
      :title="page.faq.title"
      :description="page.faq.description"
    >
      <ULandingFAQ
        :items="page.faq.items"
        multiple
        default-open
        class="max-w-4xl mx-auto"
      />
    </ULandingSection>
  </div>
</template>
