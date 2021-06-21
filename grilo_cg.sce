//Igor Yoshimitsu Ide
//Cíntia Bras Mesquita
//Tiago Pinheiro Camargo

a = imread('C:\desafio.JPG');

im = a;
count = 0;
for r=1:274 // 1:274 
    for g=1:368 // 1:368
        for b = 0:0//1 - ciano-> vermelho //2 - verde -> roxo // 3 -> amarelo azul escuro
            if a(r, g)>=0 && a(r, g)<125
               im(r, g, 1) = 20;
            end
            if a(r, g)>=125 && a(r, g)<130
               im(r, g, 3) = 10;
            end
            if a(r, g)>=130 && a(r, g)<147
                im(r, g, 3) = 10;
            end
            if a(r, g)>=147 && a(r, g)<155//amarelo
                im(r, g, 3) = 50;
            end
            if a(r, g)>=155 && a(r, g)<160// amarelo
                im(r, g, 3) = 80;
            end
            if a(r, g)>=160 && a(r, g)<170 //amarelado
               im(r, g, 3) = 80;
            end
            if a(r, g)>=170 && a(r, g)<255
                im(r, g, 3) = 200;
            end
        end
   end
end

imshow(im);
imwrite(im, 'desafio_feito.jpg');

