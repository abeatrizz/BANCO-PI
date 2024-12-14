
-- Tabela Usuario (Funcionários e Clientes)
INSERT INTO `salão`.`Usuario` (`Email`, `Senha`, `Tipo_Usuario`) VALUES
('funcionario1@email.com', 'senha001', 'Funcionário'),  
('funcionario2@email.com', 'senha002', 'Funcionário'),  
('funcionario3@email.com', 'senha003', 'Funcionário'),  
('funcionario4@email.com', 'senha004', 'Funcionário'), 
('funcionario5@email.com', 'senha005', 'Funcionário'),  
('funcionario6@email.com', 'senha006', 'Funcionário'),  
('funcionario7@email.com', 'senha007', 'Funcionário'), 
('funcionario8@email.com', 'senha008', 'Funcionário'),  
('funcionario9@email.com', 'senha009', 'Funcionário'),  
('funcionario10@email.com', 'senha010', 'Funcionário'), 
('funcionario11@email.com', 'senha011', 'Funcionário'), 
('funcionario12@email.com', 'senha012', 'Funcionário'), 
('funcionario13@email.com', 'senha013', 'Funcionário'), 
('funcionario14@email.com', 'senha014', 'Funcionário'), 
('funcionario15@email.com', 'senha015', 'Funcionário'), 
('cliente1@email.com', 'senha016', 'Cliente'),         
('cliente2@email.com', 'senha017', 'Cliente'),          
('cliente3@email.com', 'senha018', 'Cliente'),         
('cliente4@email.com', 'senha019', 'Cliente'),         
('cliente5@email.com', 'senha020', 'Cliente'),          
('cliente6@email.com', 'senha021', 'Cliente'),         
('cliente7@email.com', 'senha022', 'Cliente'),         
('cliente8@email.com', 'senha023', 'Cliente'),          
('cliente9@email.com', 'senha024', 'Cliente'),          
('cliente10@email.com', 'senha025', 'Cliente'),         
('cliente11@email.com', 'senha026', 'Cliente'),         
('cliente12@email.com', 'senha027', 'Cliente'),         
('cliente13@email.com', 'senha028', 'Cliente'),        
('cliente14@email.com', 'senha029', 'Cliente'),         
('cliente15@email.com', 'senha030', 'Cliente');         


-- Tabela Cliente
INSERT INTO `salão`.`Cliente` (`Id_Usuario`, `CPF`, `Telefone`, `Nome`) VALUES
(16, '123.456.789-01', '11987654321', 'Carlos Souza'),
(17, '234.567.890-12', '11976543210', 'Ana Costa'),
(18, '345.678.901-23', '11965432109', 'Juliana Pereira'),
(19, '456.789.012-34', '11954321098', 'Ricardo Almeida'),
(20, '567.890.123-45', '11943210987', 'Fernanda Lima'),
(21, '678.901.234-56', '11932109876', 'Roberta Santos'),
(22, '789.012.345-67', '11921098765', 'Marcos Silva'),
(23, '890.123.456-78', '11910987654', 'Raquel Fernandes'),
(24, '901.234.567-89', '11999876543', 'Lucas Oliveira'),
(25, '012.345.678-90', '11988765432', 'Camila Rocha'),
(26, '123.456.789-10', '11977654321', 'Bruna Lima'),
(27, '234.567.890-11', '11966543210', 'Paulo Costa'),
(28, '345.678.901-12', '11955432109', 'Mariana Almeida'),
(29, '456.789.012-13', '11944321098', 'Felipe Souza'),
(30, '567.890.123-14', '11933210987', 'Sofia Pereira');

