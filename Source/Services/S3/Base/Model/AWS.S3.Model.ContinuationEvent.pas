unit AWS.S3.Model.ContinuationEvent;

interface

type
  TContinuationEvent = class;
  
  IContinuationEvent = interface
    function Obj: TContinuationEvent;
  end;
  
  TContinuationEvent = class
  strict protected
    function Obj: TContinuationEvent;
  end;
  
implementation

{ TContinuationEvent }

function TContinuationEvent.Obj: TContinuationEvent;
begin
  Result := Self;
end;

end.
