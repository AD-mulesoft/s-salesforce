%dw 2.0
output application/json

var tipo1 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Global_Comuna_Zona_de_transporte__c == value.Valor_Salesforce__c and value.Tipo__c == "1"))[0].Valor_SAP__c default "ELIMINAR"
var tipo3 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Global_regi_n__c == value.Valor_Salesforce__c and value.Tipo__c == "3"))[0].Valor_SAP__c default "ELIMINAR"
var tipo4 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Cond_Pago__c == value.Valor_Salesforce__c and value.Tipo__c == "4"))[0].Valor_SAP__c default "ELIMINAR"
var tipo511 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_1_1__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default "ELIMINAR"
var tipo512 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_1_2__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default "ELIMINAR"
var tipo521 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_2_1__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default "ELIMINAR"
var tipo522 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_2_2__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default "ELIMINAR"
var tipo531 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_3_1__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default "ELIMINAR"
var tipo532 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_3_2__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default "ELIMINAR"
var tipo7 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Ramo__c == value.Valor_Salesforce__c and value.Tipo__c == "7"))[0].Valor_SAP__c default "ELIMINAR"
var tipo8 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.C_digo_Ramo_global__c == value.Valor_Salesforce__c and value.Tipo__c == "8"))[0].Valor_SAP__c default "ELIMINAR"
var tipo91 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Oficina_de_Venta_1__c == value.Valor_Salesforce__c and value.Tipo__c == "9"))[0].Valor_SAP__c default "ELIMINAR"
var tipo92 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Oficina_de_Venta_2__c == value.Valor_Salesforce__c and value.Tipo__c == "9"))[0].Valor_SAP__c default "ELIMINAR"
var tipo93 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Oficina_de_Venta_3__c == value.Valor_Salesforce__c and value.Tipo__c == "9"))[0].Valor_SAP__c default "ELIMINAR"
var tipo111 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Grupo_de_Clientes__c == value.Valor_Salesforce__c and value.Tipo__c == "11"))[0].Valor_SAP__c default "ELIMINAR"
var tipo112 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Grupo_de_cliente_Distribuidor__c == value.Valor_Salesforce__c and value.Tipo__c == "11"))[0].Valor_SAP__c default "ELIMINAR"
var tipo17 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.VLC_Codigo_SAP_Usuario__c == value.Valor_Salesforce__c and value.Tipo__c == "17"))[0].Valor_SAP__c default "ELIMINAR"
var tipo20 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Prioridad_Entrega__c == value.Valor_Salesforce__c and value.Tipo__c == "20"))[0].Valor_SAP__c default "ELIMINAR"