-- Tabela Funcionario
INSERT INTO `salão`.`Funcionario` (`Id_Usuario`, `Matricula`, `Funcao`, `Disponibilidade`, `Nome`) VALUES
(1, 'F12345', 'Cabeleireiro', 'Segunda a Sexta, 9h às 18h', 'Lucas Martins'),
(2, 'F67890', 'Manicure', 'Terça a Sábado, 10h às 16h', 'Maria Johnson'),
(3, 'F11223', 'Cabeleireiro', 'Segunda a Sexta, 8h às 17h', 'Gabriela Costa'),
(4, 'F44556', 'Pedicure', 'Segunda a Sábado, 9h às 18h', 'Felipe Moura'),
(5, 'F78901', 'Cabeleireiro', 'Segunda a Quinta, 8h às 17h', 'Ricardo Martins'),
(6, 'F22334', 'Manicure', 'Segunda a Sábado, 9h às 18h', 'Tiago Souza'),
(7, 'F55667', 'Cabeleireiro', 'Segunda a Sexta, 10h às 19h', 'Patricia Gomes'),
(8, 'F88900', 'Pedicure', 'Terça a Sábado, 9h às 18h', 'Luciana Alves'),
(9, 'F66778', 'Cabeleireiro', 'Segunda a Sexta, 9h às 18h', 'Thiago Silva'),
(10, 'F22345', 'Manicure', 'Segunda a Sábado, 9h às 16h', 'Claudia Rodrigues'),
(11, 'F99876', 'Cabeleireiro', 'Segunda a Sexta, 8h às 17h', 'Victor Martins'),
(12, 'F33445', 'Manicure', 'Segunda a Sábado, 10h às 17h', 'Rosana Santos'),
(13, 'F55678', 'Pedicure', 'Segunda a Sexta, 9h às 18h', 'Carla Lima'),
(14, 'F88999', 'Cabeleireiro', 'Terça a Sábado, 9h às 18h', 'Ricardo Oliveira'),
(15, 'F44567', 'Manicure', 'Segunda a Sexta, 10h às 18h', 'Juliana Ferreira');

-- Tabela Agendamento
INSERT INTO `salão`.`Agendamento` (`Data`, `Hora`, `Id_Cliente`, `Id_Funcionario`) VALUES
('2024-12-15', '09:00:00', 16, 1),
('2024-12-15', '10:00:00', 17, 2),
('2024-12-16', '11:00:00', 18, 3),
('2024-12-16', '14:00:00', 19, 4),
('2024-12-17', '13:00:00', 20, 5),
('2024-12-17', '15:00:00', 21, 6),
('2024-12-18', '09:30:00', 22, 7),
('2024-12-18', '10:30:00', 23, 8),
('2024-12-19', '11:30:00', 24, 9),
('2024-12-19', '13:30:00', 25, 10),
('2024-12-20', '14:30:00', 26, 11),
('2024-12-20', '16:00:00', 27, 12),
('2024-12-21', '17:00:00', 28, 13),
('2024-12-21', '09:00:00', 29, 14),
('2024-12-22', '10:00:00', 30, 15);

-- Tabela Categoria
INSERT INTO `salão`.`Categoria` (`Nome`) VALUES
('Cabelos'),
('Unhas'),
('Pedicure'),
('Massagem'),
('Design de Sobrancelhas'),
('Maquiagem'),
('Estética Facial'),
('Tratamento Capilar'),
('Escova'),
('Corte Masculino'),
('Corte Feminino'),
('Tratamento para Pele'),
('Alongamento de Cílios'),
('Depilação'),
('Reflexologia'),
('Peeling Facial'),
('Tratamento para Unhas'),
('Banho de Creme'),
('Corte Infantil'),
('Maquiagem para Eventos');

