---
title: "Efficient Adversarial Attacks for Visual Object Tracking"
categories:
  - Adversarial-Examples
tags:
  - Adversarial Attack
  - Visual Object Tracking
  - Generation based Adversarial Attack
  - Siamese Network based VOT
---

This paper is about the application of adversarial examples on object tracking. The preprint is posted at [arXiv:2008.00217](https://arxiv.org/abs/2008.00217). 
Adversarial examples 의 application 중에서 object tracking 에 대한 논문이다. 2020년 8월 1일에 arxiv 에 발표되었고 visual object tracking (VOT) 에 untarget 과 target 측면 
에 대해 조사하다 image classification, detection 그리고 segmentation 에 대한 연구는 많이 보았지만 object tracking 에 대한 연구는 보지 못하여 advsarial attack on object tracking 에 대해 조사해보기로 결정했다. 이 논문은 2020년 8월 1일에 arxiv 에 제출되었고 adversarial attack on visual object tracking 의 첫번째 work 인 것 같다. 그래서 이 논문을 블로그에 정리하였고 많은 사람들에게 도움이 되었으면 한다.

### Table of Contents
1. [Introduction](#Introduction)
2. [Related Work](#Related\ Work)
    1. Deep Learning in Object Tracking
    2. Iterative and Generative Adversary
3. Generating Adversarial Examples
    1. Problem Definition
    2. Drift Loss Attack
    3. Embedded Feature Loss Attack
    4. Unified and Real-time Adversary
4. Experiments
    1. Datasets and Threat models
    2. Evaluation Metrics
    3. Untargeted Attack Results
    4. Comparisons with the Baselines
    5. Targeted Attack Results
    6. Transferability to SiamRPN
5. Conclusion

# Introduction
Adversarial attack 이 무엇인지 먼저 설명하자면, 입력 데이터를 의도적으로 조작하여 사람들은 차이를 못 느끼지만 인공지능은 속이는 공격이다. 이렇게 조작된 입력 데이터들을 adversarial examples 라고 부르면 이에 대한 attack 과 defense 가 최근 큰 관심을 끌고있다.

최근 연구에서 많은 인공지능 모델들이 adversarial examples 에 매우 취약한 점을 보여졌는데 특히 이미지 도메인에서 많은 연구들이 진행되었다. [Image Classification](https://arxiv.org/abs/1610.08401), [object detection](https://arxiv.org/abs/1811.12641), 그리고 [semantic segmentation](https://arxiv.org/abs/1703.08603) 테스크들에서 adversarial attack이 성공적으로 이루어졌지만 object tracking 에 대한 adversarial attack은 아직까지 다루어지지 않았다. Adversarial examples 은 더 안정적인 인공지능을 만드는데 중요하기 때문에 이 논문에서는 비디오에서 정해진 한 물체만 쫓는 visual object tracking (VOT) 에 대한 adversarial examples 를 다루었다.


Contribution:
1. Loss

# Related Work
## Deep Learning in Object Tracking

최신 VOT 딥러닝 모델은 크게 두가지 종류로 나누어진다. 첫번째 종류로 [tracking-by-detection framework](https://arxiv.org/abs/1804.04273) 는 첫번째 단계에서 타겟 물체주변을 셈플링하고 두번째 단계에서 classifier 가 셈플링된 이미지 패치가 타겟 물체인지 아닌지 binary classification을 한다. 두번째 종류는 siamese network based tracker이다.

## Iterative and Generative Adversary
