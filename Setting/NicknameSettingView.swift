//
//  NicknameSettingView.swift
//  MusicWriting
//
//  Created by Choi Minkyeong on 2/4/25.
//

import SwiftUI

struct NicknameSettingView: View {
//    @State var name: String = UserDefaults.standard.string(forKey: "userName") ?? ""
    @State var name: String = ""
    @State var goNext: Bool = false
    
    var body: some View {
        HStack {
            TextField("name", text: $name)
                .modifier(LoginTextFieldModifier(width: 300, height: 70))
            Spacer()
            Button {
                goNext = true
            } label: {
                Circle()
                    .foregroundStyle(.gray)
                    .frame(width: 70, height: 70)
            }
        }
        if goNext {
            // 다음 페이지로 넘어가기
        }
    }
}


struct LoginTextFieldModifier: ViewModifier {
    
    var width: CGFloat
    var height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .padding()
            .textInputAutocapitalization(.never) // 처음 문자 자동으로 대문자로 바꿔주는 기능 막기
            .frame(width: width, height: height)
            .background {
                RoundedRectangle(cornerRadius: 7)
                    .foregroundColor(.gray)
                    .frame(width: width, height: height)
            }
    }
}


//UserDefaults.standard.set("hohyeon", forKey: "userName")
#Preview {
    NicknameSettingView()
}
