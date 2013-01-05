//
//  PrincipalViewController.h
//  ExercicioAula1
//
//  Created by Rafael Brigagão Paulino on 27/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import <UIKit/UIKit.h>

//protocolando o metodo <UITextFieldDelegate>
//pois assim a classe te avisa quando tiver um erro
//todavez que umaclasse vai atuar como delegate de outra devemos declarar um protocolo deste delegate conforme a linha abaixo. <Nome da classe de origem + Delegate>
@interface PrincipalViewController : UIViewController <UITextFieldDelegate /*,UITableDelegate */>

@property (nonatomic, weak) IBOutlet UILabel *minhaLabel;
@property (nonatomic, weak) IBOutlet UITextField *meuTexto;

-(IBAction)botaoClicado:(id)sender;

@end
