<%@page import="model.Telefone"%>
<%@page import="model.Produtor"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%
  if (session.getAttribute("user") == null)
  {
    String address =  "login.jsp";
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
        <title>Resultado de Consulta</title>
        <link rel="icon" href="/agrotech/favicon.ico">
        <link href="css/styles.css" rel="stylesheet" />     
        <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet" />
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
                $("#excluir").click(function() {
                    event.preventDefault();
                    
                    var _idProdutor = $("#idProdutor").val();                    

                    $.ajax(
                        {
                            url:"excluirProdutor?"+ 
                            "idProdutor="+_idProdutor,
                            contentType: "charset=UTF-8",
                            success: function(retorno) {
                                if (retorno.trim()=="ok") {
                                    //sucesso
                                    location.replace("mensagem_excluir.jsp");
                                } else {
                                    //erro
                                     $("#mostrarErro").html(retorno);
                                     $('#myModal').modal('show');
                                }
                            }
                        }
                    );
                });
            });
        </script>
        
        <script>
            $(document).ready(function () {
                $("#desabilitar").click(function () {
                    event.preventDefault();

                    var _idProdutor = $("#idProdutor").val();

                    $.ajax(
                            {
                                url: "desabilitarProdutor?" +
                                        "idProdutor=" + _idProdutor,
                                contentType: "charset=UTF-8",
                                success: function (retorno) {
                                    if (retorno.trim() == "ok") {
                                        //sucesso
                                        location.replace("mensagem_desabilitar.jsp");
                                    } else {
                                        //erro
                                        $("#mostrarErro").html(retorno);
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

        <%@include file="menu.jsp" %>
        
            <!-- Fim do menu da esquerda -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Resultado de Consulta de Produtor</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item"><a href="consultar_produtor.jsp">Consultar</a></li>
                            <li class="breadcrumb-item"><a href="li_consulta_produtor.jsp">Listagem de Consulta</a></li>
                            <li class="breadcrumb-item active">Resultado Consulta</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                
                                <!-- COME??O DO FORM -->

                                <form action="resultadoConsUsu" method="post">
                                    <div class="col-md-3">    </div>
                                    <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Dados do Produtor</h5></div>
                                    <div class="form-row">
                                        <%
                                            Produtor p = (Produtor) request.getAttribute("produtor");
                                        %>
                                        <input class="form-control py-3" id="idProdutor" name="idProdutor" type="hidden" placeholder="" value="<%=p.getIdUsuario()%>" disabled/>
                                        
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="nomeUsuario">Nome</label>
                                                <input class="form-control py-3" id="nomeUsuario" name="nomeUsuario" type="text" placeholder="" value="<%=p.getNome()%>" disabled/>
                                            </div>
                                        </div>
                                        
                                        

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="sobrenomeUsuario">Sobrenome</label>
                                                <input class="form-control py-3" id="sobrenomeUsuario" name="sobrenomeUsuario" type="text" placeholder="Digite seu Sobrenome" value="<%=p.getSobrenome()%>" disabled/>
                                            </div>
                                        </div>
                                    
                                        
                                    
                                         <div class="col-md-3">    </div>

                                    </div>
                                
                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="small mb-1" for="emailUsuario">Email</label>
                                                <input class="form-control py-3" id="emailUsuario" name="emailUsuario" type="email" placeholder="Digite seu Email" value="<%=p.getEmail()%>" disabled/>
                                            </div>   
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="situacaoUsuario">Situa????o do Usu??rio</label>
                                                <select id="situacaoUsuario" name="situacaoUsuario" class="form-control" disabled>
                                                    <option value="<%=p.getIdSituacaoUsuario()%>"><%=p.getDescSituacaoUsuario()%></option>
                                                    <option value="1">Ativo</option>
                                                    <option value="2">Inativo</option>
                                                </select>
                                            </div>
                                        </div>
  
                                         <div class="col-md-3">    </div>
                                    </div>


                                       <div class="form-row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="senha">Senha</label>
                                                <input class="form-control py-3" id="senha" name="senha" type="password" placeholder="Digite sua Senha" value="" disabled/>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="confirmaSenha">Confirme sua Senha</label>
                                                <input class="form-control py-3" id="confirmaSenha" name="confirmaSenha" type="password" placeholder="Repita sua Senha" value="" disabled/>
                                            </div>
                                        </div>
                                                
                                        <span id='message'></span>

                                    </div>
                                        

                                    <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Dados Pessoais</h5></div>

                                    <div class="form-row">  
                                        <div class="col-md-3"></div> 
                                      

                                        
                                        <div class="col-md-3"></div> 
                                    </div>


                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="naturalizacaoDocumento" >RG/RNE</label>
                                                <input class="form-control py-3 " id="naturalizacaoDocumento" name="naturalizacaoDocumento" type="text" value="<%=p.getRgRne()%>" disabled/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="orgaoDocumento">??rg??o Expedidor</label>
                                                <input class="form-control py-3" id="orgaoDocumento" name="orgaoDocumento" type="text" placeholder="" value="<%=p.getOrgaoExpedidorRgRne()%>" disabled/>
                                            </div>
                                        </div>
                                        

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="emissaoDocumento">Data de Emiss??o</label>
                                                <input class="form-control py-3" id="emissaoDocumento" name="emissaoDocumento" type="date" placeholder="dd/mm/aaaa" value="<%=p.getDataEmissaoRgRne()%>" disabled/>
                                            </div>
                                        </div>
                                    </div>
                                        



                                    <div class="form-row"> 
                                        <div class="col-md-3">    </div>   
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="numeroCpfCnpjUsuario" >CPF/CNPJ</label>
                                                <input class="form-control py-3 " id="numeroCpfCnpjUsuario" name="numeroCpfCnpjUsuario" type="text" value="<%=p.getCpfCnpj()%>" disabled/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group" Style="height: 38px;">
                                                <label class="small mb-1" for="sexoUsuario" >Sexo</label>
                                                <select id="sexo" name="sexo" class="form-control" disabled>
                                                    <option value=""><%=p.getSexo()%></option>
                                                    <option value="masculino">Masculino</option>
                                                    <option value="feminino">Feminino</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="nascimentoUsuario">Data de Nascimento</label>
                                                <input class="form-control py-3" id="nascimentoUsuario" name="nascimentoUsuario" type="date" placeholder="dd/mm/aaaa" value="<%=p.getDataNascimento()%>" disabled/>
                                            </div>
                                        </div> 
                                    </div>


                                    
                                    <div class="form-row">    
                                        <div class="col-md-3"></div>
                                        <div class="col-md-3">
                                            <div class="form-group">                                            
                                                <label class="small mb-1" for="nacionalidadeUsuario" >Pa??s</label>
                                                <select id="nacionalidadeUsuario" name="nacionalidadeUsuario" class="form-control" disabled>
                                                    <option value="<%=p.getNacionalidade().getIdNacionalidade()%>"><%=p.getNacionalidade().getDescricaoNacionalidade()%></option>
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
                                        <div class="col-md-3" >
                                            <div class="form-group">                                            
                                                <label class="small mb-1" for="tipoUsuario" >Tipo de Usu??rio</label>
                                                <select id="tipoUsuario" name="tipoUsuario" class="form-control" disabled>
                                                    <option value="<%=p.getTipoUsuario().getIdTipoUsuario()%>"><%=p.getTipoUsuario().getTipoUsuario()%></option>
                                                    <option value="1">Administrador</option>
                                                    <option value="2">Agente</option>
                                                    <option value="3">Operador</option>
                                                    <option value="4">Propriet??rio</option>
                                                    <option value="5">Produtor</option>
                                                </select>
                                            </div>
                                        </div>
                                       

                                    </div>




                                    <div class="form-row"><div class="col-md-3"></div><h5 class="font-weight-light my-4">Contatos</h5></div>

                                    <%
                                        for (Telefone t : p.getTelefones()) {
                                    %>
                                    <div class="form-row">

                                        <div class="col-md-3">    </div>
                                        
                                        
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-2 " for="tipoTelefone1">Tipo de Telefone</label>
                                                <select id="tipoTelefone1" name="tipoTelefone1" class="form-control" disabled>
                                                    <option value="<%=t.getIdTipoTelefone()%>"><%=t.getTipoTelefone()%></option>
                                                    <option value="1">Residencial</option>
                                                    <option value="2">Celular</option>
                                                    <option value="3">Comercial</option>
                                                    <option value="4">Recado</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1.1" for="telefone1">Telefone</label>
                                                <input class="form-control py-3" id="telefone1" name="telefone1" type="text" placeholder="Telefone" value="<%=t.getNumeroTelefone()%>" disabled/>
                                            </div>
                                        </div>
                                           

                                    </div>
                                    <%}%>     
                                

                                    <div class="form-row">
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="cep">CEP<i class="fas fa-search" style="margin-left: 10px;"  onclick="pesquisacep(cep.value);"></i></label>
                                                <input class="form-control py-3" id="cep" name="cep" type="text" onblur="pesquisacep(this.value);" value="<%=p.getEndereco().getCep()%>" disabled/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="tipoLogradouro">Tipo de Logradouro</label>
                                                <input class="form-control py-3" id="tipoLogradouro" name="tipoLogradouro" type="text" placeholder="Tipo de Logradouro" value="<%=p.getEndereco().getTipoLogradouro()%>" disabled/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="logradouro">Logradouro</label>
                                                <input class="form-control py-3" id="logradouro" name="logradouro" type="text" placeholder="Nome do Logradouro" value="<%=p.getEndereco().getLogradouro()%>" disabled/>
                                            </div>
                                        </div>
                                                    
                                    </div>

                                    <div class="form-row">
                                        

                                        <div class="col-md-3">    </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="numeroEndereco">N??mero</label>
                                                <input class="form-control py-3" id="numeroEndereco" name="numeroEndereco" type="text" placeholder="N?? do Local" value="<%=p.getEndereco().getNumero()%>" disabled/>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="complemento">Complemento</label>
                                                <input class="form-control py-3" id="complemento" name="complemento" type="text" placeholder="Complemento" value="<%=p.getEndereco().getComplemento()%>" disabled/>
                                            </div>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="small mb-1" for="bairro">Bairro</label>
                                                <input class="form-control py-3" id="bairro" name="bairro" type="text" placeholder="Bairro" value="<%=p.getEndereco().getBairro()%>" disabled/>
                                            </div>
                                        </div>

                                         
                                    </div>
                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="cidade">Cidade</label>
                                                <input class="form-control py-3" id="cidade" name="cidade" type="text" placeholder="Cidade" value="<%=p.getEndereco().getCidade()%>" disabled/>
                                            </div>
                                        </div>
                                    

                                        <div class="col-md-3">
                                            <label class="small mb-1" for="estado">Estado</label>
                                            <select id="estado" name="estado" class="form-control" disabled>
                                                <option value="<%=p.getEndereco().getEstado().getIdEstado()%>"><%=p.getEndereco().getEstado().getDescricaoEstado()%></option>
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

                                    
                                    </form>
                                        
                                    <!-- INICIO BOTOES -->
                                                           
                                    <div class="form-row">
                                        <div class="col-md-3"></div>

                                        
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <div class="form-group mt-4 mb-0"><a href="alterarProdutor?id=<%=p.getIdUsuario()%>" class="btn btn-warning btn-block text-light" role="button">Alterar</a></div>
                                            </div>
                                        </div>


                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <%
                                                    if (p.getDesabilitarUsuario() == true) {
                                                %>
                                        <div class="form-group mt-4 mb-0" class="col-md-2"><a href="#DisableEmployeeModal" data-toggle="modal"><button class="btn btn-info btn-block" type="submit">Desabilitar</button></a></div>
                                     <%} else {%>
                                      <div class="form-group mt-4 mb-0" class="col-md-2"><a href="#DisableEmployeeModal" data-toggle="modal"><button class="btn btn-info btn-block" type="submit">Habilitar</button></a></div>
                                    <%}%>
                                            </div>
                                        </div>


                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <div class="form-group mt-4 mb-0" class="col-md-2"><a href="#deleteEmployeeModal"  data-toggle="modal"><button class="btn btn-danger btn-block" type="submit">Excluir</button></a></div>
                                            </div>
                                        </div>

                                    </div>
                                        
                                    <!-- FINAL BOTOES -->

                                <!-- Delete Modal html -->
                                <div id="deleteEmployeeModal" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <form>
                                                <div class="modal-header">						
                                                    <h4 class="modal-title">Excluir Usu??rio</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                </div>
                                                <div class="modal-body">					
                                                    <p>Tem certeza que deseja <strong>apagar</strong> esse usu??rio?</p>
                                                    <p class="text-warning"><small>Essa a????o n??o poder?? ser desfeita.</small></p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">Cancelar</button>
                                                    <button type="submit" class="btn btn-danger" id="excluir" value="Excluir" >Excluir</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>


                                    <!-- Desabilitar Modal jsp -->
                                    <div id="DisableEmployeeModal" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form>
                                                    <div class="modal-header">						
                                                        <h4 class="modal-title">Desabilitar Usu??rio</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    </div>
                                                    <div class="modal-body">					
                                                        <p>Tem certeza que deseja <strong>desabilitar</strong> esse usu??rio?</p>
                                                        </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">Cancelar</button>
                                                        <%
                                                            if (p.getDesabilitarUsuario() == true) {
                                                        %>
                                                        <button type="submit" class="btn btn-danger" id="desabilitar" value="Desabilitar" >Desabilitar</button>
                                                        <%} else {%>
                                                        <button type="submit" class="btn btn-danger" id="desabilitar" value="Desabilitar" >Habilitar</button>
                                                        <%}%>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                <!--Fim dos modais-->


                                
                                


                               
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

                <script src="js/jquery-3.4.1.min.js"></script>
                <script src="js/all.min.js"></script>
                <script src="js/scripts.js"></script>
                <script src="js/resilia.js"></script>
                <script src="assets/demo/datatables-demo.js"></script>
                <script src="js/jquery.mask.min.js"></script>
                <script src="js/bootstrap.bundle.min.js"></script>
                <script src="js/dataTables.bootstrap4.min.js"></script>


                
            </body>
        </html>