<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<head>
        <title>ONPE - Oficina Nacional de Procesos Electorales</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  /> 
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
		 
        <link href="css/bootstrap.css"       rel="stylesheet" type="text/css" media="screen"/>
        <link href="css/style.css"       rel="stylesheet" type="text/css" media="screen"/>
</head>
<body>
  <%@include file="WEB-INF/header.jsp"%>

	<div class="container">
		<img src="images/f-presidencial.jpg" width="1170" height="248"
			class="img-responsive mg30top">

		<section class="menu navbar-default menu05">
			<a name="posicion"></a>
			<nav class="navbar-collapse bs-navbar-collapse collapse"
				aria-expanded="false">
				<ul class="nav navbar-nav">
					<li class="bt-azul act-azul"><a href="svlPresidenciales">PRESIDENCIAL</a>
					</li>
					<li class="bt-amarillo"><a href="svlActas">ACTAS</a>
					</li>
					<li class="bt-rojo"><a href="svlParticipacion">PARTICIPACIÓN
							CIUDADANA</a></li>
				</ul>
			</nav>
		</section>

		<section class="contenedor">
			<div class="row">
				<div class="col-xs-12 col-md-3">
					<div class="menu-interna">
						<ul>
							<li><a href="presidenciales.jsp">RESUMEN GENERAL</a></li>
							<li><a href="resultados.jsp" class="act-izq">RESULTADOS PRESIDENCIALES</a></li>
							<li><a href="resultados2.jsp" >RESULTADOS POR TIPO DE VOTOS</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-md-9" id="impreso">
					<div class="contenido-interna">
						<div class="titulos col-xs-12">
							<div class="col-xs-11">
								<h3> <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true" style="font-size:19px"></span> SEGUNDA ELECCIÓN PRESIDENCIAL 2016: RESULTADOS PRESIDENCIALES</h3>
							</div>

							<div class="col-xs-1 oculto-boton-print">
								<button><i class="fa fa-print ico-print"></i></button>
							</div>
						</div>
						
						<div class="col-xs-12">
							<p class="subtitle">RESULTADOS DE ELECCIONES PRESIDENCIALES</p>
								<form id="frmBuscar" name="frmBuscar" action="" method="post" class="horizontal-form">
									<div id="divUbicombo" class="row">
										<div class="col-md-3" style="display:block">
											<label class="control-label">Ámbito:</label>
											<div id="ambito" class="form-group">
												<select name="cdgoAmbito" id="cdgoAmbito" class="form-control" onchange="buscarAmbito('10', '', 'PR', this.value, '');
												$('#aComentarioProvincia').html('');
												">
												  <option value="">TODOS</option>
												  <option value="P">PERÚ</option>
												  <option value="E">EXTRANJERO</option>
												</select>
											</div>
										</div>
										<div id="dvNombreDepartamento" class="col-md-3" style="">
											<div class="form-group">
												<label id="lblDepartamento" class="control-label">Departamento:</label>
												<div id="departamentos"><select name="cdgoDep" id="cdgoDep" class="form-control" onchange="getProvinciasDepa($('#cdgoAmbito').val(),'10', '', this.value, '');">
												    <option selected="selected" value="">TODOS</option>
												            <option value="010000">AMAZONAS</option>
												            <option value="020000">ANCASH</option>
												            <option value="030000">APURIMAC</option>
												            <option value="040000">AREQUIPA</option>
												            <option value="050000">AYACUCHO</option>
												            <option value="060000">CAJAMARCA</option>
												            <option value="240000">CALLAO</option>
												            <option value="070000">CUSCO</option>
												            <option value="080000">HUANCAVELICA</option>
												            <option value="090000">HUANUCO</option>
												            <option value="100000">ICA</option>
												            <option value="110000">JUNIN</option>
												            <option value="120000">LA LIBERTAD</option>
												            <option value="130000">LAMBAYEQUE</option>
												            <option value="140000">LIMA</option>
												            <option value="150000">LORETO</option>
												            <option value="160000">MADRE DE DIOS</option>
												            <option value="170000">MOQUEGUA</option>
												            <option value="180000">PASCO</option>
												            <option value="190000">PIURA</option>
												            <option value="200000">PUNO</option>
												            <option value="210000">SAN MARTIN</option>
												            <option value="220000">TACNA</option>
												            <option value="230000">TUMBES</option>
												            <option value="250000">UCAYALI</option>
												    </select>
												</div>
											</div>
										</div>
										<div id="dvNombreProvincia" class="col-md-3" style="">
											<div class="form-group">
												<label id="lblProvincia" class="control-label">Provincia:</label>
												<div id="provincias"><select name="cdgoProv" id="cdgoProv" class="form-control">
												    <option selected="selected" value="">TODOS</option>
												            <option value="020200">AIJA</option>
												            <option value="021600">ANTONIO RAIMONDI</option>
												            <option value="021800">ASUNCION</option>
												            <option value="020300">BOLOGNESI</option>
												            <option value="020400">CARHUAZ</option>
												            <option value="021700">CARLOS FERMIN FITZCARRALD</option>
												            <option value="020500">CASMA</option>
												            <option value="020600">CORONGO</option>
												            <option value="020100">HUARAZ</option>
												            <option value="020800">HUARI</option>
												            <option value="021900">HUARMEY</option>
												            <option value="020700">HUAYLAS</option>
												            <option value="020900">MARISCAL LUZURIAGA</option>
												            <option value="022000">OCROS</option>
												            <option value="021000">PALLASCA</option>
												            <option value="021100">POMABAMBA</option>
												            <option value="021200">RECUAY</option>
												            <option value="021300">SANTA</option>
												            <option value="021400">SIHUAS</option>
												            <option value="021500">YUNGAY</option>
												    </select>
												<span id="aComentarioProvincia"></span></div>
											</div>
										</div>
										<div id="dvNombreDistrito" class="col-md-3" style="">
											<div class="form-group">
												<label id="lblDistrito" class="control-label">Distrito:</label>
												<div id="distritos"><select name="cdgoDist" id="cdgoDist" class="form-control" onchange="getResultadosDist('020300', '10', '', this.value, '');">
												    <option selected="selected" value=""> TODOS </option>
												            <option value="020302">ABELARDO PARDO LEZAMETA</option>
												            <option value="020321">ANTONIO RAIMONDI</option>
												            <option value="020304">AQUIA</option>
												            <option value="020305">CAJACAY</option>
												            <option value="020322">CANIS</option>
												            <option value="020301">CHIQUIAN</option>
												            <option value="020323">COLQUIOC</option>
												            <option value="020325">HUALLANCA</option>
												            <option value="020311">HUASTA</option>
												            <option value="020310">HUAYLLACAYAN</option>
												            <option value="020324">LA PRIMAVERA</option>
												            <option value="020313">MANGAS</option>
												            <option value="020315">PACLLON</option>
												            <option value="020317">SAN MIGUEL DE CORPANQUI</option>
												            <option value="020320">TICLLOS</option>
												    </select>
												</div>
											</div>
										</div>
									</div>

							<div id="divDetalle"><br>
								<div style="clear:both"></div>
							  		<div class="row">
									<div class="col-lg-7 centered">
										<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
											<div class="col-xs-3 col-md-1">
												<span class="glyphicon glyphicon-ok-circle ico-info" aria-hidden="true"></span>
											</div>
						
											<div class="col-xs-9 col-md-11">
												<ul>
													<li>ACTAS PROCESADAS: 100.000%</li>
													<li>ACTAS CONTABILIZADAS: 100.000%</li>
													<li>ACTUALIZADO EL 20/06/2016 A LAS 19:16 h.</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
					<button class="btn btn-primary pull-right" type="button" onclick="VerGraficoBarras()">
			Ver gráfico barras
			</button>
				<br>
		<div class="col-xs-12">
			<div id="page-wrap">
				<table class="table03">
				<tbody>
					<tr class="titulo_tabla">
						<td>ORGANIZACIÓN POLÍTICA</td>
						<td style="width: 15%">TOTAL</td>
						<td style="width: 15%">% VOTOS VÁLIDOS</td>
						<td style="width: 15%">% VOTOS EMITIDOS</td>
					</tr>
					
																							<tr>
								<td><img width="40px" height="40px" src="images/simbolo_ppk/00000114.jpg" class="spaceimg">PERUANOS POR EL KAMBIO </td>
																	<td>304</td>
																											<td>29.980</td>
									<td>28.870</td>
															</tr>
																								<tr>
								<td><img width="40px" height="40px" src="images/simbolo_keyko/00000106.jpg" class="spaceimg">FUERZA POPULAR </td>
																	<td>710</td>
																											<td>70.020</td>
									<td>67.426</td>
															</tr>
															</tbody>
				</table>
			</div>
		</div>
		<div class="col-xs-12 pbot30">
			<div id="page-wrap">
				<table class="table23">
					<tbody>
						<tr>
							<td>TOTAL DE VOTOS VÁLIDOS</td>
							<td style="width: 15%">1,014</td>
															<td style="width: 15%">100.000</td>
																						<td style="width: 15%">96.296</td>
								
						</tr> 
						<tr>
							<td>VOTOS EN BLANCO</td>
							<td> 13</td>
							<td> &nbsp;</td>
															<td>1.235</td>
													</tr>
						<tr>
							<td>VOTOS NULOS</td>
							<td> 26</td>
							<td> &nbsp; </td>
															<td>2.469</td>
													</tr>
						<tr>
							<td> TOTAL DE VOTOS EMITIDOS</td>
							<td>							1,053
							</td>
							<td> &nbsp;</td>	
							<td> 
																	100.000
															</td>	
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-6 centered">
				<div class="col-xs-12 col-md-12 col-lg-12 cont-curv">
					<div class="col-xs-3 col-md-1">
						<span class="glyphicon glyphicon-info-sign ico-info" aria-hidden="true"></span>
					</div>

					<div class="col-xs-9 col-md-11">
						<ul>
							<li>Ciudadanos que votaron (CV): 1,053</li>
							<li>Electores hábiles (EH): 1,397</li>
							<li>Estos datos corresponden a las actas contabilizadas</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-12">
				<div class="col-xs-12 col-md-6">
					<div class="cuadro01">
						<table class="table04">
							<tbody>
								<tr>
									<td class="titulo_tabla_mostaza" colspan="2" style="padding:0px;font-weight: bold;">ACTAS</td>
								</tr>
								<tr>
									<td class="bold">ACTAS PROCESADAS * 100.000%</td>
									<td>5</td>
								</tr>
								<tr>
									<td>- Contabilizadas Normales (A)</td>
									<td>5</td>
								</tr>
								<tr>
									<td class="bold">ACTAS ENVIADAS AL JEE</td>
									<td></td>
								</tr>
								<tr>
									<td>- Con Votos Impugnados</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con Error Material</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con Ilegibilidad</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Incompleta</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con Solicitud de Nulidad</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta sin datos</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta Extraviada</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta Siniestrada</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Acta sin firmas</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Con más de un tipo de Observación</td>
									<td>0</td>
								</tr>
								<tr>
									<td class="bold">ANULADAS POR RESOLUCIÓN</td>
									<td></td>
								</tr>
								<tr>
									<td>- Contabilizadas anuladas (L)</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Actas de mesas no instaladas (M)</td>
									<td>0</td>
								</tr>
								<tr>
									<td>- Actas por procesar (0.000%)</td>
									<td>0</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-xs-12 col-md-6">
					<div class="cuadro01">
						<table class="table05">
							<thead>
								<tr>
									<th>MESAS A INSTALAR</th>
									<th style="text-align:center">5</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>MESAS INSTALADAS (N)</td>
									<td>5</td>
								</tr>
								<tr>
									<td>MESAS NO INSTALADAS (O)</td>
									<td>0</td>
								</tr>
								<tr>
									<td>MESAS POR INFORMAR (P)</td>
									<td>0</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="cuadro01">
						<table class="table05">
							<thead>
								<tr>
									<th colspan="2">INFORMACIÓN REFERENCIAL</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>MESAS AGRUPADAS</td>
									<td>0</td>
								</tr>
								<tr>
									<td>GRUPOS DE VOTACIÓN</td>
									<td>5</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="col-xs-12 col-md-12 col-lg-12 cont-curv1">
						<div class="col-xs-5 col-md-8">
							% Actas Contabilizadas * *
						</div>

						<div class="col-xs-7 col-md-4">
							<img src="images/formula01.jpg" class="img-responsive">
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 legend">
				<span>* Actas Procesadas: Todas aquellas actas que ingresaron al C.C. y pasaron por la digitación y verificación.</span>
				<br>
				<span>** Actas Contabilizadas: Todas aquellas actas cuyos votos han sido contabilizados.</span>
			</div>
		</div>
							
		<div id="dvResConAcordion" class="col-xs-12">
	<div class="panel-group ptop20" id="accordion" role="tablist" aria-multiselectable="true">
		<div class="panel panel-default">
			<div class="panel-heading" role="tab" id="headingOne">
				<h4 class="panel-title">
					<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span> GLOSARIO
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">
					<ul class="lista01">
						<li><b>ACTA CON VOTOS IMPUGNADOS:</b> Acta con votos impugnados.</li>
						<li><b>ACTA CON ERROR MATERIAL:</b> Con inconsistencias en los datos numéricos consignados.</li>
						<li><b>ACTA CON ILEGIBILIDAD:</b> Es aquella que contiene datos ilegibles.</li>
						<li><b>ACTA INCOMPLETA:</b> No consigna el total de ciudadanos que votaron.</li>
						<li><b>ACTA CON SOLICITUD DE NULIDAD:</b> Acta con solicitud de nulidad de la mesa, realizada de manera expresa en el espacio de observadores.</li>
						<li><b>ACTA SIN DATOS:</b> No se registran votos.</li>
						<li><b>ACTA EXTRAVIADA:</b> La que no llega a la ODPE y es declarada como tal por el Jefe de la ODPE.</li>
						<li><b>ACTA SINIESTRADA:</b> Acta que corresponde a una mesa de sufragio y que debido a hecho de violencia y/o atentado contra el Derecho al Sufragio que haya afectado el material electoral, no han podido ser entregadas a la ODPE o ingresadas al sistema de cómputo electoral para su procesamiento.</li>
						<li><b>ACTA SIN FIRMAS:</b> No se considera como acta observada cuando el acta de instalación, sufragio o escrutinio cuentan con por lo menos las firmas, el nombre y número de DNI de los tres miembros de mesa, en cualesquiera de estas, y en las otras dos restantes, los datos y las firmas de por lo menos dos miembros de la mesa.</li>
						<li><b>CON MÁS DE UNA OBSERVACIÓN:</b> Aquella acta que presenta alguna combinación de las observaciones anteriormente mencionadas.</li>
					</ul>
				</div>
			</div>
		</div>
		
	</div>

</div>

	

</div>

</form>
</div>
</div>

</div>
</div>
	</section>
</div>
<div id="divDetalle"></div>
		   <br>
		   <%@include file="WEB-INF/footer.jsp"%>
</body>
</html>
