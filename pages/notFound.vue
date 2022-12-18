<template>
  <div>
    <div class="not-found">
      <div class="not-found__content">
        <p class="not-found__title">
          お探しのページは見つかりませんでした
        </p>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({})
</script>

<style lang="scss" scoped>
.not-found {
  width: $container-width !important;
  margin-right: auto;
  margin-left: auto;

  &__content {
    width: 100%;
    padding: 90px 80px 70px;
    margin: 0;
    box-sizing: border-box;
    background: $color-base;
    box-shadow: 0 12px 24px rgba(0, 0, 0, .16);
    text-align: center;
  }

  &__title {
    margin: 0;
    @include text(small, regular);
    font-weight: 900;
  }
}
</style>
