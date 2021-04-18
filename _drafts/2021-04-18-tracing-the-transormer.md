---
layout: post
title:  "Tracing The Transformer"
categories: 👨‍💻
---

One of the biggest advances in AI and NLP in recent years was the development of the [transformer][vaswani] by Vaswani et al. When learning a new model architecture something that always takes me some time to understand is getting a grasp of the batch dimensions as they go through specific components of the architectures.  In this post I'll trace through the batch through the architecture of the encoder and decoder parts of the transformer as well as cover the multi head self attention mechanism and masking procedures. I'll start with a simple example and explain how batches change as we go through the model. 



[vaswani]: https://arxiv.org/pdf/1706.03762.pdf
