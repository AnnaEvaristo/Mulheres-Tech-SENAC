print('SEJA BEM VINDO AO CINEMA' )

print('Digite sua idade:')
idade = int(input())

if idade >= 18:
    print('Acesso Liberado, BOM FILME!!!\n Aproveite nosso combo de pipoca com refrigerante de 1 litro')
elif idade < 16:   
    print('Acesso negado! O Filme selecionado é para maiores de 18 anos')
else:
    print('Está acompanhado do resposável? Sim ou Não')
    responsavel = input().upper()
    if responsavel == 'Sim':
        print('Acesso Liberado, BOM FILME!!!')
    else:
        print('Acesso negado, O Filme selecionado é para maiores de 18 anos')
