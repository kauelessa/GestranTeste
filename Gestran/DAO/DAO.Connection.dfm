object DMConnection: TDMConnection
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object ConBD: TFDConnection
    Params.Strings = (
      'Database=Gestran_Teste'
      'Server=localhost'
      'DriverID=MSSQL'
      'OSAuthent=Yes')
    LoginPrompt = False
    Left = 256
    Top = 176
  end
end
