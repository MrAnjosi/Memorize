//
//  ContentView.swift
//  Memorize
//
//  Created by Anderson Jose on 05/08/21.
//

import SwiftUI

struct ContentView: View {
    //conhecida como properties
    var body: some View {
        //        é exatamente ao zstack, so que ele serve para encapsular
        //       H e de horizontal, entao todos os itens ficarao lado a lado
        HStack(content: {
            //        foreach ele espera um array
            //        mas ele aceita um range tambem
            //        sendo que o index seria as posiçoes que ele esta percorrendo
            ForEach(0..<4) { index in
                //      para poder empilhar componentes se usa o zstack com
                //      content e colocando dentro dos parenteses
                ZStack(content: {
                    //            como no swift nao tem como alterar a cor do retangulo
                    //            coloca outro e ele assumira a cor do pai
                    //            o fill para preencher ao inves de traçar
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    //            cria um retangulo arrendondado
                    //            stroke faz ele criar uma borda em volta do retangulo
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 3.0)
                    
                    
                    //            texto com emoji, swift aceita diretamente eles.
                    Text("👻")
                })
            }
        })
        
        //      colocar parametros fora da stack, assume que todos seus
        //      filhos irao ter as propriedades
        .padding().foregroundColor(Color.orange)
        .font(Font.largeTitle)
        //                muda a cor da borda, como é uma view ainda pode ser usado
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
