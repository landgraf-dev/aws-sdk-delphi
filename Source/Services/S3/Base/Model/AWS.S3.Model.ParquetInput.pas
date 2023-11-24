unit AWS.S3.Model.ParquetInput;

interface

type
  TParquetInput = class;
  
  IParquetInput = interface
    function Obj: TParquetInput;
  end;
  
  TParquetInput = class
  strict protected
    function Obj: TParquetInput;
  end;
  
implementation

{ TParquetInput }

function TParquetInput.Obj: TParquetInput;
begin
  Result := Self;
end;

end.