-- Tabela Servico
INSERT INTO `salão`.`Servico` (`Nome`, `Descricao`, `Preco`, `Duracao`, `Qtd_Profissionais`, `Disponibilidade`, `Id_Categoria`) VALUES
('Corte de Cabelo', 'Corte estilizado para todos os tipos de cabelo', 80.00, 60, 1, 'Segunda a Sexta, 9h às 18h', 1),
('Manicure Completa', 'Corte, lixamento e esmaltação das unhas', 45.00, 90, 1, 'Terça a Sábado, 10h às 16h', 2),
('Pedicure Completa', 'Cuidados com as unhas dos pés, incluindo esmaltação', 40.00, 90, 1, 'Segunda a Sábado, 10h às 16h', 3),
('Massagem Relaxante', 'Massagem terapêutica para relaxamento', 120.00, 60, 1, 'Segunda a Sexta, 10h às 19h', 4),
('Design de Sobrancelhas', 'Modelagem e tintura das sobrancelhas', 35.00, 30, 1, 'Segunda a Sexta, 9h às 18h', 5),
('Maquiagem Básica', 'Maquiagem leve para o dia a dia', 70.00, 45, 1, 'Segunda a Sábado, 10h às 18h', 6),
('Estética Facial', 'Limpeza e hidratação facial profunda', 150.00, 90, 1, 'Segunda a Sexta, 9h às 18h', 7),
('Tratamento Capilar', 'Tratamento intensivo para recuperação dos fios', 130.00, 60, 1, 'Segunda a Sexta, 10h às 18h', 8),
('Escova', 'Escova modelada para um visual mais liso', 50.00, 45, 1, 'Segunda a Sexta, 9h às 18h', 9),
('Corte Masculino', 'Corte de cabelo para homens', 45.00, 30, 1, 'Segunda a Sexta, 9h às 18h', 10),
('Corte Feminino', 'Corte moderno para mulheres', 60.00, 45, 1, 'Segunda a Sexta, 9h às 18h', 11),
('Peeling Facial', 'Peeling para rejuvenescimento da pele', 200.00, 60, 1, 'Segunda a Sexta, 9h às 18h', 12),
('Alongamento de Cílios', 'Aplique de cílios para dar volume e definição', 100.00, 60, 1, 'Terça a Sábado, 9h às 17h', 13),
('Depilação Completa', 'Depilação com cera para todas as áreas', 70.00, 60, 1, 'Segunda a Sexta, 9h às 18h', 14),
('Reflexologia', 'Massagem terapêutica nos pés', 90.00, 45, 1, 'Segunda a Sexta, 9h às 18h', 15),
('Tratamento para Pele', 'Tratamento de hidratação e revitalização', 130.00, 60, 1, 'Segunda a Sexta, 9h às 18h', 16),
('Corte Infantil', 'Corte de cabelo para crianças', 40.00, 30, 1, 'Segunda a Sexta, 9h às 18h', 17),
('Maquiagem para Eventos', 'Maquiagem completa para eventos especiais', 150.00, 120, 1, 'Segunda a Sábado, 10h às 18h', 18);

-- Tabela Atendimento
INSERT INTO `salão`.`Atendimento` (`Id_Agendamento`, `Id_Servico`, `TempoGasto`, `ProdutosUtilizados`) VALUES
(1, 1, 60, 'Shampoo, Condicionador, Gel Finalizador'),
(2, 2, 90, 'Base, Esmalte Vermelho, Creme Hidratante'),
(3, 3, 90, 'Esmalte Base, Esmalte Nude, Óleo Secante'),
(4, 4, 60, 'Óleo de Massagem Relaxante, Creme Hidratante'),
(5, 5, 30, 'Lápis de Sobrancelha, Gel Fixador'),
(6, 6, 45, 'Base, Pó Compacto, Blush'),
(7, 7, 90, 'Gel Limpeza Facial, Máscara Hidratante, Creme Antienvelhecimento'),
(8, 8, 60, 'Shampoo Hidratante, Máscara Capilar, Creme Finalizador'),
(9, 9, 45, 'Shampoo, Condicionador, Creme de Pentear'),
(10, 10, 30, 'Pomada para cabelo, Gel para Modelar'),
(11, 11, 45, 'Shampoo, Condicionador, Creme de Hidratação'),
(12, 12, 60, 'Ácido Glicólico, Creme Hidratante Anti-idade'),
(13, 13, 60, 'Cola para Cílios, Pincéis Especiais'),
(14, 14, 60, 'Cera Depilatória, Óleo Pós-depilatório'),
(15, 15, 45, 'Óleo de Massagem, Creme de Reflexologia');

-- Tabela Fornecedor
INSERT INTO `salão`.`Fornecedor` (`Nome`, `Telefone`, `Email`) VALUES
('Fornecedora Bela Vista', '11 99876-5432', 'contato@belavista.com.br'),
('Supremas Beleza Ltda', '21 98765-4321', 'atendimento@supremas.com'),
('Estilo & Glamour', '31 95678-4321', 'fornecimento@estiloeglau.com.br'),
('Cosméticos São João', '41 99987-6543', 'cosmeticos@saojoao.com'),
('Beleza em Casa', '61 94456-7890', 'contato@belezaemcasa.com'),
('Bella Make', '62 99888-7722', 'sac@bellamake.com.br'),
('Acessórios e Moda', '71 99976-4532', 'acessorios@moda.com.br'),
('Distribuidora Bem Estar', '11 93567-4321', 'bemestar@distribuidora.com'),
('Hair Elegance', '21 91234-5678', 'contato@hairelegance.com'),
('Empório da Beleza', '81 97643-2567', 'empório@beleza.com'),
('Top Estilo Cosméticos', '11 94567-1234', 'topestilo@cosmeticos.com.br'),
('Produtos da Moda', '31 96785-5432', 'produtosdama@moda.com'),
('Nova Beleza Cosméticos', '41 98765-6789', 'nova@beleza.com'),
('Estética Sensações', '51 93654-8765', 'contato@esteticasensacoes.com'),
('Beleza Pura', '61 94432-5678', 'sac@belezapura.com'),
('Cristal Cosméticos', '71 93345-1234', 'cristal@cosmeticos.com'),
('Glamour Forever', '11 99876-6754', 'glamour@forever.com'),
('Lúmina Cosméticos', '81 93245-8765', 'lumina@cosmeticos.com'),
('Arte e Beleza', '21 96453-7890', 'arteebeleza@cosmeticos.com');

