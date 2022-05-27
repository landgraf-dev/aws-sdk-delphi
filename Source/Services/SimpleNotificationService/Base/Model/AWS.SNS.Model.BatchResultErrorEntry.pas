unit AWS.SNS.Model.BatchResultErrorEntry;

interface

uses
  Bcl.Types.Nullable;

type
  TBatchResultErrorEntry = class;
  
  IBatchResultErrorEntry = interface
    function GetCode: string;
    procedure SetCode(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetSenderFault: Boolean;
    procedure SetSenderFault(const Value: Boolean);
    function Obj: TBatchResultErrorEntry;
    function IsSetCode: Boolean;
    function IsSetId: Boolean;
    function IsSetMessage: Boolean;
    function IsSetSenderFault: Boolean;
    property Code: string read GetCode write SetCode;
    property Id: string read GetId write SetId;
    property Message: string read GetMessage write SetMessage;
    property SenderFault: Boolean read GetSenderFault write SetSenderFault;
  end;
  
  TBatchResultErrorEntry = class
  strict private
    FCode: Nullable<string>;
    FId: Nullable<string>;
    FMessage: Nullable<string>;
    FSenderFault: Nullable<Boolean>;
    function GetCode: string;
    procedure SetCode(const Value: string);
    function GetId: string;
    procedure SetId(const Value: string);
    function GetMessage: string;
    procedure SetMessage(const Value: string);
    function GetSenderFault: Boolean;
    procedure SetSenderFault(const Value: Boolean);
  strict protected
    function Obj: TBatchResultErrorEntry;
  public
    function IsSetCode: Boolean;
    function IsSetId: Boolean;
    function IsSetMessage: Boolean;
    function IsSetSenderFault: Boolean;
    property Code: string read GetCode write SetCode;
    property Id: string read GetId write SetId;
    property Message: string read GetMessage write SetMessage;
    property SenderFault: Boolean read GetSenderFault write SetSenderFault;
  end;
  
implementation

{ TBatchResultErrorEntry }

function TBatchResultErrorEntry.Obj: TBatchResultErrorEntry;
begin
  Result := Self;
end;

function TBatchResultErrorEntry.GetCode: string;
begin
  Result := FCode.ValueOrDefault;
end;

procedure TBatchResultErrorEntry.SetCode(const Value: string);
begin
  FCode := Value;
end;

function TBatchResultErrorEntry.IsSetCode: Boolean;
begin
  Result := FCode.HasValue;
end;

function TBatchResultErrorEntry.GetId: string;
begin
  Result := FId.ValueOrDefault;
end;

procedure TBatchResultErrorEntry.SetId(const Value: string);
begin
  FId := Value;
end;

function TBatchResultErrorEntry.IsSetId: Boolean;
begin
  Result := FId.HasValue;
end;

function TBatchResultErrorEntry.GetMessage: string;
begin
  Result := FMessage.ValueOrDefault;
end;

procedure TBatchResultErrorEntry.SetMessage(const Value: string);
begin
  FMessage := Value;
end;

function TBatchResultErrorEntry.IsSetMessage: Boolean;
begin
  Result := FMessage.HasValue;
end;

function TBatchResultErrorEntry.GetSenderFault: Boolean;
begin
  Result := FSenderFault.ValueOrDefault;
end;

procedure TBatchResultErrorEntry.SetSenderFault(const Value: Boolean);
begin
  FSenderFault := Value;
end;

function TBatchResultErrorEntry.IsSetSenderFault: Boolean;
begin
  Result := FSenderFault.HasValue;
end;

end.
