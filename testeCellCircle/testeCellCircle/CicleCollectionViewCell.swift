//
//  CicleCollectionViewCell.swift
//  testeCellCircle
//
//  Created by Renan Alves on 08/03/2018.
//  Copyright © 2018 Renan Alves. All rights reserved.
//

import UIKit

class CicleCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.blue
        self.layer.cornerRadius = 70
    
    
    }
    /**
     Método chamado quando a Focus Engine é atualizada. São parametrizados o contexto do foco e o Animation Coordinator.
     */
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        //        print(#function, coordinator)
        
        if context.nextFocusedView == self {
            coordinator.addCoordinatedAnimations({ () -> Void in
                self.applyCustomShadow(with: 0.5, and: CGSize(width: 0, height: 5))
            }, completion: nil)
        }
        else if context.previouslyFocusedView == self {
            coordinator.addCoordinatedAnimations({ () -> Void in
                self.rollbackCustomShadow()
            }, completion: nil)
        }
        
    }
    
    // MARK: Shadowing Effect Methods
    /**
     Método para aplicação de sombra no momento em que a UIView ganha o foco.
     - parameters:
     - opacity: Opacidade da sombre projetada.
     - offset: Medida em CGSize da diferença da sombra em relação ao conteúdo.
     - Requires: iOS 6.0 ou superior
     - Precondition: Opacity e Offset não podem ser nil. focusedColor deve ser uma cor válida.
     */
    func applyCustomShadow(with opacity: Float, and offset: CGSize) {
        
        
        
        // Animação de scale para simular o efeito de ganho de foco.
        // self.circle.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        self.transform = CGAffineTransform(scaleX: 1.15, y: 1.15)
    }
    
    /**
     Método para reconfigurar a sombra da UIView.
     - Precondition: o textColor não pode ser nil.
     - Note: As propriedades da layer podem ser animadas.
     */
    func rollbackCustomShadow() {
        self.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
    
}
