unit AWS.S3.Model.EndEvent;

interface

type
  TEndEvent = class;
  
  IEndEvent = interface
    function Obj: TEndEvent;
  end;
  
  TEndEvent = class
  strict protected
    function Obj: TEndEvent;
  end;
  
implementation

{ TEndEvent }

function TEndEvent.Obj: TEndEvent;
begin
  Result := Self;
end;

end.
