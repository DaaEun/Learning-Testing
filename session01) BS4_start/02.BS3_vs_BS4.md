# UPGRADE from BS3 to BS4

### 1. 파일구조

|Bootstrap 3|Bootstrap 4|
|:---|:---|
|/less/|/scss/|
|/js/|/ja/|
|/font/||

부트스트랩4에서 Glyphicons이 더이상 지원하지 않아 fonts 폴더가 없어졌다.


### 2. install

    1. 다운로드 방식 : Sass, Javascript, Documentation의 각 파일을 포함한 완전체 패키지를 다운로드 할 수 있다.

    2. CDN 방식 : Bootstrap CDN를 무료로 사용할 수 있다.


### 3. 그리드 시스템의 업데이트

사이즈 단위가 px에서 em으로 변경되었다. 또한, 스크린사이즈가 새롭게 정의되었다.

    · col-xs : 스크린사이즈가 34em미만의 가장 작은 사이즈의 class

    · col-sm : 스크린사이즈가 34em의 작은 사이즈의 class

    · col-md : 스크린사이즈가 48em이상의 중간 사이즈의 class

    · col-lg : 스크린사이즈가 62em이상의 큰 사이즈의 class

    · col-xl : 스크린사이즈가 75em미만의 특대 사이즈의 class

한가지 더 알아두어야 할 점은 .container  와 .row 이다.

부트스트랩3의 경우 margin 15px의 값을 지녔으나,   
부트스트랩4의 경우 .row는 rem으로 좌우 margin -.9375rem, padding 0.9375rem을 가지고 있다.   
.container도 rem으로 셋팅되어 있어 최대폭을 가지고 있다.  


### 4. 리셋은 reboot.css로

부트스트랩3에는 리셋으로서 nomalize.css가 이용되었지만, 부트스트랩4에서는 reboot.css가 이용된다.   
reboot.css는 부트스트랩의 리셋과 기본적인 스타일을 포함한다.


### 5. class의 변경과 업데이트

적지만 변경되거나 사라진 class가 있다. _디테일한 부분은 [부트스트랩 공식사이트](https://getbootstrap.com/docs/5.0/getting-started/introduction/)를 방문하자!_


### 6. JavaScript

    · IE8의 지원 종료
    · ES6의 지원 종료
    · AMD와 UMD 문제 해결

 _디테일한 부분은 [부트스트랩 공식사이트](https://getbootstrap.com/docs/5.0/getting-started/introduction/)를 방문하자!_

### 새로운 기능

완전히 새로운 기능들도 추가 되었다. _디테일한 부분은 [부트스트랩 공식사이트](https://getbootstrap.com/docs/5.0/getting-started/introduction/)를 방문하자!_

1. Cards

    부트스트랩4에서 Panels와 Wells가 없어지고 Cards가 추가되었다.  
    
    .card 

    .card-block 

    .card-title : 타이틀

    .card-text : 글요소

    .card-header : card의 헤더

    .card-footer : card의 푸터
    
2. Flexbox

    Flexbox의 레이아웃은 UI 레이아웃을 위한 최적화된 박스 모델이라고 할 수 있다.   
    페이지의 레이아웃이 리사이즈될 때 최적화 된 배치가 이루어진다. 단, Flexbox은 IE9는 지원하지 않는다.

3. Tooltips

    부트스트랩3에서 tipsy로 사용되었으나 부트스트랩4에서 tether로 바뀌었다.   
    툴팁을 사용 시 bootstrap.js 바로 앞에 tether.js를 인클루드(include) 한다.

_필자도 아직 온전히 이해하지 않았지만 차차 배우도록 하자!_    
