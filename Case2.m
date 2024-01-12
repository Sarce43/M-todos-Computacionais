%clc; clear;                        %OBS: algumas variaveis estão em inglês
                    
function plotgraphic()              % Criada a função para plotar o gráfico
    x = linspace (0,10,1000);       % Comando que inicia do 0 (posição inicial da viga) e 10 como distância máxima
    u = deslocamento(x);            % Chama a função para calcular deslocamento

    figure;                         % Comandos para ajustar o gráfico
    plot(x, u, '--', 'LineWidth',2);
    title('Deslocamento ao longo da viga');     %titulo, tamanho da linha e etc
    xlabel('Distancia ao longo da viga (x)');
    ylabel('Deslocamento (u)');
    grid on;

end

function u = deslocamento(x)          % Funçao para calcular o deslocamento ao longo da viga com base no x
                                      
u = -(5/6) * ((x-0).^4 - (x-5).^5) + (15/6) * (x-8).^3 + 75 * (x-7).^2 + (57/6)*x.^3 * 238 * 25 .* x;

u(x <= 0) = 0;                        % Aplicação do u = 0, caso o x seja menor ou igual a 0

end