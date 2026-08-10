%dw 2.0
output application/json

var tipo1 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Global_Comuna_Zona_de_transporte__c == value.Valor_Salesforce__c and value.Tipo__c == "1"))[0].Valor_SAP__c default ""
var tipo2 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Pais__c == value.Valor_Salesforce__c and value.Tipo__c == "2"))[0].Valor_SAP__c default ""
var tipo3 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Global_regi_n__c == value.Valor_Salesforce__c and value.Tipo__c == "3"))[0].Valor_SAP__c default ""
var tipo4 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Cond_Pago__c == value.Valor_Salesforce__c and value.Tipo__c == "4"))[0].Valor_SAP__c default ""
var tipo511 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_1_1__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default ""
var tipo512 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_1_2__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default ""
var tipo521 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_2_1__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default ""
var tipo522 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_2_2__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default ""
var tipo531 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_3_1__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default ""
var tipo532 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Canal_3_2__c == value.Valor_Salesforce__c and value.Tipo__c == "5"))[0].Valor_SAP__c default ""
var tipo6 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Zona_de_Venta__c == value.Valor_Salesforce__c and value.Tipo__c == "6"))[0].Valor_SAP__c default ""
var tipo7 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Ramo_c__c == value.Valor_Salesforce__c and value.Tipo__c == "7"))[0].Valor_SAP__c default ""
var tipo8 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.C_digo_Ramo_global__c == value.Valor_Salesforce__c and value.Tipo__c == "8"))[0].Valor_SAP__c default ""
var tipo91 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Oficina_de_Venta_1__c == value.Valor_Salesforce__c and value.Tipo__c == "9"))[0].Valor_SAP__c default ""
var tipo92 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Oficina_de_Venta_2__c == value.Valor_Salesforce__c and value.Tipo__c == "9"))[0].Valor_SAP__c default ""
var tipo93 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Oficina_de_Venta_3__c == value.Valor_Salesforce__c and value.Tipo__c == "9"))[0].Valor_SAP__c default ""
var tipo10 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Incoterms__c == value.Valor_Salesforce__c and value.Tipo__c == "10"))[0].Valor_SAP__c default ""
var tipo111 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Grupo_de_cliente__c == value.Valor_Salesforce__c and value.Tipo__c == "11"))[0].Valor_SAP__c default ""
var tipo112 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Grupo_de_cliente_Distribuidor__c == value.Valor_Salesforce__c and value.Tipo__c == "11"))[0].Valor_SAP__c default ""
var tipo16 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Grupo_Estad_stico_Clientes__c == value.Valor_Salesforce__c and value.Tipo__c == "16"))[0].Valor_SAP__c default ""
var tipo17 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.VLC_Codigo_SAP_Usuario__c == value.Valor_Salesforce__c and value.Tipo__c == "17"))[0].Valor_SAP__c default ""
var tipo19 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Grupo_Imputaci_n__c == value.Valor_Salesforce__c and value.Tipo__c == "19"))[0].Valor_SAP__c default ""
var tipo20 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Prioridad_Entrega__c == value.Valor_Salesforce__c and value.Tipo__c == "20"))[0].Valor_SAP__c default ""
var tipo21 = (vars.sfTipo filter (value,index) -> (vars.sfRecord.Condici_n_Expedici_n__c == value.Valor_Salesforce__c and value.Tipo__c == "21"))[0].Valor_SAP__c default ""

---
{
	"objectType": vars.objectType,
    "Rut__c": vars.sfRecord.Rut__c,
    "Global_Comuna_Zona_de_transporte__c": tipo1,
    "Global_Comuna_Zona_de_transporte__c_original": vars.sfRecord.Global_Comuna_Zona_de_transporte__c,
    "Grupo_de_Vendedores__c": vars.sfRecord.Grupo_de_Vendedores__c,
    "Name": vars.sfRecord.Name,
    "Nombre_de_Fantasia__c": vars.sfRecord.Nombre_de_Fantasia__c,
    "Concepto_de_B_squeda_1__c": vars.sfRecord.Concepto_de_B_squeda_1__c,
    "Concepto_de_B_squeda_2__c": vars.sfRecord.Concepto_de_B_squeda_2__c,
    "Tratamiento__c": vars.sfRecord.Tratamiento__c,
    "VLC_Calle_Direccion__c": vars.sfRecord.VLC_Calle_Direccion__c default "",
    "VLC_Numero_Direccion__c": vars.sfRecord.VLC_Numero_Direccion__c default "",
    "Pais__c": tipo2,
    "VLC_Codigo_SAP_Usuario__c": tipo17,
    "Ramo_c__c": tipo7,
    "C_digo_Ramo_global__c": tipo8,
    "Global_regi_n__c": tipo3,
    "Organizaci_n_1__c": vars.sfRecord.Organizaci_n_1__c,
    "Organizaci_n_2__c": vars.sfRecord.Organizaci_n_2__c,
    "Organizaci_n_3__c": vars.sfRecord.Organizaci_n_3__c,
    "Canal_1_1__c": tipo511,
    "Canal_1_2__c": tipo512,
    "Canal_2_1__c": tipo521,
    "Canal_2_2__c": tipo522,
    "Canal_3_1__c": tipo531,
    "Canal_3_2__c": tipo532,
    "Grupo_de_cliente__c": tipo111,
    "Grupo_de_cliente_Distribuidor__c": tipo112,
    "Cond_Pago__c": tipo4,
    "Oficina_de_Venta_1__c": tipo91,
    "Oficina_de_Venta_2__c": tipo92,
    "Oficina_de_Venta_3__c": tipo93,
    "Grupo_Estad_stico_Clientes__c": tipo16,
    "Zona_de_Venta__c": tipo6,
    "Incoterms__c": tipo10,
    "Incoterms_parte_2__c": vars.sfRecord.Incoterms_parte_2__c,
    "Grupo_Imputaci_n__c": tipo19,
    "Condici_n_Expedici_n__c": tipo21,
    "Prioridad_Entrega__c": tipo20,
    "Clasificaci_n_ABC__c": vars.sfRecord.Clasificaci_n_ABC__c,
    "Cuenta_contable_asociada__c": vars.sfRecord.Cuenta_contable_asociada__c,
    "Grupo_de_tesorer_a__c": vars.sfRecord.Grupo_de_tesorer_a__c
}