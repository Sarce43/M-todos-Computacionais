clc; clear;

S = input('Quantas molas foram testadas? ');   % Quantas molas o Usuário deseja
F = zeros(1, S);                               % Criando vetores para cada variavel, já criando com valor 0
X = zeros(1, S);
K = zeros(1, S);
U = zeros(1, S);

for n = 1:S                                    % Uso do for para adicionar valor para cada mola 
    F(n) = input(sprintf('\nDigite a força da %d%s', n,'° mola: '));            
    X(n) = input(sprintf('\nDigite o deslocamento da %d%s', n,'° mola: '));

    K(n) = F(n)/X(n);    % Formula para constante e Energia Potencial solicitada

    U(n) = (0.5 * K(n) * X(n)^2); 
   
end
    energyMax = max(U);            % Comando max para coletar o maior valor de Energia potencial calculada
    clc;
    fprintf('\nValores:\n');       % Ajuste da tabela para o Usuário
    fprintf('Mola |  Força (N) |  Deslocamento (m) |  Constante (N/m) |  Energia Potencial (J)\n');

    for n = 1:S                    % Uso do for para separar o valor para cada vetor abaixo
        fprintf('%-5d|  %-10.2f|  %-15.2f  |  %-15.2f |  %-5.2f\n', n, F(n),X(n), K(n), U(n));
    end                            % Vale ressaltar que "-15" é a distância de afastamento da esquerda, enquanto "2f" é para valores flutuantes (vulgo decimais)
fprintf('\nEnergia Potencial Máxima: %.2f%s\n', energyMax,' J');