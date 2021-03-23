# swift-photos-08
iOS 연습 - 8팀(Neo, 쑤)

## 요구사항

- 디자인과 시뮬레이터는 아이폰 12를 기준으로 작업한다.
- 스토리보드 ViewController에 CollectionView를 추가하고 Safe 영역에 가득 채우도록 frame을 설정한다.
- CollectionView Cell 크기를 80 x 80 로 지정한다.
- UICollectionViewDataSource 프로토콜을 채택하고 40개 cell을 랜덤한 색상으로 채우도록 구현한다.

<img width="412" alt="스크린샷 2021-03-22 오후 5 01 34" src="https://user-images.githubusercontent.com/33626693/111958164-43602e80-8b30-11eb-8598-f971fcd3b6f1.png">
완료일자 : 3월 22일

## Photos 라이브러리
### 요구사항
- UINavigationController를 Embed시키고, 타이틀을 'Photos'로 지정
- PHAsset 프레임워크를 사용해서 사진보관함에 있는 사진 이미지를 Cell에 표시
- PHCachingImageManager 클래스를 활용해서 썸네일 이미지를 100 x 100 크기로 생성해서 Cell에 표시
- PHPhotoLibrary 클래스에 사진보관함이 변경되는지 여부를 옵저버로 등록

<img width="412" alt="스크린샷 2021-03-23 오후 3 04 25" src="https://user-images.githubusercontent.com/75113784/112100861-1c196800-8be9-11eb-8da5-1c49a517de80.png">
완료일자 : 3월 23일
