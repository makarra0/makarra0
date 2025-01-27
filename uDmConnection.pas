﻿unit uDmConnection;

interface

uses
  Winapi.Messages, System.SysUtils, System.Classes, Data.DbxSqlite, Data.DB, Data.SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, inifiles, dialogs,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FMX.Dialogs, System.RegularExpressions, InscricaoFiscal;

type
  TdmConnection = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    fdqSearch: TFDQuery;
    fdtClient: TFDTable;
    fdtClientid: TFDAutoIncField;
    fdtClientname: TStringField;
    fdtClientaddress: TStringField;
    fdtClientnumber: TStringField;
    fdtClientdistrict: TStringField;
    fdtClientcity: TStringField;
    fdtClientstate: TStringField;
    fdtClientzip: TStringField;
    fdtClientcountry: TStringField;
    fdtClientphone: TStringField;
    fdtClienttype: TStringField;
    fdtClientcpf_cnpj: TStringField;
    fdtClientrg_ie: TStringField;
    fdtClientdata_cadastro: TDateField;
    fdtClientativo: TBooleanField;
    fdqSearchid: TFDAutoIncField;
    fdqSearchname: TStringField;
    fdqSearchaddress: TStringField;
    fdqSearchnumber: TStringField;
    fdqSearchdistrict: TStringField;
    fdqSearchcity: TStringField;
    fdqSearchstate: TStringField;
    fdqSearchzip: TStringField;
    fdqSearchcountry: TStringField;
    fdqSearchphone: TStringField;
    fdqSearchtype: TStringField;
    fdqSearchcpf_cnpj: TStringField;
    fdqSearchrg_ie: TStringField;
    fdqSearchdata_cadastro: TDateField;
    fdqSearchativo: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure fdtClientBeforePost(DataSet: TDataSet);
    function ValidarCPF_CNPJ(documento : string; indice : integer; exibemsg : boolean) : String;
    procedure fdqSearchcpf_cnpjGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdqSearchtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure fdqSearchativoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConnection: TdmConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConnection.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.DriverName  :=  'SQLITE' ;
  FDConnection1.Params.Values[ 'Database' ] :=
    'C:\Clientes\dbClient.sdb';
  try
    FDConnection1.Open;
  except
    on E :  EDatabaseError  do
      ShowMessage( 'Exceção gerada com mensagem  ' +  E.Message );
  end
end;

procedure TdmConnection.DataModuleDestroy(Sender: TObject);
begin
  FDConnection1.Close;
end;

procedure TdmConnection.fdqSearchativoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if  Sender.DataSet.FieldByName('ativo').AsBoolean = True then
      Text := 'Sim'
  else
      Text := 'Não';
end;

procedure TdmConnection.fdqSearchcpf_cnpjGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if  Sender.AsString <> '' then
    begin
      if  Sender.DataSet.FieldByName('type').AsString = 'F' then
          Text := FormatFloat( '0##"."###"."###"-"##', StrToFloatDef(Sender.AsString, 0) )
      else
          Text := FormatFloat( '0#"."###"."###"/"####"-"##', StrToFloatDef(Sender.AsString, 0) );
    end;
end;

procedure TdmConnection.fdqSearchtypeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if  Sender.AsString <> '' then
  begin
    if  Sender.DataSet.FieldByName('type').AsString = 'F' then
        Text := 'Física'
    else
        Text := 'Jurídica';
  end;
end;

procedure TdmConnection.fdtClientBeforePost(DataSet: TDataSet);
begin
  if ((length(Trim(DataSet.FieldByName('name').AsString)) < 3) and
     (length(Trim(DataSet.FieldByName('name').AsString)) > 200)) or
     (Trim(DataSet.FieldByName('name').AsString) = '') then
  begin

    DataSet.FieldByName('name').FocusControl;

    DatabaseError('Nome não deve ser menor que 3 ou maior que 200 caracter ou em branco');

  end;

  if (length(DataSet.FieldByName('address').AsString) < 3) and
     (length(DataSet.FieldByName('address').AsString) > 200) or
     (Trim(DataSet.FieldByName('address').AsString) = '') then
  begin

    DataSet.FieldByName('address').FocusControl;

    DatabaseError('Endereço não deve ser menor que 3 ou maior que 200 caracter ou em branco, favor informar');

  end;

  if (length(DataSet.FieldByName('number').AsString) < 3) and
     (length(DataSet.FieldByName('number').AsString) > 50) or
     (Trim(DataSet.FieldByName('number').AsString) = '') then
  begin

    DataSet.FieldByName('number').FocusControl;

    DatabaseError('Número não deve ser menor que 3 ou maior que 200 caracter ou em branco, favor informar');

  end;

  if (length(DataSet.FieldByName('district').AsString) < 3) and
     (length(DataSet.FieldByName('district').AsString) > 50) or
     (Trim(DataSet.FieldByName('district').AsString) = '') then
  begin

    DataSet.FieldByName('district').FocusControl;

    DatabaseError('Bairro não deve ser menor que 3 ou maior que 200 caracter ou em branco, favor informar');

  end;

  if (length(DataSet.FieldByName('phone').AsString) < 9) or
     (Trim(DataSet.FieldByName('phone').AsString) = '') then
  begin

    DataSet.FieldByName('phone').FocusControl;

    DatabaseError(
      'Telefone não deve ser menor que 3 ou maior que 200 caracter ou em branco, favor informar');
  end;

end;

function TdmConnection.ValidarCPF_CNPJ(documento: string; indice: integer;
  exibemsg: boolean): String;
var
  cpf_cnpj: TInscricaoFiscal;
begin
  Result := '';
  cpf_cnpj := nil;

  try
    case indice of
      0 : cpf_cnpj := TCPF.Create;
      1 : cpf_cnpj := TCNPJ.Create;
    end;

    if not Assigned(cpf_cnpj) then
      Result := 'O tipo de pessoa não foi definido';

    if Assigned(cpf_cnpj) and not cpf_cnpj.DocumentoValido( documento ) then
      Result := 'Documento inválido';
  finally
    if Assigned(cpf_cnpj) then
      cpf_cnpj.Free;
  end;

  if (Result <> '') and (exibemsg = True) then
    messagedlg(Result, mtwarning, [mbok], 0);
end;
end.
