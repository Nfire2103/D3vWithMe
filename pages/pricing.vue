<script setup lang="ts">
const { data: page } = await useAsyncData('Pricing', () =>
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
  <div class="sm:mt-0 md:mt-20">
    <div class="max-w-5xl mx-auto">
      <div class="max-w-2xl mx-auto text-center">
        <h2 class="text-3xl font-extrabold">Meet our team</h2>
        <p class="text-sm mt-4 leading-relaxed">
          We are a team of passionate developers and entrepreneurs who are always looking for new challenges.
           We are always looking for new opportunities to learn and grow.
          Like you we didn't know how to start our journey in the web3 world,
          so we decided to create D3vWithMe to help you start your journey.
        </p>
      </div>
      <div
        class="grid lg:grid-cols-3 md:grid-cols-2 gap-x-8 gap-y-10 max-md:justify-center mt-12"
      >
        <div class="border border-cyan-400 rounded-md overflow-hidden max-md:max-w-[300px]">
          <img
            src="https://media.licdn.com/dms/image/D4E03AQHj2nI4Cs4cgA/profile-displayphoto-shrink_200_200/0/1686075227929?e=1717027200&v=beta&t=5PKsVGRQxE_9_Ms5699Ix-JcOQZw4lEMGU5YdAya-MM"
            class="w-full h-60 object-contain object-top bg-gray-300"
          />
          <div class="p-4">
            <h4 class="text-xl font-extrabold">Gabin Bedouet</h4>
            <p class="text-l mt-1">Entrepreneur, étudiant à l'ESC</p>
            <div class="mt-10">
            </div>
            <div class="space-x-4 mt-4">
              <button type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-blue-600 hover:bg-blue-700">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 155.139 155.139">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                  <path d="M89.584 155.139V84.378h23.742l3.562-27.585H89.584V39.184c0-7.984 2.208-13.425 13.67-13.425l14.595-.006V1.08C115.325.752 106.661 0 96.577 0 75.52 0 61.104 12.853 61.104 36.452v20.341H37.29v27.585h23.814v70.761h28.48z"/>
                </svg>
              </button>
              <button type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-[#03a9f4] hover:bg-[#03a1f4]">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 512 512">
                  <path d="M512 97.248c-19.04 8.352-39.328 13.888-60.48 16.576 21.76-12.992 38.368-33.408 46.176-58.016-20.288 12.096-42.688 20.64-66.56 25.408C411.872 60.704 384.416 48 354.464 48c-58.112 0-104.896 47.168-104.896 104.992 0 8.32.704 16.32 2.432 23.936-87.264-4.256-164.48-46.08-216.352-109.792-9.056 15.712-14.368 33.696-14.368 53.056 0 36.352 18.72 68.576 46.624 87.232-16.864-.32-33.408-5.216-47.424-12.928v1.152c0 51.008 36.384 93.376 84.096 103.136-8.544 2.336-17.856 3.456-27.52 3.456-6.72 0-13.504-.384-19.872-1.792 13.6 41.568 52.192 72.128 98.08 73.12-35.712 27.936-81.056 44.768-130.144 44.768-8.608 0-16.864-.384-25.12-1.44C46.496 446.88 101.6 464 161.024 464c193.152 0 298.752-160 298.752-298.688 0-4.64-.16-9.12-.384-13.568 20.832-14.784 38.336-33.248 52.608-54.496z"/>
                </svg>
              </button>
              <a href="https://www.linkedin.com/search/results/all/?fetchDeterministicClustersOnly=true&heroEntityKey=urn%3Ali%3Afsd_profile%3AACoAAD-Q-wQByAEYxlBE9DGfZu7hSncY1DN-3b4&keywords=gabin%20bedouet&origin=RICH_QUERY_SUGGESTION&position=9&searchId=731c09a9-31aa-4e66-9eee-a340ae169fa5&sid=cKY&spellCorrectionEnabled=false" target="_blank" rel="noopener noreferrer" type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-[#0077b5] hover:bg-[#0055b5]">
                <svg  xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 24 24">
                  <path d="M23.994 24v-.001H24v-8.802c0-4.306-.927-7.623-5.961-7.623-2.42 0-4.044 1.328-4.707 2.587h-.07V7.976H8.489v16.023h4.97v-7.934c0-2.089.396-4.109 2.983-4.109 2.549 0 2.587 2.384 2.587 4.243V24zM.396 7.977h4.976V24H.396zM2.882 0C1.291 0 0 1.291 0 2.882s1.291 2.909 2.882 2.909 2.882-1.318 2.882-2.909A2.884 2.884 0 0 0 2.882 0z"/>
                </svg>
              </a>
            </div>
          </div>
        </div>
        <div class="border border-cyan-400 rounded-md overflow-hidden max-md:max-w-[300px]">
          <img
            src="https://media.licdn.com/dms/image/D4E03AQElbVFU4S1V6A/profile-displayphoto-shrink_200_200/0/1679854273050?e=1717027200&v=beta&t=r_2sFcy8M-MQx_D0rLaFs7Zp6HHzn2m99dTji0KQYB8"
            class="w-full h-60 object-contain object-top bg-gray-300"
          />
          <div class="p-4">
            <h4 class="text-xl font-extrabold">Nathan Flattin</h4>
            <p class="text-l mt-1">Epitech student & Respo Blockchain à POC</p>
            <div class="mt-4">
            </div>
            <div class="space-x-4 mt-4">
              <button type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-blue-600 hover:bg-blue-700">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 155.139 155.139">
                  <path d="M89.584 155.139V84.378h23.742l3.562-27.585H89.584V39.184c0-7.984 2.208-13.425 13.67-13.425l14.595-.006V1.08C115.325.752 106.661 0 96.577 0 75.52 0 61.104 12.853 61.104 36.452v20.341H37.29v27.585h23.814v70.761h28.48z"/>
                </svg>
              </button>
              <button type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-[#03a9f4] hover:bg-[#03a1f4]">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 512 512">
                  <path d="M512 97.248c-19.04 8.352-39.328 13.888-60.48 16.576 21.76-12.992 38.368-33.408 46.176-58.016-20.288 12.096-42.688 20.64-66.56 25.408C411.872 60.704 384.416 48 354.464 48c-58.112 0-104.896 47.168-104.896 104.992 0 8.32.704 16.32 2.432 23.936-87.264-4.256-164.48-46.08-216.352-109.792-9.056 15.712-14.368 33.696-14.368 53.056 0 36.352 18.72 68.576 46.624 87.232-16.864-.32-33.408-5.216-47.424-12.928v1.152c0 51.008 36.384 93.376 84.096 103.136-8.544 2.336-17.856 3.456-27.52 3.456-6.72 0-13.504-.384-19.872-1.792 13.6 41.568 52.192 72.128 98.08 73.12-35.712 27.936-81.056 44.768-130.144 44.768-8.608 0-16.864-.384-25.12-1.44C46.496 446.88 101.6 464 161.024 464c193.152 0 298.752-160 298.752-298.688 0-4.64-.16-9.12-.384-13.568 20.832-14.784 38.336-33.248 52.608-54.496z"/>
                </svg>
              </button>
              <a href="https://www.linkedin.com/search/results/all/?fetchDeterministicClustersOnly=true&heroEntityKey=urn%3Ali%3Afsd_profile%3AACoAADqHEfwBRiEyTbWBzYD4KAcaCUmLV8MgooE&keywords=nathan%20flattin&origin=RICH_QUERY_TYPEAHEAD_HISTORY&position=0&searchId=132cc8f0-a225-4b1e-af16-338a331d4a45&sid=ZLN&spellCorrectionEnabled=true" target="_blank" rel="noopener noreferrer" type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-[#0077b5] hover:bg-[#0055b5]">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 24 24">
                  <path d="M23.994 24v-.001H24v-8.802c0-4.306-.927-7.623-5.961-7.623-2.42 0-4.044 1.328-4.707 2.587h-.07V7.976H8.489v16.023h4.97v-7.934c0-2.089.396-4.109 2.983-4.109 2.549 0 2.587 2.384 2.587 4.243V24zM.396 7.977h4.976V24H.396zM2.882 0C1.291 0 0 1.291 0 2.882s1.291 2.909 2.882 2.909 2.882-1.318 2.882-2.909A2.884 2.884 0 0 0 2.882 0z"/>
                </svg>
              </a>
            </div>
          </div>
        </div>
        <div class="border border-cyan-400 rounded-md overflow-hidden max-md:max-w-[300px]">
          <img
            src="https://media.licdn.com/dms/image/D4E03AQFJK3ZwxqBP1Q/profile-displayphoto-shrink_200_200/0/1709309455968?e=1717027200&v=beta&t=leJZzJ8BWOvcqCSbx9pO93AQe0J4LL0CFaaaQ3jjHCQ"
            class="w-full h-60 object-contain object-top bg-gray-300"
          />
          <div class="p-4">
            <h4 class="text-xl font-extrabold">Vianney Touillon</h4>
            <p class="text-l mt-1">Epitech student & Dev Blockchain à POC </p>
            <div class="mt-4">
            </div>
            <div class="space-x-4 mt-4">
              <button type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-blue-600 hover:bg-blue-700">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 155.139 155.139">
                  <path d="M89.584 155.139V84.378h23.742l3.562-27.585H89.584V39.184c0-7.984 2.208-13.425 13.67-13.425l14.595-.006V1.08C115.325.752 106.661 0 96.577 0 75.52 0 61.104 12.853 61.104 36.452v20.341H37.29v27.585h23.814v70.761h28.48z"/>
                </svg>
              </button>
              <button type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-[#03a9f4] hover:bg-[#03a1f4]">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 512 512">
                  <path d="M512 97.248c-19.04 8.352-39.328 13.888-60.48 16.576 21.76-12.992 38.368-33.408 46.176-58.016-20.288 12.096-42.688 20.64-66.56 25.408C411.872 60.704 384.416 48 354.464 48c-58.112 0-104.896 47.168-104.896 104.992 0 8.32.704 16.32 2.432 23.936-87.264-4.256-164.48-46.08-216.352-109.792-9.056 15.712-14.368 33.696-14.368 53.056 0 36.352 18.72 68.576 46.624 87.232-16.864-.32-33.408-5.216-47.424-12.928v1.152c0 51.008 36.384 93.376 84.096 103.136-8.544 2.336-17.856 3.456-27.52 3.456-6.72 0-13.504-.384-19.872-1.792 13.6 41.568 52.192 72.128 98.08 73.12-35.712 27.936-81.056 44.768-130.144 44.768-8.608 0-16.864-.384-25.12-1.44C46.496 446.88 101.6 464 161.024 464c193.152 0 298.752-160 298.752-298.688 0-4.64-.16-9.12-.384-13.568 20.832-14.784 38.336-33.248 52.608-54.496z"/>
                </svg>
              </button>
              <a target="_blank" rel="noopener noreferrer" type="button" class="w-7 h-7 inline-flex items-center justify-center rounded-full bg-[#0077b5] hover:bg-[#0055b5]">
                <svg xmlns="http://www.w3.org/2000/svg" width="14px" fill="#fff" viewBox="0 0 24 24">
                  <path d="M23.994 24v-.001H24v-8.802c0-4.306-.927-7.623-5.961-7.623-2.42 0-4.044 1.328-4.707 2.587h-.07V7.976H8.489v16.023h4.97v-7.934c0-2.089.396-4.109 2.983-4.109 2.549 0 2.587 2.384 2.587 4.243V24zM.396 7.977h4.976V24H.396zM2.882 0C1.291 0 0 1.291 0 2.882s1.291 2.909 2.882 2.909 2.882-1.318 2.882-2.909A2.884 2.884 0 0 0 2.882 0z"/>
                </svg>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
