unit AWS.SES.Model.BouncedRecipientInfo;

interface

uses
  AWS.Nullable, 
  AWS.SES.Enums, 
  AWS.SES.Model.RecipientDsnFields;

type
  TBouncedRecipientInfo = class;
  
  IBouncedRecipientInfo = interface
    function GetBounceType: TBounceType;
    procedure SetBounceType(const Value: TBounceType);
    function GetRecipient: string;
    procedure SetRecipient(const Value: string);
    function GetRecipientArn: string;
    procedure SetRecipientArn(const Value: string);
    function GetRecipientDsnFields: TRecipientDsnFields;
    procedure SetRecipientDsnFields(const Value: TRecipientDsnFields);
    function GetKeepRecipientDsnFields: Boolean;
    procedure SetKeepRecipientDsnFields(const Value: Boolean);
    function Obj: TBouncedRecipientInfo;
    function IsSetBounceType: Boolean;
    function IsSetRecipient: Boolean;
    function IsSetRecipientArn: Boolean;
    function IsSetRecipientDsnFields: Boolean;
    property BounceType: TBounceType read GetBounceType write SetBounceType;
    property Recipient: string read GetRecipient write SetRecipient;
    property RecipientArn: string read GetRecipientArn write SetRecipientArn;
    property RecipientDsnFields: TRecipientDsnFields read GetRecipientDsnFields write SetRecipientDsnFields;
    property KeepRecipientDsnFields: Boolean read GetKeepRecipientDsnFields write SetKeepRecipientDsnFields;
  end;
  
  TBouncedRecipientInfo = class
  strict private
    FBounceType: Nullable<TBounceType>;
    FRecipient: Nullable<string>;
    FRecipientArn: Nullable<string>;
    FRecipientDsnFields: TRecipientDsnFields;
    FKeepRecipientDsnFields: Boolean;
    function GetBounceType: TBounceType;
    procedure SetBounceType(const Value: TBounceType);
    function GetRecipient: string;
    procedure SetRecipient(const Value: string);
    function GetRecipientArn: string;
    procedure SetRecipientArn(const Value: string);
    function GetRecipientDsnFields: TRecipientDsnFields;
    procedure SetRecipientDsnFields(const Value: TRecipientDsnFields);
    function GetKeepRecipientDsnFields: Boolean;
    procedure SetKeepRecipientDsnFields(const Value: Boolean);
  strict protected
    function Obj: TBouncedRecipientInfo;
  public
    destructor Destroy; override;
    function IsSetBounceType: Boolean;
    function IsSetRecipient: Boolean;
    function IsSetRecipientArn: Boolean;
    function IsSetRecipientDsnFields: Boolean;
    property BounceType: TBounceType read GetBounceType write SetBounceType;
    property Recipient: string read GetRecipient write SetRecipient;
    property RecipientArn: string read GetRecipientArn write SetRecipientArn;
    property RecipientDsnFields: TRecipientDsnFields read GetRecipientDsnFields write SetRecipientDsnFields;
    property KeepRecipientDsnFields: Boolean read GetKeepRecipientDsnFields write SetKeepRecipientDsnFields;
  end;
  
implementation

{ TBouncedRecipientInfo }

destructor TBouncedRecipientInfo.Destroy;
begin
  RecipientDsnFields := nil;
  inherited;
end;

function TBouncedRecipientInfo.Obj: TBouncedRecipientInfo;
begin
  Result := Self;
end;

function TBouncedRecipientInfo.GetBounceType: TBounceType;
begin
  Result := FBounceType.ValueOrDefault;
end;

procedure TBouncedRecipientInfo.SetBounceType(const Value: TBounceType);
begin
  FBounceType := Value;
end;

function TBouncedRecipientInfo.IsSetBounceType: Boolean;
begin
  Result := FBounceType.HasValue;
end;

function TBouncedRecipientInfo.GetRecipient: string;
begin
  Result := FRecipient.ValueOrDefault;
end;

procedure TBouncedRecipientInfo.SetRecipient(const Value: string);
begin
  FRecipient := Value;
end;

function TBouncedRecipientInfo.IsSetRecipient: Boolean;
begin
  Result := FRecipient.HasValue;
end;

function TBouncedRecipientInfo.GetRecipientArn: string;
begin
  Result := FRecipientArn.ValueOrDefault;
end;

procedure TBouncedRecipientInfo.SetRecipientArn(const Value: string);
begin
  FRecipientArn := Value;
end;

function TBouncedRecipientInfo.IsSetRecipientArn: Boolean;
begin
  Result := FRecipientArn.HasValue;
end;

function TBouncedRecipientInfo.GetRecipientDsnFields: TRecipientDsnFields;
begin
  Result := FRecipientDsnFields;
end;

procedure TBouncedRecipientInfo.SetRecipientDsnFields(const Value: TRecipientDsnFields);
begin
  if FRecipientDsnFields <> Value then
  begin
    if not KeepRecipientDsnFields then
      FRecipientDsnFields.Free;
    FRecipientDsnFields := Value;
  end;
end;

function TBouncedRecipientInfo.GetKeepRecipientDsnFields: Boolean;
begin
  Result := FKeepRecipientDsnFields;
end;

procedure TBouncedRecipientInfo.SetKeepRecipientDsnFields(const Value: Boolean);
begin
  FKeepRecipientDsnFields := Value;
end;

function TBouncedRecipientInfo.IsSetRecipientDsnFields: Boolean;
begin
  Result := FRecipientDsnFields <> nil;
end;

end.
