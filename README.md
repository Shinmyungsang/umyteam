## 초기 설계 
-- 아이디어
1. 명상형의 아이디어로 잉여들을 위한 사이트를 만들기로 했다.
그들이 밖으로 나갈 수있게 도와주려고 한다.

2. 구현할 것들 ? 

잉여들이 사용할 수 있는 사이트를 만드는 것으로 크게 html파일은 4개로 만들기로 하였다.
### 대문, 여가, 음식, 연애를 만들기로 하였다.
따라서 각자 페이지 하나씩 맡아서 홈페이지를 만들기로 했다.

3. 데이터베이스 구조 + controller

4. 분업

선홍 -> 여가 사이트, 현경 -> index 사이트(main), 명상-> 음식 사이트 / 나머지 하나 연애 사이트
마지막 연애 사이트는  crud를 이용하여 게시판을 만들고, 사람들끼리 만날 수 있도록 하기로 했다.

5. 어려운 점 or  사용할 젬

6. 문제(해결방향도 같이)

선홍:다른 사이트들을 연결 한 뒤, 마지막으로 게시판을 만들려고 했으나 controller를 두 개 만들어야 한다고 했다. 
왜냐하면 controller를 2개 만들어 주지 않으면, root로 지정한 posts/index의 love로 가기 때문에 crud가 되지 않기 때문이다.
따라서 controller를 2개, 즉 love controller를 만들어줌으로써, love로 바로 가서 crud가 적용되도록 만들기로 하였다.
하지만 controller를 2개로 해준다는 생소한 개념으로 인해 resource도 헷갈리기 시작했다. resource는 자동으로 crud를 연결해주는 것이다.

love의 복수형은 lofe로 받아주는 것도 어려웠다. 현경이가 rake routes로 해결했다.

현경:routes 설정하는 것이 어려웠다.
index에서 food, love, leisure 를 연결해야 해서, get '/leisure', to: 'posts#leisure' 형식으로 연결해줬다.
또한 love에서 게시판기능을 사용하려고 crud에서 이용한 restful한 routes를 설정해주었다.
loves controller를 만들고, loves안에 crud에서 배운 index, new 등의 action을 추가해주었다.