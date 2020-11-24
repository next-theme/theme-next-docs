hexo.extend.tag.register('darkmode_preview', () => `<style>
.image-comparison-container {
    position: relative;
}

.image-comparison {
    opacity: 1 !important;
}

@keyframes next-clip-path {
    from {
        clip-path: polygon(0 0, 0 0, 0 100%, 0 100%);
    }
    to {
        clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%);
    }
}

.image-comparison:last-of-type {
    animation: next-clip-path 8s alternate ease-in-out infinite;
    position: absolute;
    top: 0;
}
</style>
<div class="image-comparison-container">
    <img class="image-comparison" src="/images/next-schemes.png" alt="NexT Schemes">
    <img class="image-comparison" src="/images/next-schemes-dark.png" alt="NexT Schemes">
</div>`);