-- Tabela Equipamento
INSERT INTO `salão`.`Equipamento` (`Nome`, `Id_Fornecedor`) VALUES
('Secador de Cabelo Profissional', 1),
('Máquina de Corte de Cabelo', 2),
('Escova Modeladora', 3),
('Lâmpada UV para Unhas', 4),
('Cadeira de Salão Reclinável', 5),
('Autoclave para Esterilização', 6),
('Máquina de Esfoliação Facial', 7),
('Aparelho de Jato de Plasma', 8),
('Escova Rotatória', 9),
('Toalha Aquecida para Salão', 10),
('Cadeira de Manicure', 11),
('Máquina de Lavar Pincéis', 12),
('Secador de Unhas', 13),
('Lâmpada de Luz Branca', 14),
('Máquina de Tratamento Capilar', 15),
('Bancada de Cabeleireiro', 16),
('Luva Estética', 17),
('Secador de Mãos', 18),
('Carrinho de Atendimento', 19);

-- Tabela Feedback
INSERT INTO `salão`.`Feedback` (`Descricao`, `Classificacao`, `Selo_Cortesia`, `Selo_Limpeza`, `Selo_Eficiencia`, `Selo_Satisfacao`, `Selo_Orientacao`, `Id_Atendimento`) VALUES
('Excelente atendimento e ambiente agradável.', 5, 'Sim', 'Sim', 'Sim', 'Sim', 'Sim', 1),
('Muito bom, mas poderia melhorar a rapidez do atendimento.', 4, 'Sim', 'Sim', 'Sim', 'Sim', 'Não', 2),
('O atendimento foi bom, mas senti falta de mais orientação sobre os serviços.', 3, 'Sim', 'Sim', 'Não', 'Sim', 'Não', 3),
('A limpeza do local estava impecável, mas a cortesia poderia ser melhor.', 4, 'Não', 'Sim', 'Sim', 'Sim', 'Sim', 4),
('Satisfeito, a eficiência do serviço foi excelente.', 5, 'Sim', 'Sim', 'Sim', 'Sim', 'Sim', 5),
('O atendimento foi razoável, e o ambiente estava limpo.', 3, 'Sim', 'Sim', 'Sim', 'Não', 'Sim', 6),
('Não gostei muito do atendimento, demorou demais.', 2, 'Não', 'Sim', 'Não', 'Não', 'Não', 7),
('Ótimo atendimento e todos muito atenciosos, mas o tempo de espera foi longo.', 4, 'Sim', 'Sim', 'Sim', 'Sim', 'Sim', 8),
('Excelente serviço, a orientação foi clara e muito útil.', 5, 'Sim', 'Sim', 'Sim', 'Sim', 'Sim', 9),
('Muito bom, mas a limpeza poderia ser um pouco mais cuidadosa.', 4, 'Sim', 'Não', 'Sim', 'Sim', 'Sim', 10),
('Ótima experiência, todos foram muito educados e prestativos.', 5, 'Sim', 'Sim', 'Sim', 'Sim', 'Sim', 11),
('O atendimento foi bom, mas o ambiente estava um pouco desorganizado.', 4, 'Sim', 'Não', 'Sim', 'Sim', 'Não', 12),
('Adorei o resultado final, mas o preço foi um pouco alto para o serviço.', 3, 'Sim', 'Sim', 'Sim', 'Não', 'Sim', 13),
('Atendimento bom, mas a sala de espera poderia ser mais confortável.', 4, 'Sim', 'Sim', 'Sim', 'Sim', 'Não', 14),
('Muito satisfeito com a rapidez e eficiência do atendimento, só faltou mais orientação.', 4, 'Sim', 'Sim', 'Sim', 'Não', 'Sim', 15);

