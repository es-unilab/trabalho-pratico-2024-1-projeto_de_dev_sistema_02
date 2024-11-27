**Documentação do Sistema de Geração de Provas**
##################################################
Resumo
Este sistema foi projetado como uma solução prática para professores, permitindo gerenciar questões e gerar provas de forma eficiente.
Ele aplica princípios fundamentais da engenharia de software, desde o levantamento de requisitos até a entrega de um produto funcional.
A documentação busca contextualizar o desenvolvimento, incorporando conceitos teóricos, boas práticas e metodologias descritas no livro referência.
Cada seção é estruturada para esclarecer decisões técnicas e justificar a abordagem adotada.

1. Introdução
         O Sistema de Geração de Provas é uma aplicação web projetada para automatizar e simplificar o processo de criação de provas por professores. 
A plataforma oferece um ambiente integrado para o cadastro, organização, busca de questões e geração de provas personalizadas em formato PDF.
Além disso, o sistema implementa mecanismos de autenticação e gerenciamento de usuários para garantir segurança e controle.
       Este projeto foi desenvolvido com base em tecnologias modernas e práticas de desenvolvimento de software que priorizam a escalabilidade, 
a modularidade e a experiência do usuário.
2. Objetivos
2.1 Objetivo Geral
Facilitar o processo de elaboração e organização de provas, otimizando o tempo e os recursos de professores no planejamento de avaliações.
2.2 Objetivos Específicos
    • Permitir o cadastro e gerenciamento de questões por assunto, tipo e dificuldade.
    • Oferecer ferramentas para busca rápida e eficiente de questões no banco de dados.
    • Proporcionar uma experiência intuitiva para a criação e personalização de provas.
    • Garantir a segurança do sistema por meio de autenticação de usuários.
    • Implementar uma interface para administração de usuários cadastrados.
3. Tecnologias Utilizadas
3.1 Ferramentas de Desenvolvimento
    • Frontend:
        ◦ HTML5, CSS3, JavaScript.
        ◦ Design responsivo para compatibilidade com dispositivos móveis.
    • Backend:
        ◦ Node.js com Express.js (servidor web e APIs RESTful).
        ◦ Bibliotecas adicionais:
            ▪ pdfMake: geração de documentos PDF.
            ▪ bcrypt: hash de senhas para segurança.
            ▪ express-session: gerenciamento de sessões para autenticação.
    • Armazenamento Inicial:
        ◦ Arquivos JSON para armazenamento de dados (questões e usuários).
        ◦ Planejamento para futura integração com banco de dados relacional.
3.2 Ambiente de Desenvolvimento
    • Sistema Operacional: Zorin OS 16.3 (baseado em Ubuntu 20.04).
    • Editor de Código: VS Code.
    • Prototipação de Interfaces: Figma.
4. Estrutura do Sistema
4.1 Estrutura de Diretórios
A arquitetura modular garante clareza e organização, facilitando futuras expansões:

/sistema_de_questoes
│
├── /views                # Arquivos HTML das páginas do sistema
│   ├── index.html         # Página principal do sistema
│   ├── login.html         # Página de login
│   ├── cadastro_questoes.html # Página para cadastro de questões
│   ├── busca_questoes.html    # Página para busca e seleção de questões
│   ├── geracao_provas.html    # Página de geração de provas
│   └── admin.html         # Interface de gerenciamento de usuários
│
├── /data                 # Armazenamento local de dados
│   ├── questoes.json      # Banco de questões
│   ├── usuarios.json      # Banco de usuários
│
├── /public               # Recursos públicos do sistema
│   ├── css/               # Arquivos de estilo (CSS)
│   ├── js/                # Scripts de frontend
│   └── imagens/           # Imagens utilizadas
│
├── /routes               # Rotas do backend
│   ├── questoes.js        # Gerenciamento de questões
│   ├── usuarios.js        # Autenticação e gerenciamento de usuários
│   ├── pdf.js             # Geração de PDFs
│
├── server.js             # Configuração principal do servidor
├── package.json          # Dependências e scripts do projeto
└── README.md             # Documentação principal

