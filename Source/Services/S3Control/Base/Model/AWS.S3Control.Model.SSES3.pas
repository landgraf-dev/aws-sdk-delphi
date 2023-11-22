unit AWS.S3Control.Model.SSES3;

interface

type
  TSSES3 = class;
  
  ISSES3 = interface
    function Obj: TSSES3;
  end;
  
  TSSES3 = class
  strict protected
    function Obj: TSSES3;
  end;
  
implementation

{ TSSES3 }

function TSSES3.Obj: TSSES3;
begin
  Result := Self;
end;

end.
