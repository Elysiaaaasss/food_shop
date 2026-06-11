<script setup>
import {onMounted, ref} from 'vue'
import request from '@/utils/request.js'
import {useRoute, useRouter} from 'vue-router'
import { DArrowLeft } from '@element-plus/icons-vue'
const route = useRoute()
const router = useRouter()

const article = ref({})
const id = route.query.id

const load = () => {
  request.get("/article/" + id).then(res => {
    article.value = res.data
  })
}

const goBack = () => {
  router.back()
}

onMounted(() => {
  window.scrollTo(0, 0)
  load()
})
</script>

<template>
  <div class="article-detail">

    <div class="article-cover" >
      <img :src="article.img" :alt="article.name" />
    </div>

    <div class="article-header">
      <div @click="goBack" class="back-button">
        <el-icon><DArrowLeft /></el-icon>
      </div>
      <h1 class="article-title">{{ article.name }}</h1>
      <span class="article-date">
        {{article.type}}
        <el-divider direction="vertical" />{{ article.time }}</span>
    </div>


    <div class="divider"></div>


    <div class="article-content">
      <div class="article-text" v-html="article.content"></div>
    </div>
  </div>
</template>

<style scoped>
.article-detail {
  max-width: 1200px;
  margin: 0 auto;
  padding: 40px 20px;
  background: #fff;
}

.article-cover {
  width: 100%;
  height: 400px;
  margin-bottom: 40px;
  object-fit: cover;
  overflow: hidden;
  border-radius: 8px;
}

.article-cover img {
  width: 100%;
  height: auto;
  display: block;
  object-fit: cover;
}

.article-header {
  display: flex;
  align-items: center;
  gap: 20px;
  margin-bottom: 20px;
}

.back-button {
  cursor: pointer;
  font-size: 30px;
  padding: 8px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #333;
  transition: color 0.3s;
  flex-shrink: 0;
}

.article-title {
  flex: 1;
  font-size: 24px;
  font-weight: 600;
  color: #333;
  margin: 0;
}

.article-date {
  font-size: 14px;
  color: #666;
  white-space: nowrap;
}

.divider {
  height: 1px;
  background: #e0e0e0;
  margin-bottom: 30px;
}

.article-content {
  line-height: 1.8;
  color: #333;
}


.article-text {
  font-size: 16px;
  line-height: 1.8;
  color: #333;
}

.article-text :deep(p) {
  margin-bottom: 20px;
}

.article-text :deep(img) {
  max-width: 500px;
  height: auto;
  margin: 30px 0;
  border-radius: 8px;
}

</style>
