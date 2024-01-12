function vel                    % Criação da função velocidade

tvetor = -5:0.1:50;             % Criando um vetor do intervalo de t, que é entre -5 e 50

v = zeros(size(tvetor));        % Tornando a variavel de velocidade um vetor com o mesmo tamanho que o t

for n = 1:length(tvetor)        % Pega o ultimo valor do vetor para o for
    t = tvetor(n);
    if t >= 0 && t <= 8             % Uso do laço if para calcular de acordo com o valor do t
        v(n) = 10*t.^2 - 5*t;
    elseif t >= 8 && t <= 16
        v(n) = 624-3*t;
    elseif t >= 16 && t <= 26
        v(n) = 36*t + 12*(t-16).^2;
    elseif t > 26
        v(n) = 2136*exp(-0.1*(t-26));
    else
        v(n) = 0;

    end
end
  
    figure;                                 % Plotagem da variavel v em função do t
    plot(tvetor, v, 'LineWidth', 2);        % De acordo com os calculos feito nos laços
    title('Gráfico de v em função de t');
    xlabel('t');
    ylabel('v');
    grid on;
end