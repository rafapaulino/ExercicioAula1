//
//  PrincipalViewController.m
//  ExercicioAula1
//
//  Created by Rafael Brigagão Paulino on 27/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

//metodo sera chamado toda vez que o textfiled receber o evento de clique no botao return
//o textfield nao sabe o que fazer entao delega para a viewController executar alguma acao, definida neste metodo
//nao esquecer de fazer a conexao no StoryBoard (delegate -> ViewController)
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"O return foi clicado a periferia agradece!");
    
    //neste caso quero que return execute a mesma coisa que o botao faria
    [self botaoClicado:nil];
    
    //tanto faz o retorno para este metodo
    return YES;
}

//metodo que altera o texto da label
-(IBAction)botaoClicado:(id)sender
{
    //pegar o texto do botao
    NSString *novoTexto = _meuTexto.text;
    //alterar o texto do label
    _minhaLabel.text = novoTexto;
    //apagar o texto do campo de entrada de texto
    _meuTexto.text = @"";
    
    //para fazer o teclado ser ocultado nos temos que fazer o campo de texto perder o foco
    //firstresponder - ser o componente com o foco naquele momento. Resign faz o componente abrir mao do foco
    [_meuTexto resignFirstResponder];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