-- Tabela Horario
INSERT INTO `salão`.`Horario` (`DiaSemana`, `HoraInicio`, `HoraFim`) VALUES
('Segunda a Sexta', '09:00:00', '18:00:00'),
('Terça a Sábado', '10:00:00', '16:00:00'),
('Segunda a Sexta', '08:00:00', '17:00:00'),
('Segunda a Sexta', '10:00:00', '18:00:00'),
('Segunda a Sábado', '09:00:00', '18:00:00'),
('Quarta a Domingo', '08:00:00', '17:00:00'),
('Segunda a Sábado', '09:00:00', '18:00:00'),
('Terça a Domingo', '10:00:00', '19:00:00'),
('Segunda a Sexta', '09:00:00', '16:00:00'),
('Terça a Sábado', '09:00:00', '18:00:00'),
('Segunda a Sexta', '10:00:00', '18:00:00'),
('Quarta a Domingo', '09:00:00', '18:00:00'),
('Segunda a Sexta', '08:00:00', '17:00:00'),
('Segunda a Sábado', '10:00:00', '16:00:00'),
('Segunda a Quinta', '08:00:00', '17:00:00');

-- Tabela Funcionario_Horario
INSERT INTO `salão`.`Funcionario_Horario` (`Id_Horario`, `Id_Usuario`) VALUES
(1, 3),
(2, 4),
(3, 6),
(4, 7),
(5, 10),
(6, 11),
(7, 13),
(8, 14),
(9, 15),
(10, 8),
(11, 2),
(12, 12),
(13, 5),
(14, 1),
(15, 9);

-- Tabela Notificacao
INSERT INTO `salão`.`Notificacao` (`Tipo`, `Descricao`, `DataEnvio`, `Status`, `Id_Cliente`) VALUES
('Promoção', 'Desconto de 20% para novos cortes de cabelo', '2024-12-14 10:00:00', 'Enviada', 16),
('Lembrete', 'Seu agendamento de manicure está confirmado para amanhã às 14h', '2024-12-14 11:00:00', 'Enviada', 17),
('Aviso', 'Novo serviço de pedicure disponível!', '2024-12-14 12:00:00', 'Lida', 18),
('Promoção', 'Desconto de 10% em qualquer serviço de cabelo para o mês de dezembro', '2024-12-14 13:00:00', 'Enviada', 19),
('Lembrete', 'Seu agendamento de corte de cabelo está confirmado para amanhã às 9h', '2024-12-14 14:00:00', 'Enviada', 20),
('Aviso', 'Mudança no horário de atendimento da próxima semana', '2024-12-14 15:00:00', 'Lida', 21),
('Promoção', 'Ganhe um brinde na sua próxima visita!', '2024-12-14 16:00:00', 'Enviada', 22),
('Lembrete', 'Sua avaliação para manicure é amanhã', '2024-12-14 17:00:00', 'Enviada', 23),
('Aviso', 'Não se esqueça do seu agendamento de pedicure', '2024-12-14 18:00:00', 'Lida', 24),
('Promoção', 'Ganhe 15% de desconto na sua primeira visita', '2024-12-14 19:00:00', 'Enviada', 25),
('Lembrete', 'Seu agendamento de manicure está confirmado para amanhã', '2024-12-14 20:00:00', 'Enviada', 26),
('Aviso', 'Novo horário de funcionamento no final de semana', '2024-12-14 21:00:00', 'Lida', 27),
('Promoção', 'Promoção de fim de ano: 30% off em todos os serviços', '2024-12-14 22:00:00', 'Enviada', 28),
('Lembrete', 'Você tem um agendamento para manicure amanhã às 15h', '2024-12-14 23:00:00', 'Enviada', 29),
('Aviso', 'Nosso salão estará fechado no feriado', '2024-12-15 08:00:00', 'Lida', 30);

