<script setup>
import { ref, computed, onMounted } from 'vue'
import { ArrowRight, Shop, StarFilled, Bell, Location } from '@element-plus/icons-vue'
import request from '../utils/request'
import { useRouter } from 'vue-router'
const router = useRouter()

const recommend = ref([])
const loadRecommend = () => {
  request.get("/goods/recommend").then(res => {
    recommend.value = res.data
  })
}


const articles = ref([])

const loadArticle = () => {
  request.get("/article").then(res => {
    articles.value = res.data.splice(0,3)
  })
}

onMounted(() => {
  loadRecommend()
  loadArticle()
})
</script>

<template>
  <div class="homepage">

    <div class="hero-section">
      <div class="hero-content">
        <h1 class="hero-title">发现优质生活</h1>
        <p class="hero-subtitle">精选商品与深度内容，为您打造更好的使用体验</p>
      </div>
    </div>

    <div class="section articles-section">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">精选文章</h2>
          <p class="section-subtitle">阅读更多有趣的内容</p>
        </div>

        <div class="articles-grid">
          <article
              v-for="article in articles"
              :key="article.id"
              class="article-card"
          >
            <div class="article-image-wrapper">
              <img
                  :src="article.img "
                  class="article-image"
              />
            </div>
            <div class="article-content">
              <div class="article-meta">
                <span class="article-date">{{ article.time }}</span>
                <span class="article-category">{{ article.type }}</span>
              </div>
              <h3 class="article-title">{{ article.name }}</h3>
              <div class="article-footer">
                <span class="read-more" @click="router.push('/front/article')">
                  阅读更多
                  <ArrowRight style="width: 1em; height: 1em; margin-right: 8px" />
                </span>
              </div>
            </div>
          </article>
        </div>
      </div>
    </div>


    <div class="section">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">精选推荐</h2>
          <p class="section-subtitle">为您精心挑选的优质商品</p>
        </div>

        <div class="products-grid">
          <div
              v-for="item in recommend"
              :key="item.id"
              class="product-card"
          >
            <div class="product-image-wrapper">
              <img :src="item.img" :alt="item.name" class="product-image" />
            </div>
            <div class="product-info">
              <h3 class="product-name">{{ item.name }}</h3>
              <p class="product-desc">{{ item.info }}</p>
              <div class="product-footer">
                <span class="product-price">¥{{ item.price }}</span>
                <button class="product-btn"
                        @click="router.push('/front/home')">
                  <Shop class="btn-icon" />
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


  </div>
</template>

<style scoped>
.homepage {
  min-height: 100vh;
  background: #fafafa;
}

.hero-section {
  background: linear-gradient(135deg, #1a1a1a 0%, #2d2d2d 100%);
  color: white;
  padding: 120px 20px 80px;
  text-align: center;
}

.hero-content {
  max-width: 800px;
  margin: 0 auto;
}

.hero-title {
  font-size: 56px;
  font-weight: 400;
  letter-spacing: -0.02em;
  margin: 0 0 24px 0;
  line-height: 1.2;
}

.hero-subtitle {
  font-size: 20px;
  opacity: 0.8;
  font-weight: 300;
  margin: 0;
  line-height: 1.6;
}


.section {
  padding: 80px 20px;
}

.articles-section {
  background: white;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
}

.section-header {
  text-align: center;
  margin-bottom: 60px;
}

.section-title {
  font-size: 36px;
  font-weight: 400;
  margin: 0 0 12px 0;
  color: #1a1a1a;
}

.section-subtitle {
  font-size: 16px;
  color: #666;
  margin: 0;
  font-weight: 300;
}


.products-grid {
  display: grid;/*采用grid布局*/
  grid-template-columns: repeat(4, 1fr);/*一行展示n个，修改第一个参数即可*/
  gap: 20px;/*元素间隔宽度*/
}

.product-card {
  background: white;
  border: 1px solid #e5e5e5;
  border-radius: 8px;
  overflow: hidden;
  transition: all 0.3s ease;
}


.product-image-wrapper {
  width: 100%;
  height: 280px;
  overflow: hidden;
  background: #f5f5f5;
}

.product-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}


.product-info {
  padding: 20px;
}

.product-name {
  font-size: 18px;
  font-weight: 400;
  margin: 0 0 8px 0;
  color: #1a1a1a;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.product-desc {
  font-size: 14px;
  color: #666;
  margin: 0 0 16px 0;
  line-height: 1.5;
  height: 42px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}

.product-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.product-price {
  font-size: 24px;
  font-weight: 400;
  color: #1a1a1a;
}

.product-btn {
  width: 40px;
  height: 40px;
  border: 1px solid #1a1a1a;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  transition: all 0.2s ease;
}


.btn-icon {
  font-size: 18px;
}

.articles-grid {
  display: grid;/*采用grid布局*/
  grid-template-columns: repeat(3, 1fr);/*一行展示n个，修改第一个参数即可*/
  gap: 20px;/*元素间隔宽度*/
}

.article-card {
  background: white;
  border: 1px solid #e5e5e5;
  border-radius: 8px;
  overflow: hidden;
  cursor: pointer;
  transition: all 0.3s ease;
}

.article-card:hover {
  border-color: #1a1a1a;
  transform: translateY(-4px);
}

.article-image-wrapper {
  width: 100%;
  height: 200px;
  overflow: hidden;
  background: #f5f5f5;
}

.article-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.article-card:hover .article-image {
  transform: scale(1.05);
}

.article-content {
  padding: 24px;
}

.article-meta {
  display: flex;
  gap: 12px;
  margin-bottom: 12px;
  font-size: 13px;
  color: #666;
}

.article-date,
.article-category {
  font-weight: 300;
}

.article-title {
  font-size: 20px;
  font-weight: 400;
  margin: 0 0 12px 0;
  color: #1a1a1a;
  line-height: 1.4;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 1;
  -webkit-box-orient: vertical;
}

.article-footer {
  justify-content: space-between;
  align-items: center;
}

.read-more {
  font-size: 14px;
  color: #1a1a1a;
  display: flex;
  align-items: center;
  gap: 4px;
  font-weight: 400;
}

.article-card:hover .arrow-icon {
  transform: translateX(4px);
}


</style>
