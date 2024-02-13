//
//  SwiftUIView.swift
//  
//
//  Created by Mike Muszynski on 2/13/24.
//

import SwiftUI
import Music

struct MusicStaffViewRepresentable: UIViewRepresentable {
    var elements: [MusicStaffViewElement]
    
    func makeUIView(context: Context) -> MusicStaffView {
        let view = MusicStaffView(frame: CGRect(origin: .zero, size: CGSize(width: 400, height: 100)))
        view.elementArray = elements
        view.debug = true
        return view
    }
    
    func updateUIView(_ uiView: MusicStaffView, context: Context) {

    }
    
    
}

#Preview {
    MusicStaffViewRepresentable(elements: [
        MusicClef.bass,
        MusicPitch(name: .f, accidental: .sharp, octave: 3).note(with: .quarter)
    ])
        .previewLayout(.fixed(width: 100, height: 100))
}
