<script setup lang="ts">
const { data: page } = await useAsyncData('index', () =>
  queryContent('/').findOne(),
);
if (!page.value) {
  throw createError({
    statusCode: 404,
    statusMessage: 'Page not found',
    fatal: true,
  });
}

useSeoMeta({
  titleTemplate: '',
  title: page.value.title,
  ogTitle: page.value.title,
  description: page.value.description,
  ogDescription: page.value.description,
});
</script>

<template>
  <div v-if="page">
    <ULandingHero
      :title="page.hero.title"
      :description="page.hero.description"
      :links="page.hero.links"
    >
      <div
        class="absolute inset-0 landing-grid z-[-1] [mask-image:radial-gradient(100%_100%_at_top_right,white,transparent)]"
      />

    </ULandingHero>

    <div class="h-8 w-screen bg-gradient-to-b from-[#11182700] to-white"> </div>

    <div class="bg-white">
      <div class="overflow-hidden mx-auto flex items-center justify-between gap-8">
        <img loading="lazy" src="https://static.wixstatic.com/media/494c9a_c6cf2f03d7c043e3b66bdbd916cb15d6~mv2.png/v1/fill/w_180,h_200,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/494c9a_c6cf2f03d7c043e3b66bdbd916cb15d6~mv2.png"  alt="Image 1" />
        <img loading="lazy" src="https://www.adan.eu/wp-content/uploads/2023/06/Kilnlogo-1.png" class="w-44 h-44 flex-shrink-0 text-gray-500 dark:text-gray-400"  alt="Image 2" />
        <img loading="lazy" src="https://assets-global.website-files.com/644a3d469d569d0a4b4c96db/64b54ff48756f8103709d5b0_GCAvuNZJETphqTiWysFAWPOlSHP_U1v_wfXWL2ls384.png" class="w-22 h-20 flex-shrink-0 text-gray-500 dark:text-gray-400"  alt="Image 3" />
        <img loading="lazy" src="https://docs.aleph.im/assets/images/square-logo-color.png" class="w-22 h-20 flex-shrink-0 text-gray-500 dark:text-gray-400"  alt="Image 4" />
        <img loading="lazy" src="https://cryptologos.cc/logos/tezos-xtz-logo.png" class="w-24 h-24 flex-shrink-0 text-gray-500 dark:text-gray-400"  alt="Image 4" />
        <img loading="lazy" src="https://upload.wikimedia.org/wikipedia/commons/5/57/Binance_Logo.png" class="w-24 h-24 flex-shrink-0 text-gray-500 dark:text-gray-400"  alt="Image 4" />
      </div>
    </div>

    <div class="h-8 w-screen bg-gradient-to-t from-[#11182700] to-white"> </div>

    <ULandingSection
      v-for="(section, index) in page.sections"
      :key="index"
      :title="section.title"
      :description="section.description"
      :align="section.align"
      :features="section.features"
    >
    <Placeholder :imagePath="section.image"></Placeholder>
    </ULandingSection>

    <ULandingSection
      :title="page.features.title"
      :description="page.features.description"
    >
      <UPageGrid>
        <ULandingCard
          v-for="(item, index) in page.features.items"
          :key="index"
          v-bind="item"
        />
      </UPageGrid>
    </ULandingSection>

    <ULandingSection
      :headline="page.testimonials.headline"
      :title="page.testimonials.title"
      :description="page.testimonials.description"
    >
      <UPageColumns class="xl:columns-4">
        <div
          v-for="(testimonial, index) in page.testimonials.items"
          :key="index"
          class="break-inside-avoid"
        >
          <ULandingTestimonial
            v-bind="testimonial"
            class="bg-gray-100/50 dark:bg-gray-800/50"
          />
        </div>
      </UPageColumns>
    </ULandingSection>

    <ULandingSection>
      <NuxtLink href="/lessons/legder" class="btn"> 
        <UBlogPost
          title="Connect your DApp to Ledger Live"
          description="Discover how to connect your DApp to Ledger Live and interact with smart contracts using wagmi."
          date="May 24, 2023"
          orientation="vertical"
          :image="{ src: 'https://ledger-wp-website-s3-prd.ledger.com/uploads/2024/03/Ledger-Live-desktop.webp', alt: 'Nuxt 3.9' }"
          :authors="[{ name: 'Daniel Roe', avatar: { src: 'https://github.com/danielroe.png', target: '_blank' }, to: 'https://twitter.com/danielcroe' }]"
          :badge="{ label: 'New Course' }"
          href='/lessons'
        />
      </NuxtLink>
    </ULandingSection>

  </div>
</template>

<style scoped>
.landing-grid {
  background-size: 100px 100px;
  background-image: linear-gradient(
      to right,
      rgb(var(--color-gray-200)) 1px,
      transparent 1px
    ),
    linear-gradient(to bottom, rgb(var(--color-gray-200)) 1px, transparent 1px);
}
.dark {
  .landing-grid {
    background-image: linear-gradient(
        to right,
        rgb(var(--color-gray-800)) 1px,
        transparent 1px
      ),
      linear-gradient(
        to bottom,
        rgb(var(--color-gray-800)) 1px,
        transparent 1px
      );
  }
}
</style>
