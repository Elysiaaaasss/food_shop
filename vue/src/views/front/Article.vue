<script setup>
import { onMounted, ref } from 'vue'
import request from '@/utils/request.js'
import { useRouter } from 'vue-router'
import { Search } from '@element-plus/icons-vue'

const router = useRouter()
const articles = ref([])
const total = ref(0)
const pageNum = ref(1)
const pageSize = ref(6)
const keyword = ref('')
const type = ref('')

const load = () => {
  request.get('/article/front/page', {
    params: {
      pageNum: pageNum.value,
      pageSize: pageSize.value,
      keyword: keyword.value,
      type: type.value,
    }
  }).then(res => {
    if (res.code === '200') {
      articles.value = res.data.records || []
      total.value = res.data?.total || 0
    }
  })
}

const reset = () => {
  keyword.value = ""
  type.value = ""
  load()
}

const handleSizeChange = (newPageSize) => {
  pageSize.value = newPageSize
  load()
}

const handleCurrentChange = (newPageNum) => {
  pageNum.value = newPageNum
  load()
}

onMounted(() => {
  window.scrollTo(0, 0)
  load()
})
</script>

<template>
  <div class="article-page">
    <div class="hero-section">
      <h1 class="hero-title">文章专区</h1>
      <p class="hero-subtitle">探索美食文化与匠人故事</p>
    </div>

    <div class="search-section">
      <div class="search-container">
        <el-input
            v-model="keyword"
            placeholder="搜索文章标题或关键词"
            class="search-input"
            size="large"
            clearable
            @keyup.enter="load"
        >
          <template #prefix>
            <el-icon>
              <Search/>
            </el-icon>
          </template>
        </el-input>
        <el-button type="primary" size="large" @click="load" >
          搜索
        </el-button>
        <el-button type="danger" size="large" @click="reset" >
          重置
        </el-button>
      </div>

      <div class="filter-container">
        <span class="filter-label">分类</span>
        <el-radio-group v-model="type" @change="load" size="large" >
          <el-radio-button value="">全部</el-radio-button>
          <el-radio-button value="美食文化">美食文化</el-radio-button>
          <el-radio-button value="匠人故事">匠人故事</el-radio-button>
        </el-radio-group>
      </div>
    </div>


    <div class="articles-section">
      <div class="articles-grid">
        <div
            v-for="article in articles"
            :key="article.id"
            class="article-card"
            @click="router.push('/front/articleDetail?id='+ article.id)"
        >
          <div class="article-image">
            <img :src="article.img" :alt="article.name"/>
          </div>
          <div class="article-content">
            <h3 class="article-title">{{ article.name }}</h3>
            <p class="article-time">{{ article.time }}</p>
          </div>
        </div>
      </div>

      <div class="pagination-wrapper">
        <el-pagination
            @size-change="handleSizeChange"
            @current-change="handleCurrentChange"
            :current-page="pageNum"
            :page-sizes="[6, 12, 15, 30]"
            :page-size="pageSize"
            layout="total, sizes, prev, pager, next, jumper"
            :total="total">
        </el-pagination>
      </div>
    </div>
  </div>
</template>

<style scoped>

.article-page {
  min-height: 100vh;
  background-color: #ffffff;
}

.hero-section {
  padding: 80px 40px 60px;
  text-align: center;
  border-bottom: 1px solid #e5e5e5;
}

.hero-title {
  font-size: 42px;
  font-weight: 600;
  color: #000000;
  margin: 0 0 12px 0;
  letter-spacing: 2px;
}

.hero-subtitle {
  font-size: 16px;
  color: #666666;
  margin: 0;
  font-weight: 400;
}

.search-section {
  background: #fafafa;
  padding: 40px 40px;
  border-bottom: 1px solid #e5e5e5;
}

.search-container {
  max-width: 900px;
  margin: 0 auto;
  display: flex;
  gap: 12px;
  align-items: center;
}

.search-input {
  flex: 1;
}

.search-input :deep(.el-input__wrapper) {
  background: #ffffff;
  border: 1px solid #d9d9d9;
  box-shadow: none;
  transition: border-color 0.2s;
}

.search-input :deep(.el-input__wrapper:hover) {
  border-color: #000000;
}

.search-input :deep(.el-input__wrapper.is-focus) {
  border-color: #000000;
  box-shadow: none;
}

.search-button {
  border: 1px solid #000000;
  color: #ffffff;
  font-weight: 500;
  transition: all 0.2s;
}

.search-button:hover {
  background: #333333;
  border-color: #333333;
}

.reset-button {
  border: 1px solid #d9d9d9;
  color: #666666;
  font-weight: 500;
  transition: all 0.2s;
}



.filter-container {
  max-width: 900px;
  margin: 24px auto 0;
  display: flex;
  align-items: center;
  gap: 16px;
}

.filter-label {
  font-size: 14px;
  font-weight: 500;
  color: #000000;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.articles-section {
  max-width: 1200px;
  margin: 0 auto;
  padding: 60px 40px;
}

.articles-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
  gap: 40px;
  margin-bottom: 60px;
}

.article-card {
  background: #ffffff;
  cursor: pointer;
  transition: transform 0.2s;
  border: 1px solid #e5e5e5;
}

.article-card:hover {
  transform: translateY(-4px);
}

.article-image {
  width: 100%;
  height: 240px;
  overflow: hidden;
  background-color: #f5f5f5;
  border-bottom: 1px solid #e5e5e5;
}

.article-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s;
}

.article-card:hover .article-image img {
  transform: scale(1.03);
}

.article-content {
  padding: 24px;
}

.article-title {
  font-size: 18px;
  font-weight: 500;
  color: #000000;
  margin: 0 0 12px 0;
  line-height: 1.5;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
}

.article-time {
  font-size: 13px;
  color: #999999;
  margin: 0;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.pagination-wrapper {
  display: flex;
  justify-content: center;
  padding: 20px 0;
  border-top: 1px solid #e5e5e5;
}

</style>