-- Tabela Pagamento
INSERT INTO `salão`.`Pagamento` (`Valor`, `Metodo_Pag`, `Data`, `Id_Cliente`) VALUES
(80.00, 'Cartão de Crédito', '2024-12-01', 16),
(45.00, 'Dinheiro', '2024-12-02', 17),
(40.00, 'Cartão de Débito', '2024-12-03', 18),
(120.00, 'Pix', '2024-12-04', 19),
(35.00, 'Cartão de Crédito', '2024-12-05', 20),
(70.00, 'Dinheiro', '2024-12-06', 21),
(130.00, 'Cartão de Débito', '2024-12-07', 22),
(50.00, 'Pix', '2024-12-08', 23),
(45.00, 'Cartão de Crédito', '2024-12-09', 24),
(30.00, 'Dinheiro', '2024-12-10', 25),
(60.00, 'Pix', '2024-12-11', 26),
(40.00, 'Cartão de Crédito', '2024-12-12', 27),
(120.00, 'Dinheiro', '2024-12-13', 28),
(150.00, 'Cartão de Débito', '2024-12-14', 29),
(90.00, 'Pix', '2024-12-15', 30);

-- Tabela Produto
INSERT INTO `salão`.`Produto` (`Nome`, `Valor`, `Qtd_Estoque`, `Id_Fornecedor`) VALUES
('Shampoo Hidratante', 25.00, 100, 1),
('Condicionador Reparador', 30.00, 80, 1),
('Creme para Pentear', 15.00, 50, 2),
('Escova Progressiva', 50.00, 40, 2),
('Máscara Capilar', 40.00, 30, 3),
('Secador de Cabelo', 150.00, 20, 4),
('Chapinha Profissional', 120.00, 15, 5),
('Cera Modeladora', 20.00, 60, 6),
('Pente de Cabelo', 10.00, 200, 7),
('Óleo de Argan', 35.00, 70, 8),
('Alisante Capilar', 45.00, 25, 9),
('Gel Hidratante', 28.00, 90, 10),
('Escova de Dentes', 5.00, 500, 11),
('Shampoo Anti-caspa', 22.00, 120, 12),
('Creme de Relaxamento', 55.00, 35, 13),
('Máscara de Hidratação Intensiva', 50.00, 60, 1),
('Spray Fixador de Cabelo', 18.00, 80, 2),
('Loção Capilar Revitalizante', 40.00, 50, 3),
('Shampoo Volumizador', 26.00, 150, 4),
('Desodorante Corporal', 15.00, 300, 5);

-- Tabela Produto_Atendimento
INSERT INTO `salão`.`Produto_Atendimento` (`Id_Atendimento`, `Id_Produto`) VALUES
(1, 2),
(1, 5),
(2, 1),
(2, 3),
(3, 4),
(3, 2),
(4, 5),
(5, 3),
(6, 1),
(6, 4),
(7, 2),
(7, 5),
(8, 1),
(9, 4),
(9, 5),
(10, 3),
(10, 2),
(11, 5),
(12, 4),
(12, 1);

-- Tabela Servico_Equipamento
INSERT INTO `salão`.`Servico_Equipamento` (`Id_Servico`, `Id_Equipamento`) VALUES
(1, 2),
(1, 4),
(2, 3),
(2, 1),
(3, 5),
(3, 2),
(4, 4),
(5, 1),
(6, 3),
(6, 5),
(7, 2),
(8, 4),
(8, 1),
(9, 5),
(9, 3),
(10, 2),
(10, 4),
(11, 5),
(12, 1),
(12, 3);

-- Tabela Servico_Produto
INSERT INTO `salão`.`Servico_Produto` (`Id_Servico`, `Id_Produto`) VALUES
(1, 2),
(1, 4),
(2, 5),
(2, 3),
(3, 1),
(3, 2),
(4, 3),
(4, 5),
(5, 1),
(5, 4),
(6, 2),
(6, 5),
(7, 3),
(7, 1),
(8, 4),
(8, 2),
(9, 5),
(9, 3),
(10, 1),
(10, 4);

-- Tabela Funcionario_Servico
INSERT INTO `salão`.`Funcionario_Servico` (`Id_Funcionario`, `Id_Servico`) VALUES
(3, 1),
(4, 2),
(6, 1),
(7, 2),
(10, 3),
(11, 1),
(13, 2),
(14, 1),
(15, 2),
(5, 1),
(1, 2),
(8, 3),
(12, 1),
(2, 2),
(9, 1),
(12, 2);


