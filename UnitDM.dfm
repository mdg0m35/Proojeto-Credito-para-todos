object dm: Tdm
  OldCreateOrder = False
  Height = 300
  Width = 443
  object conexao: TFDConnection
    Params.Strings = (
      'OpenMode=ReadWrite'
      
        'Database=C:\Users\Marcos David\Desktop\ProjetoSerasa\BD\Creditos' +
        'PT.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 120
  end
  object FDCadastro: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cadastro')
    Left = 216
    Top = 184
    object FDCadastronome: TWideMemoField
      FieldName = 'nome'
      Origin = 'nome'
      BlobType = ftWideMemo
    end
    object FDCadastrorg: TWideMemoField
      FieldName = 'rg'
      Origin = 'rg'
      BlobType = ftWideMemo
    end
    object FDCadastrocpf: TWideMemoField
      FieldName = 'cpf'
      Origin = 'cpf'
      BlobType = ftWideMemo
    end
    object FDCadastrodatanascimento: TWideMemoField
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
      BlobType = ftWideMemo
    end
    object FDCadastrorenda: TWideMemoField
      FieldName = 'renda'
      Origin = 'renda'
      BlobType = ftWideMemo
    end
    object FDCadastroparcelas: TWideMemoField
      FieldName = 'parcelas'
      Origin = 'parcelas'
      BlobType = ftWideMemo
    end
    object FDCadastrovaloremprestimo: TWideMemoField
      FieldName = 'valoremprestimo'
      Origin = 'valoremprestimo'
      BlobType = ftWideMemo
    end
  end
end
