# Gestran
Teste realizado para a Gestran e entregue no dia 13/03/2024

Tecnologias utilizadas:
- Delphi 11.1
- VCL
- FireDac
- FortesReport Community Edition 4.0.1.2 (https://github.com/fortesinformatica/fortesreport-ce)
- SQL Server 2022

Inicialmente, é necessário criar o banco de dados:
Pode ser criado através do SQL Server Management, ou abrir um prompt do sql e rodar o script que está presente no repisitório denominado script_cria_banco.
Em seguida importar o arquivo csv denominado vendas, enviado a mim junto com o descritivo do teste. Este arquivo também encontra-se neste repositório caso necessite.
Utilizei a ferramenta de importação de arquivos presente no SQL Server Management (Botão direito no banco> Tarefas > Importar arquivo simples).
Com a importação do arquivo, a tabela vendas será criada, então já é possivel rodar o script de criação das views e funções (script_create), também presente neste repositório.
Isso deve terminar a configuração do banco, e já deve ser possível rodar o executável ou compilar/rodar no Delphi.

Devido ao tipo do teste, alguns recursos e conhecimentos não foram aplicados, visto a baixa complexidade e necessidade. 
- POO e Generics não foram utilizados devido a ter uma unica entidade (vendas)
- Procurei deixar o projeto menos acoplado possível, porém não haviam muitos objetos com responsabilidades especificas e críticas.
- Em se falando de design patterns, gosto muito de aplicar o singleton, entretanto, nesse projeto não foi possível
- Busquei aplicar maior esforço no banco de dados, visto que ao trabalhar com objetos como vendedor e valores, contidos em apenas uma tabela, vi a necessidade de criar views e functions
- Poderia ter criado store procedures e triggers, porém não houve tempo hábil.

Acredito que seja isso, caso tenham alguma dúvida, estou à disposição

Um abraço

Kaue
  


