***Settings****
Documentation    Consulta Usuarios live Robot
Library          RequestsLibrary

**Variables**
${LISTA_USUARIO}        https://serverest.dev/usuarios
${CADASTRO_USUARIO}     https://serverest.dev/usuarios


***Test Cases***

Lista de usuarios cadastrados    
    
    ${headers}    Create Dictionary
    ...           accept=application/json
    ...           Content-Type=application/json

    ${response}         GET                  ${LISTA_USUARIO}
   
    ...            headers=${headers}

    Status Should Be    200