5. Funcionalidades do Sistema
5.1 Cadastro de Questões
    • Descrição: Professores podem cadastrar questões, fornecendo detalhes como:
        ◦ Assunto (Matemática, Português, Física, etc.).
        ◦ Nível de dificuldade (Fácil, Médio, Difícil).
        ◦ Tipo (Múltipla escolha ou discursiva).
        ◦ Enunciado e alternativas (se aplicável).
    • Armazenamento: Questões são salvas no arquivo questoes.json.
5.2 Busca e Organização de Questões
    • Filtros Disponíveis:
        ◦ Por assunto, nível de dificuldade e tipo.
        ◦ Por palavras-chave no enunciado.
    • Função: Professores podem visualizar, selecionar ou editar questões diretamente.
5.3 Geração de Provas
    • Etapas do Processo:
        1. Professor seleciona questões na página de busca.
        2. Define título, instruções e cabeçalho da prova.
        3. O sistema gera o PDF usando pdfMake.
    • Opções do Cabeçalho:
        1. Nome do aluno, turma, data e outras informações relevantes.
5.4 Autenticação e Gerenciamento de Usuários
    • Cadastro e Login:
        ◦ Usuários devem se cadastrar para acessar o sistema.
        ◦ Autenticação por email e senha.
    • Controle de Acesso:
        ◦ Apenas usuários autenticados podem acessar as páginas protegidas.
    • Administração:
        ◦ Visualização e edição de dados de professores cadastrados.
6. Requisitos
6.1 Funcionais
    1. Permitir o cadastro, edição e exclusão de questões.
    2. Possibilitar a busca por filtros e seleção de questões para provas.
    3. Gerar provas personalizadas em formato PDF.
    4. Implementar autenticação para restringir o acesso às funcionalidades do sistema.
    5. Gerenciar dados de professores por meio de uma interface dedicada.
6.2 Não Funcionais
    1. Interface responsiva e amigável.
    2. Armazenamento inicial baseado em JSON para simplicidade.
    3. Estrutura escalável para futura integração com banco de dados.
    4. Alta performance na geração de provas e gerenciamento de dados.
7. Fluxos de Usuário
7.1 Fluxo de Cadastro de Questões
    1. O professor faz login no sistema.
    2. Navega até a página de cadastro.
    3. Preenche os campos obrigatórios e clica em "Cadastrar".
    4. A questão é salva no banco de dados e exibida na interface de busca.
7.2 Fluxo de Geração de Provas
    1. O professor busca questões no banco.
    2. Seleciona as desejadas e as adiciona à prova.
    3. Define metadados da prova (título, instruções, cabeçalho).
    4. Clica em "Gerar Prova" e baixa o arquivo PDF.
7.3 Fluxo de Login
    1. Usuário acessa a página de login.
    2. Insere as credenciais e clica em "Entrar".
    3. O sistema valida as informações:
        ◦ Sucesso: Redireciona para a página principal.
        ◦ Erro: Exibe mensagem solicitando nova tentativa.
8. Processos
O desenvolvimento segue o modelo iterativo e incremental, que combina planejamento, implementação e 
avaliação constantes para garantir flexibilidade e alinhamento às necessidades do usuário.
8.1 Etapas do Ciclo
    1. Levantamento de Requisitos: Identificação das funcionalidades desejadas.
    2. Prototipação: Criação de interfaces iniciais para validação.
    3. Desenvolvimento: Implementação funcionalidade por funcionalidade.
    4. Testes: Identificação de falhas e validação da usabilidade.
    5. Entrega: Versões incrementais disponibilizadas para uso e revisão.
9. Requisitos
9.1. Requisitos Funcionais
    1. Permitir o cadastro de questões com atributos como assunto, dificuldade e tipo.
    2. Disponibilizar filtros para buscar questões por assunto, tipo e nível de dificuldade.
    3. Gerar provas em formato PDF, incluindo um cabeçalho customizável.
    4. Implementar autenticação e autorização de usuários.
    5. Oferecer uma interface de administração para gerenciar usuários cadastrados.
