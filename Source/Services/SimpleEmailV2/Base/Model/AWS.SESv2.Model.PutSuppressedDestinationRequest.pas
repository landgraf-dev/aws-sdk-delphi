unit AWS.SESv2.Model.PutSuppressedDestinationRequest;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SESv2.Model.Request, 
  AWS.SESv2.Enums;

type
  TPutSuppressedDestinationRequest = class;
  
  IPutSuppressedDestinationRequest = interface
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetReason: TSuppressionListReason;
    procedure SetReason(const Value: TSuppressionListReason);
    function Obj: TPutSuppressedDestinationRequest;
    function IsSetEmailAddress: Boolean;
    function IsSetReason: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property Reason: TSuppressionListReason read GetReason write SetReason;
  end;
  
  TPutSuppressedDestinationRequest = class(TAmazonSimpleEmailServiceV2Request, IPutSuppressedDestinationRequest)
  strict private
    FEmailAddress: Nullable<string>;
    FReason: Nullable<TSuppressionListReason>;
    function GetEmailAddress: string;
    procedure SetEmailAddress(const Value: string);
    function GetReason: TSuppressionListReason;
    procedure SetReason(const Value: TSuppressionListReason);
  strict protected
    function Obj: TPutSuppressedDestinationRequest;
  public
    function IsSetEmailAddress: Boolean;
    function IsSetReason: Boolean;
    property EmailAddress: string read GetEmailAddress write SetEmailAddress;
    property Reason: TSuppressionListReason read GetReason write SetReason;
  end;
  
implementation

{ TPutSuppressedDestinationRequest }

function TPutSuppressedDestinationRequest.Obj: TPutSuppressedDestinationRequest;
begin
  Result := Self;
end;

function TPutSuppressedDestinationRequest.GetEmailAddress: string;
begin
  Result := FEmailAddress.ValueOrDefault;
end;

procedure TPutSuppressedDestinationRequest.SetEmailAddress(const Value: string);
begin
  FEmailAddress := Value;
end;

function TPutSuppressedDestinationRequest.IsSetEmailAddress: Boolean;
begin
  Result := FEmailAddress.HasValue;
end;

function TPutSuppressedDestinationRequest.GetReason: TSuppressionListReason;
begin
  Result := FReason.ValueOrDefault;
end;

procedure TPutSuppressedDestinationRequest.SetReason(const Value: TSuppressionListReason);
begin
  FReason := Value;
end;

function TPutSuppressedDestinationRequest.IsSetReason: Boolean;
begin
  Result := FReason.HasValue;
end;

end.
