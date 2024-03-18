***Settings****
Documentation    Consulta Usuarios live Robot
Library          RequestsLibrary

**Variables**
${LISTA_USUARIO}        https://serverest.dev/usuarios
${CADASTRO_USUARIO}     https://serverest.dev/usuarios


***Test Cases***
Cadastro Usuario
    ${payload}      Create Dictionary
    ...    nome=Guilherme Nicolas Cláudio Pires
    ...    email=noah-gomes92@br.atlasdfscopsdfsdfco.com
    ...    password=teste
    ...    administrador=true
    
    
    ${headers}      Create Dictionary
    ...             accept=application/json
    ...             Content-Type=application/json

    ${response}     POST    ${CADASTRO_USUARIO}
    ...             json=${payload}
    ...             headers=${headers}
    
    Status Should Be        201

Lista de usuarios cadastrados    
    
    ${headers}    Create Dictionary
    ...           accept=application/json
    ...           Content-Type=application/json

    ${response}         GET                  ${LISTA_USUARIO}
   
    ...            headers=${headers}

    Status Should Be    200