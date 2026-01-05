object dm_Conexao: Tdm_Conexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 585
  Top = 320
  Height = 286
  Width = 444
  object conConexao: TSQLConnection
    ConnectionName = 'SIE4'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=localhost:D:\EXTRATO\EXTRATO.FDB'
      'RoleName=RoleName'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 176
    Top = 40
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 72
    Top = 104
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 152
    Top = 104
  end
end
