unit AWS.SES.Model.S3Action;

interface

uses
  AWS.Nullable;

type
  TS3Action = class;
  
  IS3Action = interface
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetKmsKeyArn: string;
    procedure SetKmsKeyArn(const Value: string);
    function GetObjectKeyPrefix: string;
    procedure SetObjectKeyPrefix(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
    function Obj: TS3Action;
    function IsSetBucketName: Boolean;
    function IsSetKmsKeyArn: Boolean;
    function IsSetObjectKeyPrefix: Boolean;
    function IsSetTopicArn: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property KmsKeyArn: string read GetKmsKeyArn write SetKmsKeyArn;
    property ObjectKeyPrefix: string read GetObjectKeyPrefix write SetObjectKeyPrefix;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
  TS3Action = class
  strict private
    FBucketName: Nullable<string>;
    FKmsKeyArn: Nullable<string>;
    FObjectKeyPrefix: Nullable<string>;
    FTopicArn: Nullable<string>;
    function GetBucketName: string;
    procedure SetBucketName(const Value: string);
    function GetKmsKeyArn: string;
    procedure SetKmsKeyArn(const Value: string);
    function GetObjectKeyPrefix: string;
    procedure SetObjectKeyPrefix(const Value: string);
    function GetTopicArn: string;
    procedure SetTopicArn(const Value: string);
  strict protected
    function Obj: TS3Action;
  public
    function IsSetBucketName: Boolean;
    function IsSetKmsKeyArn: Boolean;
    function IsSetObjectKeyPrefix: Boolean;
    function IsSetTopicArn: Boolean;
    property BucketName: string read GetBucketName write SetBucketName;
    property KmsKeyArn: string read GetKmsKeyArn write SetKmsKeyArn;
    property ObjectKeyPrefix: string read GetObjectKeyPrefix write SetObjectKeyPrefix;
    property TopicArn: string read GetTopicArn write SetTopicArn;
  end;
  
implementation

{ TS3Action }

function TS3Action.Obj: TS3Action;
begin
  Result := Self;
end;

function TS3Action.GetBucketName: string;
begin
  Result := FBucketName.ValueOrDefault;
end;

procedure TS3Action.SetBucketName(const Value: string);
begin
  FBucketName := Value;
end;

function TS3Action.IsSetBucketName: Boolean;
begin
  Result := FBucketName.HasValue;
end;

function TS3Action.GetKmsKeyArn: string;
begin
  Result := FKmsKeyArn.ValueOrDefault;
end;

procedure TS3Action.SetKmsKeyArn(const Value: string);
begin
  FKmsKeyArn := Value;
end;

function TS3Action.IsSetKmsKeyArn: Boolean;
begin
  Result := FKmsKeyArn.HasValue;
end;

function TS3Action.GetObjectKeyPrefix: string;
begin
  Result := FObjectKeyPrefix.ValueOrDefault;
end;

procedure TS3Action.SetObjectKeyPrefix(const Value: string);
begin
  FObjectKeyPrefix := Value;
end;

function TS3Action.IsSetObjectKeyPrefix: Boolean;
begin
  Result := FObjectKeyPrefix.HasValue;
end;

function TS3Action.GetTopicArn: string;
begin
  Result := FTopicArn.ValueOrDefault;
end;

procedure TS3Action.SetTopicArn(const Value: string);
begin
  FTopicArn := Value;
end;

function TS3Action.IsSetTopicArn: Boolean;
begin
  Result := FTopicArn.HasValue;
end;

end.
