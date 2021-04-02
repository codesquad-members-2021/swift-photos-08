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

## GCD
### 주요 작업
- json data를 Doodle model에 decoding (Codable 채택)
- GCD를 활용해서 이미지 Data를 이미지뷰에 표시
 - DoodleViewController를 root로 하는 UINavigationController를 present, Close UIBarButtonItem 추가
 - DoodleCell에 UILongPressGestureRecognizer 추가
 - UIMenuController 생성해서 gesture 시 item을 띄우도록 구현
 - UIImageWriteToSavedPhotosAlbum 함수로 save item 선택 시, 라이브러리에 저장하도록 구현
 - 라이브러리에 사진이 업데이트될 때마다, ViewController collectionView를 갱신시키도록 observer 구현


<img width="412" alt="스크린샷 2021-03-25 오후 4 47 47" src="https://user-images.githubusercontent.com/75113784/112437087-e8297880-8d89-11eb-8326-a6fefd330d6a.png"><img width="412" alt="스크린샷 2021-03-25 오후 4 49 04" src="https://user-images.githubusercontent.com/75113784/112437202-07280a80-8d8a-11eb-955a-071886147d36.png">
