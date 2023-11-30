unit AWS.SNS.Model.PublishResponse;

interface

uses
  AWS.Runtime.Model, 
  AWS.Nullable;

type
  TPublishResponse = class;
  
  IPublishResponse = interface(IAmazonWebServiceResponse)
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetSequenceNumber: string;
    procedure SetSequenceNumber(const Value: string);
    function Obj: TPublishResponse;
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
  TPublishResponse = class(TAmazonWebServiceResponse, IPublishResponse)
  strict private
    FMessageId: Nullable<string>;
    FSequenceNumber: Nullable<string>;
    function GetMessageId: string;
    procedure SetMessageId(const Value: string);
    function GetSequenceNumber: string;
    procedure SetSequenceNumber(const Value: string);
  strict protected
    function Obj: TPublishResponse;
  public
    function IsSetMessageId: Boolean;
    function IsSetSequenceNumber: Boolean;
    property MessageId: string read GetMessageId write SetMessageId;
    property SequenceNumber: string read GetSequenceNumber write SetSequenceNumber;
  end;
  
implementation

{ TPublishResponse }

function TPublishResponse.Obj: TPublishResponse;
begin
  Result := Self;
end;

function TPublishResponse.GetMessageId: string;
begin
  Result := FMessageId.ValueOrDefault;
end;

procedure TPublishResponse.SetMessageId(const Value: string);
begin
  FMessageId := Value;
end;

function TPublishResponse.IsSetMessageId: Boolean;
begin
  Result := FMessageId.HasValue;
end;

function TPublishResponse.GetSequenceNumber: string;
begin
  Result := FSequenceNumber.ValueOrDefault;
end;

procedure TPublishResponse.SetSequenceNumber(const Value: string);
begin
  FSequenceNumber := Value;
end;

function TPublishResponse.IsSetSequenceNumber: Boolean;
begin
  Result := FSequenceNumber.HasValue;
end;

end.