---
{
	"objectType": vars.objectType,
    "Cod_Cliente__c": if(vars.sfRecord.Cod_Cliente__c? and isEmpty(vars.sfRecord.Cod_Cliente__c)) "ELIMINAR" else vars.sfRecord.Cod_Cliente__c default "",
    "Global_Comuna_Zona_de_transporte__c": if(vars.sfRecord.Global_Comuna_Zona_de_transporte__c? and isEmpty(vars.sfRecord.Global_Comuna_Zona_de_transporte__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Global_Comuna_Zona_de_transporte__c)) tipo1 else "",
    "Global_Comuna_Zona_de_transporte__c_original": if(vars.sfRecord.Global_Comuna_Zona_de_transporte__c? and isEmpty(vars.sfRecord.Global_Comuna_Zona_de_transporte__c)) "ELIMINAR" else vars.sfRecord.Global_Comuna_Zona_de_transporte__c default "",
    "Name": if(vars.sfRecord.Name? and isEmpty(vars.sfRecord.Name)) "ELIMINAR" else vars.sfRecord.Name default "",
    "Nombre_de_Fantasia__c": if(vars.sfRecord.Nombre_de_Fantasia__c? and isEmpty(vars.sfRecord.Nombre_de_Fantasia__c)) "ELIMINAR" else vars.sfRecord.Nombre_de_Fantasia__c default "",
    "Concepto_de_B_squeda_1__c": if(vars.sfRecord.Concepto_de_B_squeda_1__c? and isEmpty(vars.sfRecord.Concepto_de_B_squeda_1__c)) "ELIMINAR" else vars.sfRecord.Concepto_de_B_squeda_1__c default "",
    "Concepto_de_B_squeda_2__c": if(vars.sfRecord.Concepto_de_B_squeda_2__c? and isEmpty(vars.sfRecord.Concepto_de_B_squeda_2__c)) "ELIMINAR" else vars.sfRecord.Concepto_de_B_squeda_2__c default "",
    "VLC_Calle_Direccion__c": if(vars.sfRecord.VLC_Calle_Direccion__c? and isEmpty(vars.sfRecord.VLC_Calle_Direccion__c)) "ELIMINAR" else vars.sfRecord.VLC_Calle_Direccion__c default "",
    "VLC_Numero_Direccion__c": if(vars.sfRecord.VLC_Numero_Direccion__c? and isEmpty(vars.sfRecord.VLC_Numero_Direccion__c)) "ELIMINAR" else vars.sfRecord.VLC_Numero_Direccion__c default "",
    "VLC_Codigo_SAP_Usuario__c": if(vars.sfRecord.VLC_Codigo_SAP_Usuario__c? and isEmpty(vars.sfRecord.VLC_Codigo_SAP_Usuario__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.VLC_Codigo_SAP_Usuario__c)) tipo17 else "",
    "Ramo__c": if(vars.sfRecord.Ramo_c__c? and isEmpty(vars.sfRecord.Ramo_c__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Ramo_c__c)) tipo7 else "",
    "C_digo_Ramo_global__c": if(vars.sfRecord.C_digo_Ramo_global__c? and isEmpty(vars.sfRecord.C_digo_Ramo_global__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.C_digo_Ramo_global__c)) tipo8 else "",
    "Global_regi_n__c": if(vars.sfRecord.Global_regi_n__c? and isEmpty(vars.sfRecord.Global_regi_n__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Global_regi_n__c)) tipo3 else "",
    "Organizaci_n_1__c": if(vars.sfRecord.Organizaci_n_1__c? and isEmpty(vars.sfRecord.Organizaci_n_1__c)) "ELIMINAR" else vars.sfRecord.Organizaci_n_1__c default "",
    "Organizaci_n_2__c": if(vars.sfRecord.Organizaci_n_2__c? and isEmpty(vars.sfRecord.Organizaci_n_2__c)) "ELIMINAR" else vars.sfRecord.Organizaci_n_2__c default "",
    "Organizaci_n_3__c": if(vars.sfRecord.Organizaci_n_3__c? and isEmpty(vars.sfRecord.Organizaci_n_3__c)) "ELIMINAR" else vars.sfRecord.Organizaci_n_3__c default "",
    "Canal_1_1__c": if(vars.sfRecord.Canal_1_1__c? and isEmpty(vars.sfRecord.Canal_1_1__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Canal_1_1__c)) tipo511 else "",
    "Canal_1_2__c": if(vars.sfRecord.Canal_1_2__c? and isEmpty(vars.sfRecord.Canal_1_2__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Canal_1_2__c)) tipo512 else "",
    "Canal_2_1__c": if(vars.sfRecord.Canal_2_1__c? and isEmpty(vars.sfRecord.Canal_2_1__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Canal_2_1__c)) tipo521 else "",
    "Canal_2_2__c": if(vars.sfRecord.Canal_2_2__c? and isEmpty(vars.sfRecord.Canal_2_2__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Canal_2_2__c)) tipo522 else "",
    "Canal_3_1__c": if(vars.sfRecord.Canal_3_1__c? and isEmpty(vars.sfRecord.Canal_3_1__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Canal_3_1__c)) tipo531 else "",
    "Canal_3_2__c": if(vars.sfRecord.Canal_3_2__c? and isEmpty(vars.sfRecord.Canal_3_2__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Canal_3_2__c)) tipo532 else "",
    "Grupo_de_Clientes__c": if(vars.sfRecord.Grupo_de_Clientes__c? and isEmpty(vars.sfRecord.Grupo_de_Clientes__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Grupo_de_Clientes__c)) tipo111 else "",
    "Grupo_de_cliente_Distribuidor__c": if(vars.sfRecord.Grupo_de_cliente_Distribuidor__c? and isEmpty(vars.sfRecord.Grupo_de_cliente_Distribuidor__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Grupo_de_cliente_Distribuidor__c)) tipo112 else "",
    "Cond_Pago__c": if(vars.sfRecord.Cond_Pago__c? and isEmpty(vars.sfRecord.Cond_Pago__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Cond_Pago__c)) tipo4 else "",
    "Oficina_de_Venta_1__c": if(vars.sfRecord.Oficina_de_Venta_1__c? and isEmpty(vars.sfRecord.Oficina_de_Venta_1__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Oficina_de_Venta_1__c)) tipo91 else "",
    "Oficina_de_Venta_2__c": if(vars.sfRecord.Oficina_de_Venta_2__c? and isEmpty(vars.sfRecord.Oficina_de_Venta_2__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Oficina_de_Venta_2__c)) tipo92 else "",
    "Oficina_de_Venta_3__c": if(vars.sfRecord.Oficina_de_Venta_3__c? and isEmpty(vars.sfRecord.Oficina_de_Venta_3__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Oficina_de_Venta_3__c)) tipo93 else "",
    "Incoterms_parte_2__c": if(vars.sfRecord.Incoterms_parte_2__c? and isEmpty(vars.sfRecord.Incoterms_parte_2__c)) "ELIMINAR" else vars.sfRecord.Incoterms_parte_2__c default "",
    "Prioridad_Entrega__c": if(vars.sfRecord.Prioridad_Entrega__c? and isEmpty(vars.sfRecord.Prioridad_Entrega__c)) "ELIMINAR" else if(!isEmpty(vars.sfRecord.Prioridad_Entrega__c)) tipo20 else ""
}