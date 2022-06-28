//
//  CommunityAdd.swift
//  InstagramSwiftUITutorial
//
//  Created by 장우근 on 2022/06/27.
//

import SwiftUI

struct CommunityAdd: View {
    @State private var isBottomSheet = true
    @State private var feedKind = "피드 주제 선택"
    @State var title: String
    @State var content: String = "내용"
    @State var tags = [false, false, false, false, false, false, false, false, false, false]
    @State var tagName = ["정보에요", "화나요", "억울해요", "자랑해요", "점주가 말한다", "알바가 말한다", "구직(알바 구합니다)", "구인(알바 구합니다)", "이런 사람 조심하세요", "이런 상황 조심하세요"]
    
    var heightFactor: CGFloat {
        UIScreen.main.bounds.height > 800 ? 3.6 : 3
    }
    
    var offset: CGFloat {
        isBottomSheet ? 0 : 500
        //        isBottomSheet ? 0 : UIScreen.main.bounds.height / heightFactor
    }
    
    func changeTag (index: Int) {
        if (tags[index] == false) {
            for i in 0...9 {
                if (index == i){
                    tags[i] = true
                    feedKind = " - " + tagName[i]
                } else {
                    tags[i] = false
                }
            }
        } else {
            tags[index] = false
            feedKind = ""
        }
    }
    
    
    
    var mainView: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    self.isBottomSheet.toggle()
                } label: {
                    //                        self.feedKind.isEmpty
                    //                        ?
                    Text(feedKind)
                        .foregroundColor(.black)
                }.padding([.leading, .top], 16)
                
            }
            Divider()
            TextField("제목", text: $title)
                .padding(.leading, 16)
            Divider()
            TextField("내용", text: $content)
                .lineLimit(10)
                .padding(.leading, 16)
            Spacer()
        }.background(isBottomSheet ? .gray : .white)
    }
    
    var bottomView: some View {
        // BottomSheet
        GeometryReader { proxy in
            VStack {
                Spacer()
                VStack {
                    
                
                HStack {
                    Text("게시글 분류 선택")
                    Spacer()
                }.padding(8)
                Group {
                    HStack(spacing: 16){
                        Button(
                            action: {
                                changeTag(index: 0)
                            },
                            label:{
                                Text(tagName[0])
                                    .foregroundColor(tags[0] == true ? .blue : .black)
                            })
                        
                        Button(
                            action: {
                                changeTag(index: 1)
                            },
                            label:{
                                Text(tagName[1])
                                    .foregroundColor(tags[1] == true ? .blue : .black)
                            })
                        
                        Button(
                            action: {
                                changeTag(index: 2)
                            },
                            label:{
                                Text(tagName[2])
                                    .foregroundColor(tags[2] == true ? .blue : .black)
                            })
                        
                        Button(
                            action: {
                                changeTag(index: 3)
                            },
                            label:{
                                Text(tagName[3])
                                    .foregroundColor(tags[3] == true ? .blue : .black)
                            })
                    }.padding(.horizontal, 16)
                        .padding(.vertical, 8)
                    
                    HStack(spacing: 16){
                        Button(
                            action: {
                                changeTag(index: 4)
                            },
                            label:{
                                Text(tagName[4])
                                    .foregroundColor(tags[4] == true ? .blue : .black)
                            })
                        
                        Button(
                            action: {
                                changeTag(index: 5)
                            },
                            label:{
                                Text(tagName[5])
                                    .foregroundColor(tags[5] == true ? .blue : .black)
                            })
                    }.padding(.horizontal, 16)
                        .padding(.vertical, 8)
                    
                    HStack(spacing: 16){
                        Button(
                            action: {
                                changeTag(index: 6)
                            },
                            label:{
                                Text(tagName[6])
                                    .foregroundColor(tags[6] == true ? .blue : .black)
                            })
                        
                        Button(
                            action: {
                                changeTag(index: 7)
                            },
                            label:{
                                Text(tagName[7])
                                    .foregroundColor(tags[7] == true ? .blue : .black)
                            })
                    }.padding(.horizontal, 16)
                        .padding(.vertical, 8)
                    
                    HStack(spacing: 16){
                        Button(
                            action: {
                                changeTag(index: 8)
                            },
                            label:{
                                Text(tagName[8])
                                    .foregroundColor(tags[8] == true ? .blue : .black)
                            })
                        
                        Button(
                            action: {
                                changeTag(index: 9)
                            },
                            label:{
                                Text(tagName[9])
                                    .foregroundColor(tags[9] == true ? .blue : .black)
                            })
                    }.padding(.horizontal, 16)
                        .padding(.vertical, 8)
                }
                
                Group {
                    Divider()
                    
                    Button(action:{
                        isBottomSheet = false
                        feedKind = "자유 게시판" + feedKind
                    }, label: {
                        Text("자유 게시판")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    })
                    
                    Divider()
                    
                    Button(action:{
                        isBottomSheet = false
                        feedKind = "우리끼리" + feedKind
                    }, label: {
                        Text("우리끼리")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    })
                    
                    Divider()
                    
                    Button(action:{
                        isBottomSheet = false
                        feedKind = "구인구직" + feedKind
                    }, label: {
                        Text("구인구직")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    })
                        .padding(.bottom)
                
                    
                }
                }.background(.white)
                    .cornerRadius(8)
                    
                
                //                    Color.blue
                //                        .frame(
                //                            width: proxy.size.width,
                //                            height: proxy.size.height / heightFactor,
                //                            alignment: .center
                //                        )
            }
            .offset(y: offset)
            .animation(.easeInOut(duration: 0.49), value: self.isBottomSheet)
        }.edgesIgnoringSafeArea(.bottom)
            
    }
    
    var body: some View {
        ZStack {
            mainView
            bottomView
        }
    }
    
    struct CommunityAdd_Previews: PreviewProvider {
        static var previews: some View {
            CommunityAdd(title: ("Text"), content: ("Text"))
        }
    }
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
