<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Consultar Agente</title>
        <link href="css/styles.css" rel="stylesheet" />     
        <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet" />

       <!-- AJAX -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
                $("#consultar").click(function () {
                    event.preventDefault();

                    var nome_usu = $("#nomeUsuario").val();
                    var sobrenome_usu = $("#sobrenomeUsuario").val();
                    var email_usu = $("#emailUsuario").val();
                    var matricula_usu = $("#matriculaUsuario").val();
                    var senha_digitada = $("#senha").val();
                    var confirma_senha = $("#confirmaSenha").val();
                    var naturalizacao_usu = $("#naturalizacaoUsuario").val();
                    var naturalizacao_documento = $("#naturalizacaoDocumento").val();
                    var orgao_documento = $("#orgaoDocumento").val();
                    var emissao_documento = $("#emissaoDocumento").val();
                    var cpf_cnpj_usu = $("#cpfCnpjUsuario").val();
                    var numero_cpf_cnpj = $("#numeroCpfCnpjUsuario").val();
                    var sexo_digitado = $("#sexo").val();
                    var nascimento_usu = $("#nascimentoUsuario").val();
                    var tipo_usu = $("#tipoUsuario").val();
                    var nac_usu = $("#nacionalidadeUsuario").val();
                    var orgao_funcional = $("#orgaoFuncional").val();
                    var regional = $("#regional").val();
                    var tipo_telefone_um = $("#tipoTelefone1").val();
                    var telefone_um = $("#telefone1").val();
                    var tipo_telefone_dois= $("#tipoTelefone2").val();
                    var telefone_dois = $("#telefone2").val();
                    var tipo_telefone_tres = $("#tipoTelefone3").val();
                    var telefone_tres = $("#telefone3").val();
                    var tipo_telefone_quatro = $("#tipoTelefone4").val();
                    var telefone_quatro = $("#telefone4").val();
                    var cep_digitado = $("#cep").val();
                    var tipo_logradouro_digitado = $("#tipoLogradouro").val();
                    var logradouro_digitado = $("#logradouro").val();
                    var numero_endereco = $("#numeroEndereco").val();
                    var complemento_digitado = $("#complemento").val();
                    var bairro_digitado = $("#bairro").val();
                    var cidade_digitada = $("#cidade").val();
                    var estado_selecionado = $("#estado").val();
                    var estado_uf = $("#uf").val();



                    $.ajax(
                        {
                            url: "https://resilia.super10.com.br:8080/agrotech/consultarUsu?"+
                            "nomeUsuario="+nome_usu+
                            "&sobrenomeUsuario"+sobrenome_usu+
                            "&emailUsuario"+email_usu+
                            "&matriculaUsuario"+matricula_usu+
                            "&senha"+senha_digitada+
                            "&confirmaSenha"+confirma_senha+
                            "&naturalizacaoUsuario"+naturalizacao_usu+
                            "&naturalizacaoDocumento"+naturalizacao_documento+
                            "&orgaoDocumento"+orgao_documento+
                            "&emissaoDocumento"+emissao_documento+
                            "&cpfCnpjUsuario"+cpf_cnpj_usu+
                            "&numeroCpfCnpjUsuario"+numero_cpf_cnpj+
                            "&sexo"+sexo_digitado+
                            "&nascimentoUsuario"+nascimento_usu+
                            "&tipoUsuario"+tipo_usu+
                            "&nacionalidadeUsuario"+nac_usu+
                            "&orgaoFuncional"+orgao_funcional+
                            "&regional"+regional+
                            "&tipoTelefone1"+tipo_telefone_um+
                            "&telefone1"+telefone_um+
                            "&tipoTelefone2"+tipo_telefone_dois+
                            "&telefone2"+telefone_dois+
                            "&tipoTelefone3"+tipo_telefone_tres+
                            "&telefone3"+telefone_tres+
                            "&tipoTelefone4"+tipo_telefone_quatro+
                            "&telefone4"+telefone_quatro+
                            "&cep"+cep_digitado+
                            "&tipoLogradouro"+tipo_logradouro_digitado+
                            "&logradouro"+logradouro_digitado+
                            "&numeroEndereco"+numero_endereco+
                            "&complemento"+complemento_digitado+
                            "&bairro"+bairro_digitado+
                            "&cidade"+cidade_digitada+
                            "&estado"+estado_selecionado+
                            "&uf"+estado_uf,
                            success: function(retorno) {
                                if (retorno=="") {
                                    //sucesso
                                } else{
                                    //erro
                                    $("#mostrarErro").html(retorno);
                                }
                            }
                        }
                    ); 
                });
            });
        </script>

    </head>
    <body>
        
        

       <!-- Come??o do menu da esquerda -->
       <%@include file="menu.jsp" %>


            <!-- Fim do menu da esquerda -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Consultar Agente</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Consultar Agente</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                
                                <!-- COME??O DO FORM -->

                                <form action="#" method="#">
                                    <div class="col-md-3">    </div>
                                    <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Dados do Agente</h5></div>
                                    <div class="form-row">
                                        
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="nomeUsuario">Nome</label>
                                                <input class="form-control py-3" id="nomeUsuario" name="nomeUsuario" type="text" placeholder="Digite seu Nome" value=""/>
                                            </div>
                                        </div>
                                        
                                        

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="sobrenomeUsuario">Sobrenome</label>
                                                <input class="form-control py-3" id="sobrenomeUsuario" name="sobrenomeUsuario" type="text" placeholder="Digite seu Sobrenome" value=""/>
                                            </div>
                                        </div>
                                    
                                        
                                    
                                         <div class="col-md-3">    </div>

                                    </div>
                                
                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="small mb-1" for="emailUsuario">Email</label>
                                                <input class="form-control py-3" id="emailUsuario" name="emailUsuario" type="email" placeholder="Digite seu Email" value=""/>
                                            </div>   
                                        </div>

                                        <div class="col-md-2">    
                                            <div class="form-group">
                                                <label class="small mb-1" for="matriculaUsuario">Matr??cula</label>
                                                <input class="form-control py-3" id="matriculaUsuario" name="matriculaUsuario" type="text" placeholder="Apenas N??meros" value=""/>
                                            </div>                                 
                                         </div>
                                         <div class="col-md-3">    </div>
                                    </div>


                                       <div class="form-row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="senha">Senha</label>
                                                <input class="form-control py-3" id="senha" name="senha" type="password" placeholder="Digite sua Senha" value=""/>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="confirmaSenha">Confirme sua Senha</label>
                                                <input class="form-control py-3" id="confirmaSenha" name="confirmaSenha" type="password" placeholder="Repita sua Senha" value=""/>
                                            </div>
                                        </div>
                                                
                                        <span id='message'></span>

                                    </div>
                                        

                                    <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Dados Pessoais</h5></div>

                                    <div class="form-row">  
                                        <div class="col-md-3"></div> 
                                        <div class="col-md-2" >
                                            <div class="form-group">                                            
                                                <label class="small mb-1" for="naturalizacaoUsuario" >Identidade</label>
                                                <select id="naturalizacaoUsuario" name="naturalizacaoUsuario" class="form-control">
                                                    <option disabled selected hidden></option>
                                                    <option>RG</option>
                                                    <option>RNE</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="naturalizacaoDocumento">&nbsp</label>
                                                <input class="form-control py-3" id="naturalizacaoDocumento" name="naturalizacaoDocumento" type="text" placeholder="N?? do Documento" value=""/>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="orgaoDocumento">??rg??o Expedidor</label>
                                                <input class="form-control py-3" id="orgaoDocumento" name="orgaoDocumento" type="text" value=""/>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div> 
                                    </div>


                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="emissaoDocumento">Data de Emiss??o</label>
                                                <input class="form-control py-3" id="emissaoDocumento" name="emissaoDocumento" type="date" placeholder="dd/mm/aaaa" value=""/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group" Style="height: 38px;">                                            
                                                <label class="small mb-1" for="cpfCnpjUsuario" >CPF/CNPJ</label>
                                                <select id="cpfCnpjUsuario" name="cpfCnpjUsuario" class="form-control" >
                                                    <option disabled selected hidden></option>
                                                    <option>CPF</option>
                                                    <option>CNPJ</option>
                                                </select>
                                            </div>
                                        </div>
                                        

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="numeroCpfCnpjUsuario">N??mero do Documento</label>
                                                <input class="form-control py-3 "  id="numeroCpfCnpjUsuario" name="numeroCpfCnpjUsuario" type="text"/>
                                            </div>
                                        </div>
                                    </div>
                                        
                                    <div class="form-row"> 
                                        <div class="col-md-3">    </div>   
                                        <div class="col-md-2">
                                            <div class="form-group" Style="height: 38px;">                                            
                                                <label class="small mb-1" for="inputState" >Sexo</label>
                                                <select id="sexo" name="sexo" class="form-control">
                                                    <option disabled selected hidden></option>
                                                    <option >Masculino</option>
                                                    <option>Feminino</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="date">Data de Nascimento</label>
                                                <input class="form-control py-3" id="nascimentoUsuario" name="nascimentoUsuario" type="date" placeholder="dd/mm/aaaa" />
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group" Style="height: 38px;">
                                                
                                                <label class="small mb-1" for="tipoUsuario" >Tipo de Usu??rio</label>
                                                <select id="tipoUsuario" name="tipoUsuario" class="form-control">
                                                    <option disabled selected hidden></option>
                                                    <option>Administrador</option>
                                                    <option>Operador</option>
                                                    <option>Agente</option>
                                                    <option>Propriet??rio</option>
                                                    <option>Produtor</option>
                                                </select>                                                    
                                            </div>
                                        </div> 
                                    </div>

                                    
                                    <div class="form-row">    
                                        <div class="col-md-3"></div>
                                        <div class="col-md-2">
                                            <div class="form-group">                                            
                                                <label class="small mb-1" for="nacionalidadeUsuario" >Nacionalidade</label>
                                                <select id="nacionalidadeUsuario" name="nacionalidadeUsuario" class="form-control">
                                                    <option disabled selected hidden></option>
                                                    <option>Afeganist??o</option>
                                                    <option>Alb??nia</option>
                                                    <option>Arg??lia</option>
                                                    <option>Andorra</option>
                                                    <option>Angola</option>
                                                    <option>Ant??gua e Barbuda</option>
                                                    <option>Argentina</option>
                                                    <option>Arm??nia</option>
                                                    <option>Aruba</option>
                                                    <option>Austr??lia</option>
                                                    <option>??ustria</option>
                                                    <option>Azerbaij??o</option>
                                                    <option>Bahamas</option>
                                                    <option>Bangladesh</option>
                                                    <option>Barbados</option>
                                                    <option> Burundi</option>
                                                    <option> B??lgica</option>
                                                    <option> Benim</option>
                                                    <option> Bermudas</option>
                                                    <option> But??o</option>
                                                    <option> B??snia e Herzegovina</option>
                                                    <option> Belize</option>
                                                    <option> Bielorussia</option>
                                                    <option> Bol??via</option>
                                                    <option> Botswana</option>
                                                    <option> Brasil</option>
                                                    <option>Bahrein</option>
                                                    <option> Brunei</option>
                                                    <option> Bulg??ria</option>
                                                    <option> Burkina Faso</option>
                                                    <option> Rep??blica Centro-Africana</option>
                                                    <option>Camboja</option>
                                                    <option> Canad??</option>
                                                    <option> Ilhas Cayman</option>
                                                    <option> Rep??blica do Congo</option>
                                                    <option>Chade</option>
                                                    <option> Chile</option>
                                                    <option>China</option>
                                                    <option>Costa do Marfim</option>
                                                    <option>Camar??es</option>
                                                    <option>Rep??blica Democr??tica do Congo</option>
                                                    <option>Ilhas Cook</option>
                                                    <option>Col??mbia</option>
                                                    <option>Comores</option>
                                                    <option>Cabo Verde </option>
                                                    <option>Costa Rica</option>
                                                    <option>Cro??cia</option>
                                                    <option>Cuba</option>
                                                    <option>Chipre</option>
                                                    <option>Ch??quia</option>
                                                    <option>Dinamarca</option>
                                                    <option>Djibouti</option>
                                                    <option>Dominica</option>
                                                    <option>Rep??blica Dominicana</option>
                                                    <option>Equador</option>
                                                    <option>Egito</option>
                                                    <option>Eritreia</option>
                                                    <option>El Salvador</option>
                                                    <option>Espanha</option>
                                                    <option>Est??nia</option>
                                                    <option>Eti??pia</option>
                                                    <option>Fiji</option>
                                                    <option>Finl??ndia</option>
                                                    <option>Fran??a</option>
                                                    <option>Estados Federados da Micron??sia</option>
                                                    <option>Gab??o</option>
                                                    <option>G??mbia</option>
                                                    <option>Reino Unido</option>
                                                    <option>Inglaterra</option>
                                                    <option>Irlanda do Norte</option>
                                                    <option>Esc??cia</option>
                                                    <option>Pa??ses de Gales</option>
                                                    <option>Guin??-Bissau</option>
                                                    <option>Ge??rgia</option>
                                                    <option>Guin?? Equatorial</option>
                                                    <option>Alemanha</option>
                                                    <option>Gana</option>
                                                    <option>Gr??cia</option>
                                                    <option>Granada</option>
                                                    <option>Guatemala</option>
                                                    <option>Guin??</option>
                                                    <option>Guam</option>
                                                    <option>Guiana</option>
                                                    <option>Haiti</option>
                                                    <option>Hong Kong</option>
                                                    <option>Honduras</option>
                                                    <option>Hungria</option>
                                                    <option>Indon??sia</option>
                                                    <option>??ndia</option>
                                                    <option>Ir??o</option>
                                                    <option>Irlanda</option>
                                                    <option>Iraque</option>
                                                    <option>Isl??ndia</option>
                                                    <option>Israel</option>
                                                    <option>Ilhas Virgens Americanas</option>
                                                    <option>It??lia</option>
                                                    <option>Ilhas Virgens Brit??nicas</option>
                                                    <option>Jamaica</option>
                                                    <option>Jord??nia</option>
                                                    <option>Jap??o</option>
                                                    <option>Cazaquist??o</option>
                                                    <option>Qu??nia</option>
                                                    <option>Quirguist??o</option>
                                                    <option>Kiribati</option>
                                                    <option>Coreia do Sul</option>
                                                    <option>Kosovo</option>
                                                    <option>Ar??bia Saudita</option>
                                                    <option>Kuwait</option>
                                                    <option>Laos</option>
                                                    <option>Nova Zel??ndia</option>
                                                    <option>Om??</option>
                                                    <option>Paquist??o</option>
                                                    <option>Panam??</option>
                                                    <option>Paraguai</option>
                                                    <option>Peru</option>
                                                    <option>Filipinas</option>
                                                    <option>Palestina</option>
                                                    <option>Palau</option>
                                                    <option>Papua-Nova Guin??</option>
                                                    <option>Pol??nia</option>
                                                    <option>Portugal</option>
                                                    <option>Coreia do Norte</option>
                                                    <option>Porto Rico</option>
                                                    <option>Catar</option>
                                                    <option>Rom??nia</option>
                                                    <option>??frica do Sul</option>
                                                    <option>Sud??o</option>
                                                    <option>Su????a</option>
                                                    <option>Suriname</option>
                                                    <option>Eslov??quia</option>
                                                    <option>Su??cia</option>
                                                    <option>Essuat??ni</option>
                                                    <option>S??ria</option>
                                                    <option>Tanz??nia</option>
                                                    <option>Tonga</option>
                                                    <option>Tail??ndia</option>
                                                    <option>Tajiquist??o</option>
                                                    <option>Uruguai</option>
                                                    <option>Estados Unidos</option>
                                                    <option>Venezuela</option>
                                                    </select>
                                            </div>
                                        </div> 
                                        
                                        <div class="col-md-2">
                                            <div class="form-group" >                                            
                                                <label class="small mb-1" for="orgaoFuncional">??rg??o Funcional</label>
                                                <select id="orgaoFuncional" name="orgaoFuncional" class="form-control">
                                                    <option disabled selected hidden></option>
                                                    <option>INCRA</option>
                                                    <option>MAPA</option>
                                                    <option>IBAMA</option>
                                                    <option>IBGE</option>
                                                    <option>RECEITA FEDERAL</option>
                                                    <option>MINIST??RIO DA AGRICULTURA</option>
                                                    </select>
                                            </div>
                                        </div> 
                                       
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="regional">Regional</label>
                                                <input class="form-control py-3" id="regional" name="regional" type="text" placeholder="Regional"/>
                                            </div>
                                        </div>

                                    </div>


                                    <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Contatos</h5></div>
                                    <div class="form-row">

                                        <div class="col-md-3">    </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-2 " for="tipoTelefone1">Tipo de Telefone</label>
                                                <select id="tipoTelefone1" name="tipoTelefone1" class="form-control" onchange="telefoneMask1()">
                                                    <option disabled selected hidden> </option>
                                                    <option value="celular">Celular</option>
                                                    <option value="residencial">Residencial</option>
                                                   

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1.1" for="telefone1">Telefone</label>
                                                <input class="telefone1 form-control py-3" id="telefone1" name="telefone1" type="text" placeholder="Telefone"/>
                                            </div>
                                        </div>


                                    </div>
                                       
                                    <div class="form-row">

                                        <div class="col-md-3">    </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-2 " for="tipoTelefone2">Tipo de Telefone</label>
                                                <select id="tipoTelefone2" name="tipoTelefone2" class="form-control" onchange="telefoneMask2()">
                                                    <option disabled selected hidden> </option>
                                                    <option value="celular">Celular</option>
                                                    <option value="residencial">Residencial</option>
                                                   

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1.1" for="telefone2">Telefone</label>
                                                <input class="telefone2 form-control py-3" id="telefone2" name="telefone2" type="text" placeholder="Telefone"/>
                                            </div>
                                        </div>


                                    </div>
                                    
                                    <div class="form-row">

                                        <div class="col-md-3">    </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-2 " for="tipoTelefone3">Tipo de Telefone</label>
                                                <select id="tipoTelefone3" name="tipoTelefone3" class="form-control" onchange="telefoneMask3()">
                                                    <option disabled selected hidden> </option>
                                                    <option value="celular">Celular</option>
                                                    <option value="residencial">Residencial</option>
                                                   

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1.1" for="telefone3">Telefone</label>
                                                <input class="telefone3 form-control py-3" id="telefone3" name="telefone3" type="text" placeholder="Telefone"/>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="form-row">

                                        <div class="col-md-3">    </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-2 " for="tipoTelefone4">Tipo de Telefone</label>
                                                <select id="tipoTelefone4" name="tipoTelefone4" class="form-control" onchange="telefoneMask4()">
                                                    <option disabled selected hidden> </option>
                                                    <option value="celular">Celular</option>
                                                    <option value="residencial">Residencial</option>
                                                   

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1.1" for="telefone4">Telefone</label>
                                                <input class="telefone4 form-control py-3" id="telefone4" name="telefone4" type="text" placeholder="Telefone"/>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="form-row">
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="cep">CEP<i class="fas fa-search" style="margin-left: 10px;"  onclick="pesquisacep(cep.value);"></i></label>
                                                <input class="form-control py-3" id="cep" name="cep" type="text" onblur="pesquisacep(this.value);"/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="tipoLogradouro">Tipo de Logradouro</label>
                                                <input class="form-control py-3" id="tipoLogradouro" name="tipoLogradouro" type="text" placeholder="Tipo de Logradouro"/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="logradouro">Logradouro</label>
                                                <input class="form-control py-3" id="logradouro" name="logradouro" type="text" placeholder="Nome do Logradouro"/>
                                            </div>
                                        </div>
                                                    
                                    </div>

                                    <div class="form-row">
                                        

                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="numeroEndereco">N??mero</label>
                                                <input class="form-control py-3" id="numeroEndereco" name="numeroEndereco" type="text" placeholder="N?? do Local"/>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="complemento">Complemento</label>
                                                <input class="form-control py-3" id="complemento" name="complemento" type="text" placeholder="Complemento" value=""/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="bairro">Bairro</label>
                                                <input class="form-control py-3" id="bairro" name="bairro" type="text" placeholder="Bairro" value=""/>
                                            </div>
                                        </div>

                                         
                                    </div>
                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="cidade">Cidade</label>
                                                <input class="form-control py-3" id="cidade" name="cidade" type="text" placeholder="Cidade" value=""/>
                                            </div>
                                        </div>
                                    

                                        <div class="col-md-2">
                                            <label class="small mb-1" for="estado">Estado</label>
                                            <select id="estado" name="estado" class="form-control">
                                                <option disabled selected hidden></option>
                                                <option >Acre</option>
                                                <option>Alagoas</option>
                                                <option>Amap??</option>
                                                <option>Amazonas</option>
                                                <option>Bahia</option>
                                                <option>Cear??</option>
                                                <option>Esp??rito Santo</option>
                                                <option>Goi??s</option>
                                                <option>Maranh??o</option>
                                                <option>Mato Grosso</option>
                                                <option>Mato Grosso do Sul</option>
                                                <option>Minas Gerais</option>
                                                <option>Par??</option>
                                                <option>Para??ba</option>
                                                <option>Paran??</option>
                                                <option>Pernambuco</option>
                                                <option>Piau??</option>
                                                <option>Rio de Janeiro</option>
                                                <option>Rio Grande do Norte</option>
                                                <option>Rio Grande do Sul</option>
                                                <option>Rond??nia</option>
                                                <option>Roraima</option>
                                                <option>Santa Catarina</option>
                                                <option>S??o Paulo</option>
                                                <option>Sergipe</option>
                                                <option>Tocantins</option>

                                            </select>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="uf">Sigla</label>
                                                <select id="uf" name="uf" class="form-control">
                                                    <option disabled selected hidden></option>
                                                    <option >AC</option>
                                                    <option >AL</option>
                                                    <option >AP</option>
                                                    <option>AM</option>
                                                    <option>BA</option>
                                                    <option>CE</option>
                                                    <option>DF</option>
                                                    <option>ES</option>
                                                    <option>GO</option>
                                                    <option>MA</option>
                                                    <option>MT</option>
                                                    <option>MS</option>
                                                    <option>MG</option>
                                                    <option>PA</option>
                                                    <option>PB</option>
                                                    <option>PR</option>
                                                    <option>PE</option>
                                                    <option>PI</option>
                                                    <option>RJ</option>
                                                    <option>RN</option>
                                                    <option>RS</option>
                                                    <option>RO</option>
                                                    <option>RR</option>
                                                    <option>SC</option>
                                                    <option>SP</option>
                                                    <option>SE</option>
                                                    <option>TO</option>

                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                                                      
                                        <div class="col-md-1," style="display : flex; justify-content : center; align-items : center; flex-direction : initial;">
                                            
                                            <div class="form-group pb-4 mt-4 mb-0"><button class="btn btn-success btn-block" id="consultar">Consultar</button></div>
                                            
                                    
                                    </div>
                                
                                
                                </form>

                                <div id="mostrarErro"></div>
                               
                            </div>
                            </main>
                            <footer class="py-4 bg-success mt-auto ">
                                <div class="container-fluid ">
                                    <div class="d-flex align-items-right justify-content-between small">
                                        <div class="text-light">2020 Agrotech Sistema de Unifica????o de Dados do Agroneg??cio.</div>
                                    </div>
                                </div>

                            </footer>
                    </div>
                </div>


                


                <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
                <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
                <script src="js/scripts.js"></script>
                <script src="js/resilia.js"></script>
                <script src="js/jquery.mask.min.js"></script>
                

                <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
                <script src="assets/demo/datatables-demo.js"></script>
                <script src="js/jquery.mask.min.js"></script>
                <!--<script type="text/javascript" src="js/buscadorcep.js"></script>-->


                
            </body>
        </html>