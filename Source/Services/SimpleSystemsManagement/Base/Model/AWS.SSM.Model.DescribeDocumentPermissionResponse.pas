unit AWS.SSM.Model.DescribeDocumentPermissionResponse;

interface

uses
  System.Generics.Collections, 
  AWS.Runtime.Model, 
  AWS.SSM.Model.AccountSharingInfo, 
  AWS.Nullable;

type
  TDescribeDocumentPermissionResponse = class;
  
  IDescribeDocumentPermissionResponse = interface(IAmazonWebServiceResponse)
    function GetAccountIds: TList<string>;
    procedure SetAccountIds(const Value: TList<string>);
    function GetKeepAccountIds: Boolean;
    procedure SetKeepAccountIds(const Value: Boolean);
    function GetAccountSharingInfoList: TObjectList<TAccountSharingInfo>;
    procedure SetAccountSharingInfoList(const Value: TObjectList<TAccountSharingInfo>);
    function GetKeepAccountSharingInfoList: Boolean;
    procedure SetKeepAccountSharingInfoList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TDescribeDocumentPermissionResponse;
    function IsSetAccountIds: Boolean;
    function IsSetAccountSharingInfoList: Boolean;
    function IsSetNextToken: Boolean;
    property AccountIds: TList<string> read GetAccountIds write SetAccountIds;
    property KeepAccountIds: Boolean read GetKeepAccountIds write SetKeepAccountIds;
    property AccountSharingInfoList: TObjectList<TAccountSharingInfo> read GetAccountSharingInfoList write SetAccountSharingInfoList;
    property KeepAccountSharingInfoList: Boolean read GetKeepAccountSharingInfoList write SetKeepAccountSharingInfoList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TDescribeDocumentPermissionResponse = class(TAmazonWebServiceResponse, IDescribeDocumentPermissionResponse)
  strict private
    FAccountIds: TList<string>;
    FKeepAccountIds: Boolean;
    FAccountSharingInfoList: TObjectList<TAccountSharingInfo>;
    FKeepAccountSharingInfoList: Boolean;
    FNextToken: Nullable<string>;
    function GetAccountIds: TList<string>;
    procedure SetAccountIds(const Value: TList<string>);
    function GetKeepAccountIds: Boolean;
    procedure SetKeepAccountIds(const Value: Boolean);
    function GetAccountSharingInfoList: TObjectList<TAccountSharingInfo>;
    procedure SetAccountSharingInfoList(const Value: TObjectList<TAccountSharingInfo>);
    function GetKeepAccountSharingInfoList: Boolean;
    procedure SetKeepAccountSharingInfoList(const Value: Boolean);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TDescribeDocumentPermissionResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAccountIds: Boolean;
    function IsSetAccountSharingInfoList: Boolean;
    function IsSetNextToken: Boolean;
    property AccountIds: TList<string> read GetAccountIds write SetAccountIds;
    property KeepAccountIds: Boolean read GetKeepAccountIds write SetKeepAccountIds;
    property AccountSharingInfoList: TObjectList<TAccountSharingInfo> read GetAccountSharingInfoList write SetAccountSharingInfoList;
    property KeepAccountSharingInfoList: Boolean read GetKeepAccountSharingInfoList write SetKeepAccountSharingInfoList;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TDescribeDocumentPermissionResponse }

constructor TDescribeDocumentPermissionResponse.Create;
begin
  inherited;
  FAccountIds := TList<string>.Create;
  FAccountSharingInfoList := TObjectList<TAccountSharingInfo>.Create;
end;

destructor TDescribeDocumentPermissionResponse.Destroy;
begin
  AccountSharingInfoList := nil;
  AccountIds := nil;
  inherited;
end;

function TDescribeDocumentPermissionResponse.Obj: TDescribeDocumentPermissionResponse;
begin
  Result := Self;
end;

function TDescribeDocumentPermissionResponse.GetAccountIds: TList<string>;
begin
  Result := FAccountIds;
end;

procedure TDescribeDocumentPermissionResponse.SetAccountIds(const Value: TList<string>);
begin
  if FAccountIds <> Value then
  begin
    if not KeepAccountIds then
      FAccountIds.Free;
    FAccountIds := Value;
  end;
end;

function TDescribeDocumentPermissionResponse.GetKeepAccountIds: Boolean;
begin
  Result := FKeepAccountIds;
end;

procedure TDescribeDocumentPermissionResponse.SetKeepAccountIds(const Value: Boolean);
begin
  FKeepAccountIds := Value;
end;

function TDescribeDocumentPermissionResponse.IsSetAccountIds: Boolean;
begin
  Result := (FAccountIds <> nil) and (FAccountIds.Count > 0);
end;

function TDescribeDocumentPermissionResponse.GetAccountSharingInfoList: TObjectList<TAccountSharingInfo>;
begin
  Result := FAccountSharingInfoList;
end;

procedure TDescribeDocumentPermissionResponse.SetAccountSharingInfoList(const Value: TObjectList<TAccountSharingInfo>);
begin
  if FAccountSharingInfoList <> Value then
  begin
    if not KeepAccountSharingInfoList then
      FAccountSharingInfoList.Free;
    FAccountSharingInfoList := Value;
  end;
end;

function TDescribeDocumentPermissionResponse.GetKeepAccountSharingInfoList: Boolean;
begin
  Result := FKeepAccountSharingInfoList;
end;

procedure TDescribeDocumentPermissionResponse.SetKeepAccountSharingInfoList(const Value: Boolean);
begin
  FKeepAccountSharingInfoList := Value;
end;

function TDescribeDocumentPermissionResponse.IsSetAccountSharingInfoList: Boolean;
begin
  Result := (FAccountSharingInfoList <> nil) and (FAccountSharingInfoList.Count > 0);
end;

function TDescribeDocumentPermissionResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TDescribeDocumentPermissionResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TDescribeDocumentPermissionResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
