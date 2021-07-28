unit AWS.SES.Model.SNSAction;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Enums;

type
  TSNSAction = class;
  
  ISNSAction = interface
    function GetEncoding: TSNSActionEncoding;
    procedure SetEncoding(const Value: TSNSActionEncoding);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TSNSAction;
    function IsSetEncoding: Boolean;
    function IsSetTopicArn: Boolean;
    property Encoding: TSNSActionEncoding read GetEncoding write SetEncoding;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TSNSAction = class
  strict private
    FEncoding: Nullable<TSNSActionEncoding>;
    FTopicArn: Nullable<string>;
    function GetEncoding: TSNSActionEncoding;
    procedure SetEncoding(const Value: TSNSActionEncoding);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TSNSAction;
  public
    function IsSetEncoding: Boolean;
    function IsSetTopicArn: Boolean;
    property Encoding: TSNSActionEncoding read GetEncoding write SetEncoding;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TSNSAction }

function TSNSAction.Obj: TSNSAction;
begin
  Result := Self;
end;

function TSNSAction.GetEncoding: TSNSActionEncoding;
begin
  Result := FEncoding.ValueOrDefault;
end;

procedure TSNSAction.SetEncoding(const Value: TSNSActionEncoding);
begin
  FEncoding := Value;
end;

function TSNSAction.IsSetEncoding: Boolean;
begin
  Result := FEncoding.HasValue;
end;

function TSNSAction.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TSNSAction.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TSNSAction.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
