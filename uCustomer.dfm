object frmCustomer: TfrmCustomer
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cliente'
  ClientHeight = 322
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 58
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 18
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 345
    Top = 96
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 18
    Top = 135
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 174
    Top = 176
    Width = 80
    Height = 13
    Caption = 'Cidade'
  end
  object Label6: TLabel
    Left = 18
    Top = 176
    Width = 54
    Height = 13
    Caption = 'Estado'
  end
  object Label7: TLabel
    Left = 18
    Top = 217
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 18
    Top = 74
    Width = 400
    Height = 21
    DataField = 'name'
    DataSource = dsCustomer
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 18
    Top = 110
    Width = 322
    Height = 21
    DataField = 'address'
    DataSource = dsCustomer
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 345
    Top = 110
    Width = 73
    Height = 21
    DataField = 'number'
    DataSource = dsCustomer
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 19
    Top = 149
    Width = 400
    Height = 21
    DataField = 'district'
    DataSource = dsCustomer
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 18
    Top = 236
    Width = 150
    Height = 21
    DataField = 'phone'
    DataSource = dsCustomer
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 18
    Top = 192
    Width = 150
    Height = 21
    DataField = 'state'
    DataSource = dsCustomer
    KeyField = 'uf'
    ListField = 'estado'
    ListSource = dsState
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 174
    Top = 192
    Width = 244
    Height = 21
    DataField = 'city'
    DataSource = dsCustomer
    KeyField = 'ibge7'
    ListField = 'municipio'
    ListSource = dsCity
    TabOrder = 5
    OnEnter = DBLookupComboBox2Enter
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 41
    Align = alTop
    Caption = 'Dados do Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    ExplicitLeft = 56
    ExplicitTop = 32
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 278
    Width = 442
    Height = 44
    Align = alBottom
    TabOrder = 8
    ExplicitTop = 279
    object BitBtn1: TBitBtn
      Left = 241
      Top = 4
      Width = 95
      Height = 37
      Caption = '&Gravar'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F2B287F2B287F2B287F2B28A18283A18283A18283A18283
        A18283A18283A18283A18283A18283A18283A182837F2B287F2B287F2B287F2B
        28FF00FFFF00FFFF00FFFF00FF7F2B28B04E4CC24A4ABA4A49B441418B5959E2
        D9D9C9BDBDC4AFADE2CFCCF3EBE7F3EDEAE5DEDEDAE0DEDAE0DEB165647A1817
        822121A53939AD44457F2B28FF00FFFF00FFFF00FF7F2B28B4514FC24A4AC24E
        4EBB45468B3C3DE2D9D9791617791617AC4E4CF4E7E3FFFFFCFAF6F2EFF6F3EF
        F6F3B16564791515822020A93A3AB448487F2B28FF00FFFF00FFFF00FF7F2B28
        B2504EC24A4AC04D4DB844448C4040E2D9D9791617791617B25350E3D5D3FAF8
        F4FEF8F4FCFFFBFCFFFFB16564791515822020A73A3AB247477F2B28FF00FFFF
        00FFFF00FF7F2B28B2504EC24A4AC04D4DB743438F4141E2D9D9791617791617
        B25350CFC0BFEBEAE7FAF4F2FFFFFFFCFFFFB16564791515822020A73A3AB247
        477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D4DB74343914241E2
        D9D9791617791617B25350B0A09FD4D4D1EEE7E3FFFFFFFCFFFFB16564781414
        832020A73A3AB247477F2B28FF00FFFF00FFFF00FF7F2B28B2504EC24A4AC04D
        4DB54242934343E2D9D9791617791617B253508C8382A7AFADD3D4D0FCFFFFFC
        FFFFB16564741111801E1EA63939B247477F2B28FF00FFFF00FFFF00FF7F2B28
        B2504EC24A4ABF4C4CB744449C4141E2D9D9E2D9D9E2D9D9E2D9D9E2D9D9E2D9
        D9E2D9D9E2D9D9E2D9D9B16564831C1C8C2727AB3D3DB246477F2B28FF00FFFF
        00FFFF00FF7F2B28B2514EC24A4ABF4B4BBD4A49B74646BF5B5BCE7777D07B7B
        CC7475CE6E6FCB6C6CC76868C46868C05A5AB64443B44141B64343BD4949B145
        467F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AB24443B74B49BC5151BB
        504FBB4D4CBB4D4DBB4D4DBB4D4DBB4D4CBB4D4CBA4C4BBB504FC05857C15B5A
        C15757C14E4EB044457F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4ACA8C
        8ACA8C8ACB8F8CCC908ECC908ECC908ECC908ECC908ECC908ECC908FCC908FCC
        908FCC908ECC918FCB908EC05555C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AC24A4AD7B4B1FEFCFCFEFCFCFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFE
        FEFFFEFEFFFEFEFFFEFEFEFCFCFCFBFBDDB7B6B54B4BC24A4A7F2B28FF00FFFF
        00FFFF00FF7F2B28C24A4AC24A4AD9B8B6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B7B44948C24A
        4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFE
        DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
        B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AC24A4AD9B6B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF
        00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B44948C24A
        4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6B4FEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        DDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AC24A4AD9B6
        B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEDDB7B6B44948C24A4A7F2B28FF00FFFF00FFFF00FF7F2B28
        C24A4AC24A4AD9B7B5FEFEFEFEFEFEBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFFEFEFEFEFEFEDDB7B6B54A4AC24A4A7F2B28FF00FFFF
        00FFFF00FF7F2B28C24A4AC24A4AD3B1AFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDB8B6C24A4AC24A
        4A7F2B28FF00FFFF00FFFF00FFFF00FF7F2B287F2B28C1A09EFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        E0BAB77F2B287F2B28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 4
      Width = 88
      Height = 37
      Caption = '&Cancelar'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000FF00FF000000
        6E000000C8000007C9000000CC000008C9000009CC000014C8000015CC00031F
        C8000018CD000001D6000008D700000ED6000001D900000EDF000012D6000014
        D600001AD6000014D9000019DA000019DE000623C9000220CC000A28C9000121
        D7000020D9000428DC000004E1000006EA000008EA00000FEB000012EB000016
        EB000019EB00001EEB000020E700032AE700092FE0000021EB000024EB000129
        EB00022CEB00042CEB000E36E0000931EB000A36EB000C37EB000E39EB00143F
        E600123EEB001842E2001340EB001543EB001846EA0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000001010000000000000000000001010000000000000000000122
        05010000000000000000010E1C01000000000000000122222203010000000000
        00010B1E1E1D010000000000000113272222050100000000010B1E1D1E030100
        000000000000011122222205010000011C1E1E1E030100000000000000000001
        112722221101011C1D1D1E030100000000000000000000000111272222131D1E
        1D1E0E010000000000000000000000000001122722201E1E1E0E010000000000
        000000000000000000000115222022200D010000000000000000000000000000
        0000012427222222130100000000000000000000000000000001252927272722
        27110100000000000000000000000000011B2D29291512292727110100000000
        0000000000000001262D2D30190101122927271101000000000000000000012C
        3232301701000001082927271201000000000000000131353232170100000000
        0108292927150100000000000001363636170100000000000001082929150100
        000000000000013318010000000000000000010A190100000000000000000001
        0100000000000000000000010100000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object btnExcluir: TBitBtn
      Left = 140
      Top = 4
      Width = 95
      Height = 37
      Caption = '&Excluir'
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000FF00FF000280
        02000A85070013870B00138A0D00148B0E001F8D13001F9015002B9119002B93
        1C002C961E00389823003BA43000469D2D0048A7370066AA420084AC4E0093A3
        490086AD5100AABF6E00E6985100E79C5600E79E5800E99F5A00E9A05A00E9A1
        5C00EAA45F00F3A45B00F3A55C00F4A65E00EAA46100EAA56400EBA96700EBAD
        6600EDAF6700EDA96900EDAD6900EEAB6C00EAAF6D00EEAD6D00F4AA6400F6AC
        6600F6AD6800EEB16D00EEB46F00F7B06A00F7B26D00F7B46F00EFAF7200EEB1
        7100EAB27500EFB17500EEB47400EFB87700EFB57900EFB97A00EEB97D00EFBC
        7E00F0B27200F0B27400F8B77400F9B97600F0B57900F1B97900F2BA7D00F0BE
        7E00FABB7800FABF7E0099C16B009AC57200AAC17100ACC97B00EFBD8000EEBF
        8800F1BD8100F0BA8500F2BF8400F2BD8800ADCE8100AFD48900B0D99000C9C9
        9100F0C08200F6C08300FBC28300FCC48500F2C48900F2C68D00F3C98F00F3C4
        9000F3C49500F3CB9100F0C99500F4C99700F4CE9700FECC9100F3C69900F4CA
        9800F6D09700FFD19600F4D09900F6D39D00F6D49E00FED09800FFD39C00F6CE
        A400F3D3A300F6D0A100F6D5A100F6D5A400F7D8A400F8D8A300F8D8A700FFD9
        A600F2D7A900F6D5AC00F7DCAA00F8DDA900F8DDAD00EBDEB000F8DAB400F8DE
        B800F8E0AD00F2E5B500F8E1B100FFE0B200F8E0B500FFE1B600FAE5B500FBE9
        B700F2E7B800F2E7BD00FFE2B800FAE6B800FFE6BD00FAE9BB00FBEABC00FBED
        BF00DCE1C100DDE5C600E7E6C400FAE6C100F2EDC200FBEEC000FCEFC200FAED
        C500FFEDC700F2EBCA00F2EFCA00FBEBCA00FCEFCA00FCEFCC00FCF0C400F2F2
        CC00FEF6CB00FEF6CD00F2EED100F2F2D000F2F2D700FEF4D000FEF4D400FFFA
        D200FFFBD400F2F2D800F2F2DD00FEF5D800FFFBD800FFFCDC00F2F2E0000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        003E333E363636363036000000000000000000000000004A4A75858575756B61
        594A3E3E00000000000000000000337CA2A29B9085777978736B604A36000000
        00000000003E6BA2A2A2A29B90470D0D010311604A30000000000000002798A2
        A2A2A2A2A04E010101010151973E00000000000000275EA2A2A2A2A2A64F0101
        0912040C974D000000000000001E1B436E9BA2A6A6500101028B8B038D592700
        0000000027171B282D3C636B90454646138C9C449373300000000000271B1B28
        2D3D54677C0697A5070101019C83300000000000271B28283D3D546785090BA0
        A50201019E933600000000001E1B1B2D2D4354678512010407010101A49E5700
        00000027191B28283C3D54677890060101010101A49E6B27000000271B1B1B2A
        2D43545F7185970F09094E0EA4948227000000271B1B1B2A2027333333273338
        49616B7C9493822B0000001E1B1E33332A273338576573878272653838416541
        270027274A3319141619273357656E879AA2A2A2875E2B332700334119141414
        14202B38565E72879AA2A2A2A2A281412700411714141414161E2B3857657587
        9BA2A2A29BA2A2812B0054141414141416203338576575879BA2A2A2A2A2A29B
        2B00411E14141414191E3341576B7598A2A29BA2A2A2A26E2B00004A1E141414
        1920334A5B6E7C98A2A2A2A2A29B712B0000000041271714192035565E658190
        9BA2A2A271352B000000000000002B27202B3338576E7C87755E562B20000000
        000000000000000000202B222B202B222B2B0000000000000000}
      TabOrder = 2
      Visible = False
      OnClick = btnExcluirClick
    end
  end
  object dsCustomer: TDataSource
    DataSet = dmConnection.fdtClient
    Left = 290
    Top = 26
  end
  object dsState: TDataSource
    DataSet = dmConnection.fdtState
    Left = 338
    Top = 26
  end
  object dsCity: TDataSource
    DataSet = dmConnection.fdtCity
    Left = 394
    Top = 26
  end
end