9.2. Requisitos Não Funcionais
    1. Usabilidade: Interface simples e intuitiva.
    2. Performance: Geração rápida de provas em PDF.
    3. Segurança: Hashing de senhas para proteger dados sensíveis.
    4. Escalabilidade: Estrutura pronta para migração de JSON para banco de dados relacional.
10. Arquitetura
A arquitetura do sistema utiliza o padrão MVC (Model-View-Controller) para organizar responsabilidades e facilitar a manutenção:
    • Model (Modelo): Representa os dados (questões e usuários).
    • View (Visão): Interface do usuário (HTML, CSS, JavaScript).
    • Controller (Controlador): Gerencia a lógica de negócio e a comunicação entre as camadas.
   Diagrama de Arquitetura
scss
Frontend (HTML/JS) <-> Backend (Node.js, Express) <-> Armazenamento (JSON)
Essa arquitetura garante modularidade, permitindo futuras expansões, como integração com bancos de dados relacionais ou APIs externas.
11. Modelos de Dados
11.1. Questões

{
  "id": "1",
  "assunto": "Matemática",
  "tipo": "Multipla Escolha",
  "dificuldade": "Fácil",
  "enunciado": "Qual é a raiz quadrada de 16?",
  "alternativas": ["2", "4", "8", "16"]
}
12.2. Usuários
json
{
  "id": "101",
  "nome": "João Silva",
  "email": "joao@exemplo.com",
  "senha": "hash_bcrypt"
}
13. Princípios de Projeto
O sistema segue os princípios SOLID:
    • Responsabilidade Única (S): Cada módulo cumpre apenas uma função.
    • Aberto/Fechado (O): Estrutura aberta para extensões, como novos filtros de busca.
    • Substituição de Liskov (L): Componentes são reutilizáveis sem modificações.
    • Segregação de Interface (I): Interfaces separadas para administração e geração de provas.
    • Inversão de Dependência (D): Uso de bibliotecas externas, como pdfMake, para funcionalidades específicas.
14. Padrões de Projeto
14.1. Padrão MVC
Estrutura base do sistema para separar dados, lógica de negócio e interface.
14.2. Singleton
Utilizado para gerenciar sessões de usuários logados.
14.3. Factory
Aplicado na geração de PDFs personalizados.
15. Funcionalidades
15.1. Cadastro de Questões
Professores podem adicionar questões com atributos como assunto, tipo e nível de dificuldade.
15.2. Busca de Questões
Filtro para localizar questões específicas, exibindo os resultados em uma interface dinâmica.
15.3. Geração de Provas
Provas podem ser criadas com base em questões selecionadas, exportadas como PDF e personalizadas com cabeçalhos.
15.4. Administração
Interface para gerenciar usuários, incluindo a visualização de dados cadastrados.
16. Testes
16.1. Testes Realizados
    • Unitários: Teste de funções isoladas (e.g., validação de login).
    • Integração: Verificação de rotas e interações entre camadas.
    • Manuais: Testes exploratórios na interface.
17. Refactoring
Melhorias contínuas no código foram implementadas:
    1. Modularização de funções repetidas.
    2. Simplificação do fluxo de geração de provas.
    3. Reutilização de componentes visuais no frontend.
        18. Futuras Melhorias
    • Integração com Bancos de Dados: Migração de JSON para MySQL ou MongoDB.
    • Correção Automática: Sistema de avaliação para questões objetivas.
    • Dashboard: Relatórios e estatísticas para professores.
    • Controle de Versão: Histórico de alterações em questões.
      19. Conclusão
          O Sistema de Geração de Provas fornece uma solução prática e eficiente para professores organizarem e gerarem avaliações personalizadas. 
Com um design modular e escalável, o sistema é uma base sólida para futuras expansões e melhorias.
