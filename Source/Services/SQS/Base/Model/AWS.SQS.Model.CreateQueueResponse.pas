unit AWS.SQS.Model.CreateQueueResponse;

interface

uses
  Bcl.Types.Nullable, 
  AWS.Runtime.Model;

type
  TCreateQueueResponse = class;
  
  ICreateQueueResponse = interface
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
    function Obj: TCreateQueueResponse;
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
  TCreateQueueResponse = class(TAmazonWebServiceResponse, ICreateQueueResponse)
  strict private
    FQueueUrl: Nullable<string>;
    function GetQueueUrl: string;
    procedure SetQueueUrl(const Value: string);
  strict protected
    function Obj: TCreateQueueResponse;
  public
    function IsSetQueueUrl: Boolean;
    property QueueUrl: string read GetQueueUrl write SetQueueUrl;
  end;
  
implementation

{ TCreateQueueResponse }

function TCreateQueueResponse.Obj: TCreateQueueResponse;
begin
  Result := Self;
end;

function TCreateQueueResponse.GetQueueUrl: string;
begin
  Result := FQueueUrl.ValueOrDefault;
end;

procedure TCreateQueueResponse.SetQueueUrl(const Value: string);
begin
  FQueueUrl := Value;
end;

function TCreateQueueResponse.IsSetQueueUrl: Boolean;
begin
  Result := FQueueUrl.HasValue;
end;

end.
