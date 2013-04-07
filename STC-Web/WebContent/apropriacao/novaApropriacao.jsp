<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/pages/header.jsp"></jsp:include>
<script src="/stc/js/stcNovaApropriacao.js"></script>
<script src="/stc/js/jquery.maskMoney.js"></script>

<body>
	<!-- TOP MENU -->
	<jsp:include page="/pages/topMenu.jsp"></jsp:include>

	<!-- CONTEUDO -->
	<div id="body">
		<div>
			<h1>Nova Apropriação</h1>
			<hr class="stcHR1">
		</div>
		<div id="conteudo">
			<div id="divForm">
				<form name="formApropriacao" method="POST" action="textInput.jsp"
					class="stcFormApropriacao">
					<table width="60%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>Data Entrada</td>
							<td>Data Documento</td>
						</tr>
						<tr>
							<td><input type="text" id="dataEntrada" class="stcInput" /></td>
							<td><input type="text" id="dataDocumento" class="stcInput" /></td>
						</tr>
						<tr>
							<td style="vertical-align: top;">Setor</td>
							<td style="vertical-align: top;">Tipo Documento</td>
							<td style="vertical-align: top;">Forma Pgto.</td>
						</tr>
						<tr>
							<td style="vertical-align: top;"><select id="comboSetor"
								size="1" name="comboSetor" class="stcCombo">
									<option selected value="0">Ed. Nair Ataíde</option>
									<option value="1">Ed. Blue Diamond</option>
									<option value="2">Integral - Ouro Branco</option>
							</select></td>
							<td style="vertical-align: top;"><input type="radio"
								id="radioTipoDoc" value="contabil" checked="checked" />
								Contábil <br> <input type="radio" id="radioTipoDoc"
								value="naoContabil" /> Não Contábil</td>
							<td style="vertical-align: top;"><select id="comboPgto"
								size="1" name="comboPgto" class="stcCombo">
									<option selected value="aVista">À Vista</option>
									<option value="prazo">Prazo</option>
									<option value="entradaPrazo">Entrada + Prazo</option>
							</select></td>
						</tr>
						<tr>
							<td colspan="3">
								<div id="divPrazo" class="stcDivPrazo">
									<h3 style="margin: 0;">Prazo</h3>
									<hr class="stcHR2">
									<p style="margin: 5px;">Nº de Parcelas</p>
									<input type="text" id="numParcelasPrazo"
										style="margin-left: 5px;" class="stcInput" />
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<div id="divEntradaPrazo" class="stcDivPrazo">
									<h3 style="margin: 0;">Entrada + Parcelas</h3>
									<hr class="stcHR2">

									<table>
										<tr>
											<td>Entrada</td>
											<td>Nº de Parcelas</td>
										</tr>
										<tr>
											<td><input type="text" id="vrEntrada" class="stcInput"
												style="margin-right: 15px;" /></td>
											<td><input type="text" id="numParcelasEntrada"
												class="stcInput" /></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td>Valor</td>
						</tr>
						<tr>
							<td><input type="text" id="valorDoc" class="stcInput"/></td>
							<td style="vertical-align: top;"><input type="radio"
								id="radioCredito" value="credito" /> Crédito <input
								type="radio" id="radioDebito" value="debito" checked="checked" />
								Débito</td>
						</tr>
						<tr>
							<td>Descrição</td>
						</tr>
						<tr>
							<td colspan="3"><textarea id="descricao" rows="4" cols="50"
									class="stcArea"></textarea></td>
						</tr>
						<tr>
							<td><input id="btnLancar" type="submit" name="submit"
								value="Lançar" class="stcCSS3"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>


	<!-- RODAPE -->
	<jsp:include page="/pages/rodape.jsp"></jsp:include>

	<script type="text/javascript">
		jQuery(document).ready(function() {
			var currentDate = new Date();
			$("#dataEntrada").datepicker("setDate", currentDate);
			comboPgtoEvent();
			$("#comboPgto").change(function() {
				comboPgtoEvent();
			});
			$("#valorDoc").maskMoney({symbol:"R$",decimal:",",thousands:"."});
			$("#vrEntrada").maskMoney({symbol:"R$",decimal:",",thousands:"."});
		});
	</script>
</body>
</html>