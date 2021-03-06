<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Telefone"%>
<%@page import="model.Agente"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        String address = "login.jsp";
        response.sendRedirect(address);
    }
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Alterar Agente</title>
        <link rel="icon" href="/agrotech/favicon.ico">
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet" />


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script>
            $(document).ready(function() {
            $("#salvarAlteracoes").click(function() {
            event.preventDefault();
                    var id_usuario = $("#idUsuario").val();
                    var nome_usuario = $("#nomeUsuario").val();
                    var sobre_nome_usuario = $("#sobrenomeUsuario").val();
                    var email_usuario = $("#emailUsuario").val();
                    var matricula_usuario = $("#matriculaUsuario").val();
                    var situacao_usuario = $("#situacaoUsuario").val();
                    var senha = $("#senha").val();
                    var confirma_senha = $("#confirmaSenha").val();
                    var tipo_usuario = $("#tipoUsuario").val();
                    var naturalizacao_documento = $("#naturalizacaoDocumento").val();
                    var orgao_documento = $("#orgaoDocumento").val();
                    var emissao_documento = $("#emissaoDocumento").val();
                    var numero_cpf_cnpj_usuario = $("#numeroCpfCnpjUsuario").val();
                    var sexo = $("#sexo").val();
                    var nascimento_usuario = $("#nascimentoUsuario").val();
                    var nacionalidade_usuario = $("#nacionalidadeUsuario").val();
                    var orgao_funcional = $("#orgaoFuncional").val();
                    var regional = $("#regional").val();
                    var tipo_telefone1 = $("#tipoTelefone1").val();
                    var telefone1 = $("#telefone1").val();
                    var tipo_telefone2 = $("#tipoTelefone2").val();
                    var telefone2 = $("#telefone2").val();
                    var tipo_telefone3 = $("#tipoTelefone3").val();
                    var telefone3 = $("#telefone3").val();
                    var tipo_telefone4 = $("#tipoTelefone4").val();
                    var telefone4 = $("#telefone4").val();
                    var cep = $("#cep").val();
                    var tipo_logradouro = $("#tipoLogradouro").val();
                    var logradouro = $("#logradouro").val();
                    var numero_endereco = $("#numeroEndereco").val();
                    var complemento = $("#complemento").val();
                    var bairro = $("#bairro").val();
                    var cidade = $("#cidade").val();
                    var estado = $("#estado").val();
                    var id_endereco = $("#idEndereco").val();
                    var id_telefone1 = $("#idTelefone1").val();
                    var id_telefone2 = $("#idTelefone2").val();
                    var id_telefone3 = $("#idTelefone3").val();
                    var id_telefone4 = $("#idTelefone4").val();
                    var id_tipo_telefone1 = $("#idTipoTelefone1").val();
                    var id_tipo_telefone2 = $("#idTipoTelefone2").val();
                    var id_tipo_telefone3 = $("#idTipoTelefone3").val();
                    var id_tipo_telefone4 = $("#idTipoTelefone4").val();
                    $.ajax(
                    {
                    url: "alterarAgenteResultado?" +
                            "idUsuario=" + id_usuario +
                            "&nomeUsuario=" + nome_usuario +
                            "&sobrenomeUsuario=" + sobre_nome_usuario +
                            "&emailUsuario=" + email_usuario +
                            "&matriculaUsuario=" + matricula_usuario +
                            "&situacaoUsuario=" + situacao_usuario +
                            "&senha=" + senha +
                            "&confirmaSenha=" + confirma_senha +
                            "&tipoUsuario=" + tipo_usuario +
                            "&naturalizacaoDocumento=" + naturalizacao_documento +
                            "&orgaoDocumento=" + orgao_documento +
                            "&emissaoDocumento=" + emissao_documento +
                            "&numeroCpfCnpjUsuario=" + numero_cpf_cnpj_usuario +
                            "&sexo=" + sexo +
                            "&nascimentoUsuario=" + nascimento_usuario +
                            "&nacionalidadeUsuario=" + nacionalidade_usuario +
                            "&orgaoFuncional=" + orgao_funcional +
                            "&regional=" + regional +
                            "&tipoTelefone1=" + tipo_telefone1 +
                            "&telefone1=" + telefone1 +
                            "&tipoTelefone2=" + tipo_telefone2 +
                            "&telefone2=" + telefone2 +
                            "&tipoTelefone3=" + tipo_telefone3 +
                            "&telefone3=" + telefone3 +
                            "&tipoTelefone4=" + tipo_telefone4 +
                            "&telefone4=" + telefone4 +
                            "&cep=" + cep +
                            "&tipoLogradouro=" + tipo_logradouro +
                            "&logradouro=" + logradouro +
                            "&numeroEndereco=" + numero_endereco +
                            "&complemento=" + complemento +
                            "&bairro=" + bairro +
                            "&cidade=" + cidade +
                            "&estado=" + estado +
                            "&idEndereco=" + id_endereco+
                            "&idTelefone1=" + id_telefone1 +
                            "&idTelefone2=" + id_telefone2 +
                            "&idTelefone3=" + id_telefone3 +
                            "&idTelefone4=" + id_telefone4 +
                            "&idTipoTelefone1=" + id_tipo_telefone1 +
                            "&idTipoTelefone2=" + id_tipo_telefone2 +
                            "&idTipoTelefone3=" + id_tipo_telefone3 +
                            "&idTipoTelefone4=" + id_tipo_telefone4,
                            contentType: "charset=UTF-8",
                            success: function(retorno) {
                            if (retorno.trim() == "ok") {
                            //sucesso
                            location.replace("mensagem_alterar.jsp");
                            } else {
                            //erro
                            $ ("#mostrarErro").html (retorno);
                                    $('#myModal').modal('show');
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
                    <h1 class="mt-4">Alterar Agente</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="dashboard.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="consultar_agente.jsp">Consultar Agente</a></li>
                        <li class="breadcrumb-item"><a href="li_consulta_agente.jsp">Listagem de Consulta</a></li>
                        <li class="breadcrumb-item"><a href="resultado_cons_agente.jsp">Resultado Consulta</a></li>
                        <li class="breadcrumb-item active">Alterar Agente</li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-body">

                            <!-- COME??O DO FORM -->

                            <form action="#" method="#">
                                <div class="col-md-3">    </div>
                                <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Dados do Administrador</h5></div>
                                <div class="form-row">

                                    <div class="col-md-3">    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <%                                                    Agente agt = (Agente) request.getAttribute("agente");
                                            %>
                                            <label class="small mb-1" for="nomeUsuario">Nome</label>
                                            <input class="form-control py-3" id="idUsuario" name="idUsuario" type="hidden" placeholder="" value="<%=agt.getIdUsuario()%>" disabled/>
                                            <input class="form-control py-3" id="nomeUsuario" name="nomeUsuario" type="text" placeholder="Digite seu Nome" value="<%=agt.getNome()%>"/>
                                        </div>
                                    </div>



                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1" for="sobrenomeUsuario">Sobrenome</label>
                                            <input class="form-control py-3" id="sobrenomeUsuario" name="sobrenomeUsuario" type="text" placeholder="Digite seu sobrenome" value="<%=agt.getSobrenome()%>"/>
                                        </div>
                                    </div>



                                    <div class="col-md-3">    </div>

                                </div>

                                <div class="form-row">    
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="emailUsuario">Email</label>
                                            <input class="form-control py-3" id="emailUsuario" name="emailUsuario" type="text" placeholder="Digite seu email" value="<%=agt.getEmail()%>" />
                                        </div>   
                                    </div>

                                    <div class="col-md-2">    
                                        <div class="form-group">
                                            <label class="small mb-1" for="matriculaUsuario">Matr??cula</label>
                                            <input class="form-control py-3" id="matriculaUsuario" name="matriculaUsuario" type="text" placeholder="Apenas n??meros" onkeypress="return apenasNumeros(event);" maxlength="7" onblur="maxLenght()"  value="<%=agt.getMatricula()%>"/>
                                        </div>                                 
                                    </div>


                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="situacaoUsuario">Situa????o do Usu??rio</label>
                                            <select id="situacaoUsuario" name="situacaoUsuario" class="form-control">
                                                <option value="<%=agt.getIdSituacaoUsuario()%>"><%=agt.getDescSituacaoUsuario()%></option>
                                                <option value="1">Ativo</option>
                                                <option value="2">Inativo</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-md-3">    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-3"></div>
                                    <div hidden class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1" for="senha">Senha</label>
                                            <input class="form-control py-3" id="senha" name="senha" type="password" placeholder="Digite sua senha" value=""/>
                                        </div>
                                    </div>



                                    <div hidden class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1" for="confirmaSenha">Confirme sua Senha</label>
                                            <input class="form-control py-3" id="confirmaSenha" name="confirmaSenha" type="password" placeholder="Repita sua senha" value=""/>
                                        </div>
                                    </div>

                                   

                                </div>

                                <div class="form-row">
                                    <div class="col-md-3"></div> <span id='result'></span>
                                    
                                </div>
                                
                                <div class="form-row">
                                    <div class="col-md-3"></div>  <span id='message'></span>
                                    
                                </div>   

                                <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Dados Pessoais</h5></div>


                                <div class="form-row">  
                                    <div class="col-md-3"></div> 
                                    <div class="col-md-6" >
                                        <div class="form-group">                                            
                                            <label class="small mb-1" for="tipoUsuario" >Tipo de Usu??rio</label>
                                            <select id="tipoUsuario" name="tipoUsuario" class="form-control">
                                                <option value="<%=agt.getTipoUsuario().getIdTipoUsuario()%>"><%=agt.getTipoUsuario().getTipoUsuario()%></option>
                                                <option value="1">Administrador</option>
                                                <option value="2">Agente</option>
                                                <option value="3">Operador</option>
                                                <option value="4">Propriet??rio</option>
                                                <option value="5">Produtor</option>
                                            </select>
                                        </div>
                                    </div>


                                    <div class="col-md-3"></div> 
                                </div>


                                <div class="form-row">    
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="naturalizacaoDocumento" >RG/RNE</label>
                                            <input class="form-control py-3 " id="naturalizacaoDocumento" name="naturalizacaoDocumento" type="text" value="<%=agt.getRgRne()%>" placeholder="Digite o documento"/>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="orgaoDocumento">??rg??o Expedidor</label>
                                            <input class="form-control py-3" id="orgaoDocumento" name="orgaoDocumento" type="text" placeholder="Digite o ??rg??o" value="<%=agt.getOrgaoExpedidorRgRne()%>"/>
                                        </div>
                                    </div>


                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="emissaoDocumento">Data de Emiss??o</label>
                                            <%SimpleDateFormat fUS = new SimpleDateFormat("dd/MM/yyyy");%>
                                            <input class="form-control py-3" id="emissaoDocumento" name="emissaoDocumento" type="text" placeholder="dd/mm/aaaa" value="<%=fUS.format(agt.getDataEmissaoRgRne())%>" />
                                        </div>
                                    </div>
                                </div>




                                <div class="form-row"> 
                                    <div class="col-md-3">    </div>   
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="numeroCpfCnpjUsuario" >CPF/CNPJ</label>
                                            <input class="form-control py-3 " id="numeroCpfCnpjUsuario" name="numeroCpfCnpjUsuario" type="text" value="<%=agt.getCpfCnpj()%>" placeholder="Digite o documento"/>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group" Style="height: 38px;">                                            
                                            <label class="small mb-1" for="sexo" >Sexo</label>
                                            <select id="sexo" name="sexo" class="form-control">
                                                <option value="<%=agt.getSexo()%>"><%=agt.getSexo()%></option>
                                                <option value="masculino">Masculino</option>
                                                <option value="feminino">Feminino</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="nascimentoUsuario">Data de Nascimento</label>
                                            <input class="form-control py-3" id="nascimentoUsuario" name="nascimentoUsuario" type="text" placeholder="dd/mm/aaaa" onblur="Is18()" value="<%=fUS.format(agt.getDataNascimento())%>" />
                                        </div>
                                    </div> 
                                </div>



                                <div class="form-row">    
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <div class="form-group">                                            
                                            <label class="small mb-1" for="nacionalidadeUsuario" >Pa??s</label>
                                            <select id="nacionalidadeUsuario" name="nacionalidadeUsuario" class="form-control">
                                                <option value="<%=agt.getNacionalidade().getIdNacionalidade()%>"><%=agt.getNacionalidade().getDescricaoNacionalidade()%></option>
                                                <option value="1">Afeganist??o</option>
                                                <option value="2">Alb??nia</option>
                                                <option value="3">Arg??lia</option>
                                                <option value="4">Andorra</option>
                                                <option value="5">Angola</option>
                                                <option value="6">Ant??gua e Barbuda</option>
                                                <option value="7">Argentina</option>
                                                <option value="8">Arm??nia</option>
                                                <option value="9">Aruba</option>
                                                <option value="10">Austr??lia</option>
                                                <option value="11">??ustria</option>
                                                <option value="12">Azerbaij??o</option>
                                                <option value="13">Bahamas</option>
                                                <option value="14">Bangladesh</option>
                                                <option value="15">Barbados</option>
                                                <option value="16">Burundi</option>
                                                <option value="17">B??lgica</option>
                                                <option value="18">Benim</option>
                                                <option value="19">Bermudas</option>
                                                <option value="20">But??o</option>
                                                <option value="21">B??snia e Herzegovina</option>
                                                <option value="22">Belize</option>
                                                <option value="23">Bielorussia</option>
                                                <option value="24">Bol??via</option>
                                                <option value="25">Botswana</option>
                                                <option value="26">Brasil</option>
                                                <option value="27">Bahrein</option>
                                                <option value="28">Brunei</option>
                                                <option value="29">Bulg??ria</option>
                                                <option value="30">Burkina Faso</option>
                                                <option value="31">Rep??blica Centro-Africana</option>
                                                <option value="32">Camboja</option>
                                                <option value="33">Canad??</option>
                                                <option value="34">Ilhas Cayman</option>
                                                <option value="35">Rep??blica do Congo</option>
                                                <option value="36">Chade</option>
                                                <option value="37">Chile</option>
                                                <option value="38">China</option>
                                                <option value="39">Costa do Marfim</option>
                                                <option value="40">Camar??es</option>
                                                <option value="41">Rep??blica Democr??tica do Congo</option>
                                                <option value="42">Ilhas Cook</option>
                                                <option value="43">Col??mbia</option>
                                                <option value="44">Comores</option>
                                                <option value="45">Cabo Verde </option>
                                                <option value="46">Costa Rica</option>
                                                <option value="47">Cro??cia</option>
                                                <option value="48">Cuba</option>
                                                <option value="49">Chipre</option>
                                                <option value="50">Ch??quia</option>
                                                <option value="51">Dinamarca</option>
                                                <option value="52">Djibouti</option>
                                                <option value="53">Dominica</option>
                                                <option value="54">Rep??blica Dominicana</option>
                                                <option value="55">Equador</option>
                                                <option value="56">Egito</option>
                                                <option value="57">Eritreia</option>
                                                <option value="58">El Salvador</option>
                                                <option value="59">Espanha</option>
                                                <option value="60">Est??nia</option>
                                                <option value="61">Eti??pia</option>
                                                <option value="62">Fiji</option>
                                                <option value="63">Finl??ndia</option>
                                                <option value="64">Fran??a</option>
                                                <option value="65">Estados Federados da Micron??sia</option>
                                                <option value="66">Gab??o</option>
                                                <option value="67">G??mbia</option>
                                                <option value="68">Reino Unido</option>
                                                <option value="69">Inglaterra</option>
                                                <option value="70">Irlanda do Norte</option>
                                                <option value="71">Esc??cia</option>
                                                <option value="72">Pa??ses de Gales</option>
                                                <option value="73">Guin??-Bissau</option>
                                                <option value="74">Ge??rgia</option>
                                                <option value="75">Guin?? Equatorial</option>
                                                <option value="76">Alemanha</option>
                                                <option value="77">Gana</option>
                                                <option value="78">Gr??cia</option>
                                                <option value="79">Granada</option>
                                                <option value="80">Guatemala</option>
                                                <option value="81">Guin??</option>
                                                <option value="82">Guam</option>
                                                <option value="83">Guiana</option>
                                                <option value="84">Haiti</option>
                                                <option value="85">Hong Kong</option>
                                                <option value="86">Honduras</option>
                                                <option value="87">Hungria</option>
                                                <option value="88">Indon??sia</option>
                                                <option value="89">??ndia</option>
                                                <option value="90">Ir??o</option>
                                                <option value="91">Irlanda</option>
                                                <option value="92">Iraque</option>
                                                <option value="93">Isl??ndia</option>
                                                <option value="94">Israel</option>
                                                <option value="95">Ilhas Virgens Americanas</option>
                                                <option value="96">It??lia</option>
                                                <option value="97">Ilhas Virgens Brit??nicas</option>
                                                <option value="98">Jamaica</option>
                                                <option value="99">Jord??nia</option>
                                                <option value="100">Jap??o</option>
                                                <option value="101">Cazaquist??o</option>
                                                <option value="102">Qu??nia</option>
                                                <option value="103">Quirguist??o</option>
                                                <option value="104">Kiribati</option>
                                                <option value="105">Coreia do Sul</option>
                                                <option value="106">Kosovo</option>
                                                <option value="107">Ar??bia Saudita</option>
                                                <option value="108">Kuwait</option>
                                                <option value="109">Laos</option>
                                                <option value="110">Nova Zel??ndia</option>
                                                <option value="111">Om??</option>
                                                <option value="112">Paquist??o</option>
                                                <option value="113">Panam??</option>
                                                <option value="114">Paraguai</option>
                                                <option value="115">Peru</option>
                                                <option value="116">Filipinas</option>
                                                <option value="117">Palestina</option>
                                                <option value="118">Palau</option>
                                                <option value="119">Papua-Nova Guin??</option>
                                                <option value="120">Pol??nia</option>
                                                <option value="121">Portugal</option>
                                                <option value="122">Coreia do Norte</option>
                                                <option value="123">Porto Rico</option>
                                                <option value="124">Catar</option>
                                                <option value="125">Rom??nia</option>
                                                <option value="126">??frica do Sul</option>
                                                <option value="127">Sud??o</option>
                                                <option value="128">Su????a</option>
                                                <option value="129">Suriname</option>
                                                <option value="130">Eslov??quia</option>
                                                <option value="131">Su??cia</option>
                                                <option value="132">Essuat??ni</option>
                                                <option value="133">S??ria</option>
                                                <option value="134">Tanz??nia</option>
                                                <option value="135">Tonga</option>
                                                <option value="136">Tail??ndia</option>
                                                <option value="137">Tajiquist??o</option>
                                                <option value="138">Uruguai</option>
                                                <option value="139">Estados Unidos</option>
                                                <option value="140">Venezuela</option>
                                            </select>
                                        </div>
                                    </div> 

                                    <div class="col-md-2">
                                        <div class="form-group" >                                            
                                            <label class="small mb-1" for="orgaoFuncional">??rg??o Funcional</label>
                                            <select id="orgaoFuncional" name="orgaoFuncional" class="form-control">
                                                <option value="<%=agt.getRegional().getIdOrgaoFuncional()%>"><%=agt.getRegional().getOrgaoFuncional()%></option>
                                                <option value="1">INCRA</option>
                                                <option value="2">MAPA</option>
                                                <option value="3">IBAMA</option>
                                                <option value="4">IBGE</option>
                                                <option value="5">RECEITA FEDERAL</option>
                                                <option value="6">MINIST??RIO DA AGRICULTURA</option>
                                            </select>
                                        </div>
                                    </div> 

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="regional">Regional</label>
                                            <select class="form-control" id="regional" name="regional">
                                                <option value="<%=agt.getRegional().getIdRegional()%>"><%=agt.getRegional().getDescricaoRegional()%></option>
                                            </select>
                                        </div>
                                    </div>

                                </div>


                                <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Contatos</h5></div>


                                <%
                                    Telefone t1 = null;
                                    if (agt.getTelefones().size() < 1) {
                                        t1 = new Telefone();
                                    } else {
                                        t1 = agt.getTelefones().get(0);
                                    }
                                %>
                                <div class="form-row">
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-2 " for="tipoTelefone1" >Tipo de Telefone</label>
                                            <select id="tipoTelefone1" name="tipoTelefone1" class="form-control" onchange="telefoneMask1()">
                                                <option value="">Selecione o tipo</option>
                                                <option value="1"<%=(t1.getIdTipoTelefone() == 1 ? " selected='selected'" : "")%>>Residencial</option>
                                                <option value="2"<%=(t1.getIdTipoTelefone() == 2 ? " selected='selected'" : "")%>>Celular</option>
                                                <option value="3"<%=(t1.getIdTipoTelefone() == 3 ? " selected='selected'" : "")%>>Comercial</option>
                                                <option value="4"<%=(t1.getIdTipoTelefone() == 4 ? " selected='selected'" : "")%>>Recado</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1.1" for="telefone1">Telefone</label>
                                            <input class="telefone1 form-control py-3" id="idTelefone1" name="idTelefone1" type="hidden" placeholder="Telefone" value="<%=t1.getIdTelefone()%>"/>
                                            <input class="telefone1 form-control py-3" id="idTipoTelefone1" name="idTipoTelefone1" type="hidden" placeholder="Telefone" value="<%=t1.getIdTipoTelefone()%>"/>
                                            <input class="telefone1 form-control py-3" id="telefone1" name="telefone1" type="text" placeholder="Telefone" value="<%=(t1.getNumeroTelefone() == null ? "" : t1.getNumeroTelefone())%>"/>
                                        </div>
                                    </div>
                                </div>
                                <!-- -->

                                <%
                                    Telefone t2 = null;
                                    if (agt.getTelefones().size() < 2) {
                                        t2 = new Telefone();
                                    } else {
                                        t2 = agt.getTelefones().get(1);
                                    }
                                %>
                                <div class="form-row">
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-2 " for="tipoTelefone2" >Tipo de Telefone</label>
                                            <select id="tipoTelefone2" name="tipoTelefone2" class="form-control" onchange="telefoneMask1()">
                                                <option value="">Selecione o tipo</option>
                                                <option value="1"<%=(t2.getIdTipoTelefone() == 1 ? " selected='selected'" : "")%>>Residencial</option>
                                                <option value="2"<%=(t2.getIdTipoTelefone() == 2 ? " selected='selected'" : "")%>>Celular</option>
                                                <option value="3"<%=(t2.getIdTipoTelefone() == 3 ? " selected='selected'" : "")%>>Comercial</option>
                                                <option value="4"<%=(t2.getIdTipoTelefone() == 4 ? " selected='selected'" : "")%>>Recado</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1.1" for="telefone2">Telefone</label>
                                            <input class="telefone1 form-control py-3" id="idTelefone2" name="idTelefone2" type="hidden" placeholder="Telefone" value="<%=t2.getIdTelefone()%>"/>
                                            <input class="telefone1 form-control py-3" id="idTipoTelefone2" name="idTipoTelefone2" type="hidden" placeholder="Telefone" value="<%=t2.getIdTipoTelefone()%>"/>
                                            <input class="telefone1 form-control py-3" id="telefone2" name="telefone2" type="text" placeholder="Telefone" value="<%=(t2.getNumeroTelefone() == null ? "" : t2.getNumeroTelefone())%>"/>
                                        </div>
                                    </div>
                                </div>

                                <!-- -->
                                <%
                                    Telefone t3 = null;
                                    if (agt.getTelefones().size() < 3) {
                                        t3 = new Telefone();
                                    } else {
                                        t3 = agt.getTelefones().get(2);
                                    }
                                %>
                                <div class="form-row">
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-2 " for="tipoTelefone3" >Tipo de Telefone</label>
                                            <select id="tipoTelefone3" name="tipoTelefone3" class="form-control" onchange="telefoneMask1()">
                                                <option value="">Selecione o tipo</option>
                                                <option value="1"<%=(t3.getIdTipoTelefone() == 1 ? " selected='selected'" : "")%>>Residencial</option>
                                                <option value="2"<%=(t3.getIdTipoTelefone() == 2 ? " selected='selected'" : "")%>>Celular</option>
                                                <option value="3"<%=(t3.getIdTipoTelefone() == 3 ? " selected='selected'" : "")%>>Comercial</option>
                                                <option value="4"<%=(t3.getIdTipoTelefone() == 4 ? " selected='selected'" : "")%>>Recado</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1.1" for="telefone3">Telefone</label>
                                            <input class="telefone1 form-control py-3" id="idTelefone3" name="idTelefone3" type="hidden" placeholder="Telefone" value="<%=t3.getIdTelefone()%>"/>
                                            <input class="telefone1 form-control py-3" id="idTipoTelefone3" name="idTipoTelefone3" type="hidden" placeholder="Telefone" value="<%=t3.getIdTipoTelefone()%>"/>
                                            <input class="telefone1 form-control py-3" id="telefone3" name="telefone3" type="text" placeholder="Telefone" value="<%=(t3.getNumeroTelefone() == null ? "" : t3.getNumeroTelefone())%>"/>
                                        </div>
                                    </div>
                                </div>
                                <!-- -->

                                <%
                                    Telefone t4 = null;
                                    if (agt.getTelefones().size() < 4) {
                                        t4 = new Telefone();
                                    } else {
                                        t4 = agt.getTelefones().get(3);
                                    }
                                %>
                                <div class="form-row">
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-2 " for="tipoTelefone4" >Tipo de Telefone</label>
                                            <select id="tipoTelefone4" name="tipoTelefone4" class="form-control" onchange="telefoneMask1()">
                                                <option value="">Selecione o tipo</option>
                                                <option value="1"<%=(t4.getIdTipoTelefone() == 1 ? " selected='selected'" : "")%>>Residencial</option>
                                                <option value="2"<%=(t4.getIdTipoTelefone() == 2 ? " selected='selected'" : "")%>>Celular</option>
                                                <option value="3"<%=(t4.getIdTipoTelefone() == 3 ? " selected='selected'" : "")%>>Comercial</option>
                                                <option value="4"<%=(t4.getIdTipoTelefone() == 4 ? " selected='selected'" : "")%>>Recado</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1.1" for="telefone4">Telefone</label>
                                            <input class="telefone4 form-control py-3" id="idTelefone4" name="idTelefone4" type="hidden" placeholder="Telefone" value="<%=t4.getIdTelefone()%>"/>
                                            <input class="telefone4 form-control py-3" id="idTipoTelefone4" name="idTipoTelefone4" type="hidden" placeholder="Telefone" value="<%=t4.getIdTipoTelefone()%>"/>
                                            <input class="telefone4 form-control py-3" id="telefone4" name="telefone4" type="text" placeholder="Telefone" value="<%=(t4.getNumeroTelefone() == null ? "" : t4.getNumeroTelefone())%>"/>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-row">
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="cep">CEP<i class="fas fa-search" style="margin-left: 10px;"  onclick="pesquisacep(cep.value);"></i></label>
                                            <input class="form-control py-3" id="cep" name="cep" type="text" value="<%=agt.getEndereco().getCep()%>" onblur="pesquisacep(this.value);" placeholder="Digite o CEP"/>
                                        </div>
                                    </div>

                                    <div hidden class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="tipoLogradouro">Tipo de Logradouro</label>
                                            <input class="form-control py-3" id="idEndereco" name="idEndereco" type="hidden" placeholder="Tipo de logradouro" value="<%=agt.getEndereco().getIdEndereco()%>" />

                                            <input class="form-control py-3" id="tipoLogradouro" name="tipoLogradouro" type="text" placeholder="Tipo de logradouro" value="<%=agt.getEndereco().getTipoLogradouro()%>" />
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="small mb-1" for="logradouro">Logradouro</label>
                                            <input class="form-control py-3" id="logradouro" name="logradouro" type="text" placeholder="Nome logradouro" value="<%=agt.getEndereco().getLogradouro()%>" />
                                        </div>
                                    </div>

                                </div>

                                <div class="form-row">


                                    <div class="col-md-3">    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="numeroEndereco">N??mero</label>
                                            <input class="form-control py-3" id="numeroEndereco" name="numeroEndereco" type="text" placeholder="N?? do local" value="<%=agt.getEndereco().getNumero()%>" />
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="complemento">Complemento</label>
                                            <input class="form-control py-3" id="complemento" name="complemento" type="text" placeholder="Complemento" value="<%=agt.getEndereco().getComplemento()%>"/>
                                        </div>
                                    </div>

                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="small mb-1" for="bairro">Bairro</label>
                                            <input class="form-control py-3" id="bairro" name="bairro" type="text" placeholder="Bairro" value="<%=agt.getEndereco().getBairro()%>"/>
                                        </div>
                                    </div>


                                </div>
                                <div class="form-row">    
                                    <div class="col-md-3">    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label class="small mb-1" for="cidade">Cidade</label>
                                            <input class="form-control py-3" id="cidade" name="cidade" type="text" placeholder="Cidade" onkeypress="return apenasLetras(event);" value="<%=agt.getEndereco().getCidade()%>"/>
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <label class="small mb-1" for="estado">Estado</label>
                                        <select id="estado" name="estado" class="form-control">
                                            <option value="<%=agt.getEndereco().getEstado().getIdEstado()%>"><%=agt.getEndereco().getEstado().getDescricaoEstado()%></option>
                                            <option value="1">Acre</option>
                                            <option value="2">Alagoas</option>
                                            <option value="3">Amap??</option>
                                            <option value="4">Amazonas</option>
                                            <option value="5">Bahia</option>
                                            <option value="6">Cear??</option>
                                            <option value="7">Distrito Federal</option>
                                            <option value="8">Esp??rito Santo</option>
                                            <option value="9">Goi??s</option>
                                            <option value="10">Maranh??o</option>
                                            <option value="11">Mato Grosso</option>
                                            <option value="12">Mato Grosso do Sul</option>
                                            <option value="13">Minas Gerais</option>
                                            <option value="14">Par??</option>
                                            <option value="15">Para??ba</option>
                                            <option value="16">Paran??</option>
                                            <option value="17">Pernambuco</option>
                                            <option value="18">Piau??</option>
                                            <option value="19">Rio de Janeiro</option>
                                            <option value="20">Rio Grande do Norte</option>
                                            <option value="21">Rio Grande do Sul</option>
                                            <option value="22">Rond??nia</option>
                                            <option value="23">Roraima</option>
                                            <option value="24">Santa Catarina</option>
                                            <option value="25">S??o Paulo</option>
                                            <option value="26">Sergipe</option>
                                            <option value="27">Tocantins</option>

                                        </select>
                                    </div>


                                </div>

                                <div class="col-md-1," style="display : flex; justify-content : center; align-items : center; flex-direction : initial;">

                                    <div class="form-group mt-4 mb-0">
                                        <button class="btn btn-success btn-block" id="salvarAlteracoes">Salvar Altera????es</button>
                                    </div>

                                </div>


                            </form>

                            <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Aten????o!</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body py-5">    
                                            <h6 class="text-danger text-center"> 
                                                <div class="" id="mostrarErro"></div>
                                            </h6>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-dark" data-dismiss="modal">Fechar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                        </main>

                        <div id="savechangemodal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Altera????es feitas com sucesso!</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>

                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-success" data-dismiss="modal" value="Voltar">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <footer class="py-4 bg-success mt-auto ">
                            <div class="container-fluid ">
                                <div class="d-flex align-items-right justify-content-between small">
                                    <div class="text-light">2020 Agrotech Sistema de Unifica????o de Dados do Agroneg??cio.</div>
                                </div>
                            </div>
                        </footer>
                    </div>
                </div>


                <script src="js/jquery-3.4.1.min.js"></script>
                <script src="js/all.min.js"></script>
                <script src="js/scripts.js"></script>
                <script src="js/resilia.js"></script>
                <script src="assets/demo/datatables-demo.js"></script>
                <script src="js/jquery.mask.min.js"></script>
                <script src="js/bootstrap.bundle.min.js"></script>
                <script src="js/dataTables.bootstrap4.min.js"></script>
                <script src="js/validaDados.js"></script>


                </body>
                </html>