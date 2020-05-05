﻿unit TelegAPI.Types.Impl;

interface

uses
  System.SysUtils,
  System.Classes,
  TelegAPi.Utils.JSON,
  TelegAPi.Types.Enums,
  TelegAPi.Types;

type
  TtgUser = class(TBaseJson, ItgUser)
  public
    function ID: Int64;
    function IsBot: Boolean;
    function FirstName: string;
    function LastName: string;
    function Username: string;
    function LanguageCode: string;
  end;

  TtgChatMember = class(TBaseJson, ItgChatMember)
  public
    function User: ItgUser;
    function Status: TtgChatMemberStatus;
    function UntilDate: TDateTime;
    function CanBeEdited: Boolean;
    function CanChangeInfo: Boolean;
    function CanPostMessages: Boolean;
    function CanEditMessages: Boolean;
    function CanDeleteMessages: Boolean;
    function CanInviteUsers: Boolean;
    function CanRestrictMembers: Boolean;
    function CanPinMessages: Boolean;
    function CanPromoteMembers: Boolean;
    function CanSendMessages: Boolean;
    function CanSendMediaMessages: Boolean;
    function CanSendOtherMessages: Boolean;
    function CanAddWebPagePreviews: Boolean;
  end;

  TtgChatPhoto = class(TBaseJson, ItgChatPhoto)
    function SmallFileId: string;
    function BigFileId: string;
  end;

  TtgChat = class(TBaseJson, ItgChat)
  public
    function ID: Int64;
    function TypeChat: TtgChatType;
    function Title: string;
    function Username: string;
    function FirstName: string;
    function LastName: string;
    function AllMembersAreAdministrators: Boolean;
    function Photo: ItgChatPhoto;
    function Description: string;
    function InviteLink: string;
    function PinnedMessage: ITgMessage;
    function StickerSetName: string;
    function CanSetStickerSet: Boolean;
    function IsGroup: Boolean;
  end;

  TtgMessageEntity = class(TBaseJson, ItgMessageEntity)
  public
    function TypeMessage: TtgMessageEntityType;
    function Offset: Int64;
    function Length: Int64;
    function Url: string;
    function User: ItgUser;
  end;

  TtgFile = class(TBaseJson, ItgFile)
  public
    function FileId: string;
    function FileSize: Int64;
    function FilePath: string;
    function CanDownload: Boolean;
    function GetFileUrl(const AToken: string): string;
  end;

  TtgAudio = class(TtgFile, ItgAudio)
  public
    function Duration: Int64;
    function Performer: string;
    function Title: string;
    function MimeType: string;
  end;

  TtgPhotoSize = class(TtgFile, ItgPhotoSize)
  public
    function Width: Int64;
    function Height: Int64;
  end;

  TtgDocument = class(TtgFile, ItgDocument)
  public
    function Thumb: ItgPhotoSize;
    function FileName: string;
    function MimeType: string;
  end;

  TtgMaskPosition = class(TBaseJson, ItgMaskPosition)
    function Point: TtgMaskPositionPoint;
    function XShift: Single;
    function YShift: Single;
    function Scale: Single;
  end;

  TtgSticker = class(TtgFile, ItgSticker)
  public
    function Width: Int64;
    function Height: Int64;
    function Thumb: ItgPhotoSize;
    function Emoji: string;
    function SetName: string;
    function MaskPosition: ItgMaskPosition;
  end;

  TtgStickerSet = class(TBaseJson, ItgStickerSet)
  public
    function Name: string;
    function Title: string;
    function ContainsMasks: Boolean;
    function Stickers: TArray<ItgSticker>;
  end;

  TtgVideo = class(TtgFile, ItgVideo)
  public
    function Width: Int64;
    function Height: Int64;
    function Duration: Int64;
    function Thumb: ItgPhotoSize;
    function MimeType: string;
  end;

  TtgVideoNote = class(TtgFile, ItgVideoNote)
  public
    function FileId: string;
    function Length: Int64;
    function Duration: Int64;
    function Thumb: ItgPhotoSize;
    function FileSize: Int64;
  end;

  TtgVoice = class(TtgFile, ItgVoice)
  public
    function Duration: Int64;
    function MimeType: string;
  end;

  TtgContact = class(TBaseJson, ItgContact)
  private
    FJson : String;
    procedure SetFirstName(const Value: string);
    procedure SetLastName(const Value: string);
    procedure SetPhoneNumber(const Value: string);
  public
    constructor Create(const ANumeroTelelefone, APrimeiroNome, UltimoNome: String); reintroduce; overload;
    constructor Create(const AJson: string); overload; override;

    function PhoneNumber: string;
    function FirstName: string;
    function LastName: string;
    function UserId: Int64;
  end;

  TtgPollOption = class(TBaseJson, ItgPollOption)
  public
    function text : String;
    function voter_count: String;
  end;

  TtgPollAnswer = class(TBaseJson, ItgPollAnswer)
    function poll_id: String;
    function user: ItgUser;
    function option_ids: TArray<Integer>;
  end;

  TtgPoll = class(TBaseJson, ItgPoll)
    function Id : String;
    function Question: String;
    function options: TArray<ItgPollOption>;
    function total_voter_count: Integer;
    function is_closed: Boolean;
    function is_anonymous: Boolean;
    function &type: String;
    function allows_multiple_answers: Boolean;
    function correct_option_id: Integer;
  end;

  TtgDice = class(TBaseJson, ItgDice)
    public
      function value: Integer;
  end;

  TtgLocation = class(TBaseJson, ItgLocation)
  private
    FLat: Single;
    FLng: Single;
    procedure SetLatitude(const Value: Single);
    procedure SetLongitude(const Value: Single);
  public
    function GetLongitude: Single;
    function GetLatitude: Single;
    constructor Create(const ALatitude, ALongitude: Single); reintroduce; overload;
    constructor Create(const AJson: string); overload; override;
    property Latitude: Single read FLat write SetLatitude;
    property Longitude: Single read FLng write SetLongitude;
  end;

  TtgVenue = class(TBaseJson, ItgVenue)
  private
    FLocation: ItgLocation;
    FTitle: String;
    FFoursquareId: string;
    FFoursquareType: String;
    FAddress: string;
    FLatitude : Single;
    FLongitude: Single;
    procedure SetLatitude(const Value: Single);
    procedure SetLongitude(const Value: Single);
    procedure SetTitle(const Value: String);
    procedure SetAddress(const Value: String);
    procedure SetFoursquareId(const Value: String);
    procedure SetFoursquareType(const Value: String);
    procedure SetLocation(const Value: ItgLocation);
  public
    function Location: ItgLocation;
    function Title: string;
    function Address: string;
    function FoursquareId: string;
    function FoursquareType: string;

    property sLocation      : ItgLocation read FLocation        write SetLocation;
    property sLatitude      : Single      read FLatitude        write SetLatitude;
    property sLongitude     : single      read FLongitude       write SetLongitude;
    property sTitle         : String      read FTitle           write SetTitle;
    property sAddress       : string      read FAddress         write SetAddress;
    property sFoursquareId  : string      read FFoursquareId    write SetFoursquareId;
    property sFoursquareType: String      read FFoursquareType  write SetFoursquareType;

    constructor Create(const ALocation: ItgLocation; ATitle, AAddress,
      AFoursquareId, AFoursquareType : String); reintroduce; overload;
    constructor Create(const ALatitude, ALongitude: Single; ATitle, AAddress,
      AFoursquareId, AFoursquareType : String); reintroduce; overload;
    constructor Create(const AJson: string); overload; override;
    destructor Destroy; override;
  end;

  TtgAnimation = class(TBaseJson, ItgAnimation)
  public
    function FileId: string;
    function Thumb: ItgPhotoSize;
    function FileName: string;
    function MimeType: string;
    function FileSize: Int64;
  end;

  TtgGameHighScore = class(TBaseJson, ItgGameHighScore)
  public
    function Position: Int64;
    function User: ItgUser;
    function Score: Int64;
  end;

  TtgGame = class(TBaseJson, ItgGame)
  public
    function Title: string;
    function Description: string;
    function Photo: TArray<ItgPhotoSize>;
    function Text: string;
    function TextEntities: TArray<ItgMessageEntity>;
    function Animation: ItgAnimation;
  end;

  TTgMessage = class(TBaseJson, ITgMessage)
  public
    function MessageId: Int64;
    function From: ItgUser;
    function Date: TDateTime;
    function Chat: ItgChat;
    function ForwardFrom: ItgUser;
    function ForwardFromChat: ItgChat;
    function ForwardFromMessageId: Int64;
    function ForwardSignature: string;
    function ForwardDate: TDateTime;
    function ReplyToMessage: ITgMessage;
    function EditDate: TDateTime;
    function AuthorSignature: string;
    function Text: string;
    function Entities: TArray<ItgMessageEntity>;
    function CaptionEntities: TArray<ItgMessageEntity>;
    function Audio: ItgAudio;
    function Document: ItgDocument;
    function Game: ItgGame;
    function Photo: TArray<ItgPhotoSize>;
    function Sticker: ItgSticker;
    function Video: ItgVideo;
    function Voice: ItgVoice;
    function VideoNote: ItgVideoNote;
    function NewChatMembers: TArray<ItgUser>;
    function Caption: string;
    function Contact: ItgContact;
    function Location: ItgLocation;
    function Venue: ItgVenue;
    function Poll: ItgPoll;
    function Dice: ItgDice;
    function NewChatMember: ItgUser;
    function LeftChatMember: ItgUser;
    function NewChatTitle: string;
    function NewChatPhoto: TArray<ItgPhotoSize>;
    function DeleteChatPhoto: Boolean;
    function GroupChatCreated: Boolean;
    function SupergroupChatCreated: Boolean;
    function ChannelChatCreated: Boolean;
    function MigrateToChatId: Int64;
    function MigrateFromChatId: Int64;
    function PinnedMessage: ITgMessage;
    function Invoice: ItgInvoice;
    function SuccessfulPayment: ItgSuccessfulPayment;
    function ConnectedWebsite: string;
    function &Type: TtgMessageType;
    function IsCommand(const AValue: string): Boolean;
 end;

  TtgUserProfilePhotos = class(TBaseJson, ItgUserProfilePhotos)
  public
    function TotalCount: Int64;
    function Photos: TArray<TArray<ItgPhotoSize>>;
  end;

  TtgCallbackGame = class
  end;

  TtgResponseParameters = class(TBaseJson, ItgResponseParameters)
  public
    function MigrateToChatId: Int64;
    function RetryAfter: Int64;
  end;

  TtgInlineQuery = class(TBaseJson, ItgInlineQuery)
  public
    function ID: string;
    function From: ItgUser;
    function Query: string;
    function Offset: string;
  end;

  TtgChosenInlineResult = class(TBaseJson, ItgChosenInlineResult)
  public
    function ResultId: string;
    function From: ItgUser;
    function Location: ItgLocation;
    function InlineMessageId: string;
    function Query: string;
  end;

  TtgCallbackQuery = class(TBaseJson, ItgCallbackQuery)
  public
    function ID: string;
    function From: ItgUser;
    function Message: ITgMessage;
    function InlineMessageId: string;
    function Data: string;
    function GameShortName: string;
  end;

{$REGION 'Payments'}

  TtgInvoice = class(TBaseJson, ItgInvoice)
  public
    function Title: string;
    function Description: string;
    function StartParameter: string;
    function Currency: string;
    function TotalAmount: Int64;
  end;

  TtgLabeledPrice = class(TBaseJson, ItgLabeledPrice)
  private
    AJSon : String;
    FAmount: Int64;
    FText: String;
  public
    function Text: string;
    function Amount: Int64;
    constructor Create(const AText: string; AAmount: Int64); reintroduce; overload;
    constructor Create(const AJson: string); overload; override;
    [JSonName('label')]
    property sText: String read FText write FText;
    [JSonName('amount')]
    property sAmount: Int64 read FAmount write FAmount;
  end;

  /// <summary>
  /// This object represents a shipping address.
  /// </summary>
  TtgShippingAddress = class(TBaseJson, ItgShippingAddress)
  public
    function CountryCode: string;
    function State: string;
    function City: string;
    function StreetLine1: string;
    function StreetLine2: string;
    function PostCode: string;
  end;

  TtgOrderInfo = class(TBaseJson, ItgOrderInfo)
  public
    function Name: string;
    function PhoneNumber: string;
    function Email: string;
    function ShippingAddress: ItgShippingAddress;
  end;

  TtgPreCheckoutQuery = class(TBaseJson, ItgPreCheckoutQuery)
  public
    function ID: string;
    function From: ItgUser;
    function Currency: string;
    function TotalAmount: Int64;
    function InvoicePayload: string;
    function ShippingOptionId: string;
    function OrderInfo: ItgOrderInfo;
  end;

  TtgShippingOption = class(TBaseJson, ItgShippingOption)
  public
    function ID: string;
    function Title: string;
    function Prices: TArray<ItgLabeledPrice>;
  end;

  TtgShippingQuery = class(TBaseJson, ItgShippingQuery)
  public
    function ID: string;
    function From: ItgUser;
    function InvoicePayload: string;
    function ShippingAddress: ItgShippingAddress;
  end;

  TtgSuccessfulPayment = class(TBaseJson, ItgSuccessfulPayment)
  public
    function Currency: string;
    function TotalAmount: Int64;
    function InvoicePayload: string;
    function ShippingOptionId: string;
    function OrderInfo: ItgOrderInfo;
    function TelegramPaymentChargeId: string;
    function ProviderPaymentChargeId: string;
  end;
{$ENDREGION}

  TtgUpdate = class(TBaseJson, ItgUpdate)
  public
    function ID: Int64;
    function Message: ITgMessage;
    function EditedMessage: ITgMessage;
    function InlineQuery: ItgInlineQuery;
    function ChosenInlineResult: ItgChosenInlineResult;
    function CallbackQuery: ItgCallbackQuery;
    function ChannelPost: ITgMessage;
    function EditedChannelPost: ITgMessage;
    function ShippingQuery: ItgShippingQuery;
    function PreCheckoutQuery: ItgPreCheckoutQuery;
    function &Type: TtgUpdateType;
  end;

  TtgWebhookInfo = class(TBaseJson, ItgWebhookInfo)
  public
    function Url: string;
    function HasCustomCertificate: Boolean;
    function PendingUpdateCount: Int64;
    function LastErrorDate: TDateTime;
    function LastErrorMessage: string;
    function MaxConnections: Int64;
    function AllowedUpdates: TArray<string>;
  end;

implementation

uses
  System.JSON,
  System.TypInfo;
{ TtgAnimation }

function TtgAnimation.FileId: string;
begin
  Result := ReadToSimpleType<string>('file_id');
end;

function TtgAnimation.FileName: string;
begin
  Result := ReadToSimpleType<string>('file_name');
end;

function TtgAnimation.FileSize: Int64;
begin
  Result := ReadToSimpleType<Int64>('file_size');
end;

function TtgAnimation.MimeType: string;
begin
  Result := ReadToSimpleType<string>('mime_type');
end;

function TtgAnimation.Thumb: ItgPhotoSize;
begin
  Result := ReadToClass<TtgPhotoSize>('thumb');
end;

{ TtgCallbackQuery }
function TtgCallbackQuery.Data: string;
begin
  Result := ReadToSimpleType<string>('data');
end;

function TtgCallbackQuery.From: ItgUser;
begin
  Result := ReadToClass<TtgUser>('from');
end;

function TtgCallbackQuery.GameShortName: string;
begin
  Result := ReadToSimpleType<string>('game_short_name');
end;

function TtgCallbackQuery.ID: string;
begin
  Result := ReadToSimpleType<string>('id');
end;

function TtgCallbackQuery.InlineMessageId: string;
begin
  Result := ReadToSimpleType<string>('inline_message_id');
end;

function TtgCallbackQuery.Message: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('message');
end;

{ TtgDocument }

function TtgDocument.FileName: string;
begin
  Result := ReadToSimpleType<string>('file_name');
end;

function TtgDocument.MimeType: string;
begin
  Result := ReadToSimpleType<string>('mime_type');
end;

function TtgDocument.Thumb: ItgPhotoSize;
begin
  Result := ReadToClass<TtgPhotoSize>('thumb');
end;

{ TtgFile }
function TtgFile.CanDownload: Boolean;
begin
  Result := not FilePath.IsEmpty;
end;

function TtgFile.FileId: string;
begin
  Result := ReadToSimpleType<string>('file_id');
end;

function TtgFile.FilePath: string;
begin
  Result := ReadToSimpleType<string>('file_path');
end;

function TtgFile.FileSize: Int64;
begin
  Result := ReadToSimpleType<Int64>('file_size');
end;

function TtgFile.GetFileUrl(const AToken: string): string;
begin
  Result := 'https://api.telegram.org/file/bot' + AToken + '/' + FilePath;
end;

function TtgGameHighScore.Position: Int64;
begin
  Result := ReadToSimpleType<Int64>('position');
end;

function TtgGameHighScore.Score: Int64;
begin
  Result := ReadToSimpleType<Int64>('score');
end;

function TtgGameHighScore.User: ItgUser;
begin
  Result := ReadToClass<TtgUser>('user');
end;

{ TtgMessage }

function TTgMessage.Document: ItgDocument;
begin
  Result := ReadToClass<TtgDocument>('document');
end;

function TTgMessage.EditDate: TDateTime;
begin
  Result := ReadToDateTime('edit_date');
end;

function TTgMessage.ForwardDate: TDateTime;
begin
  Result := ReadToDateTime('forward_date');
end;

function TTgMessage.ForwardFrom: ItgUser;
begin
  Result := ReadToClass<TtgUser>('forward_from');
end;

function TTgMessage.ForwardFromChat: ItgChat;
begin
  Result := ReadToClass<TtgChat>('forward_from_chat');
end;

function TTgMessage.ForwardFromMessageId: Int64;
begin
  Result := ReadToSimpleType<Int64>('forward_from_message_id');
end;

function TTgMessage.ForwardSignature: string;
begin
  Result := ReadToSimpleType<string>('forward_signature');
end;

function TTgMessage.From: ItgUser;
begin
  Result := ReadToClass<TtgUser>('from');
end;

function TTgMessage.Game: ItgGame;
begin
  Result := ReadToClass<TtgGame>('game');
end;

function TTgMessage.GroupChatCreated: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('group_chat_created');
end;

function TTgMessage.Invoice: ItgInvoice;
begin
  Result := ReadToClass<TtgInvoice>('invoice');
end;

function TTgMessage.IsCommand(const AValue: string): Boolean;
var
  LEnt: ItgMessageEntity;
begin
  Result := False;
  if Self.Entities = nil then
    Exit;
  for LEnt in Self.Entities do
    if (LEnt.TypeMessage = TtgMessageEntityType.bot_command) then
      if Text.Substring(LEnt.Offset, LEnt.Length).StartsWith(AValue, True) then
        Exit(True);
end;

function TTgMessage.LeftChatMember: ItgUser;
begin
  Result := ReadToClass<TtgUser>('left_chat_member');
end;

function TTgMessage.Location: ItgLocation;
begin
  Result := ReadToClass<TtgLocation>('location');
end;

function TTgMessage.MessageId: Int64;
begin
  Result := ReadToSimpleType<Int64>('message_id');
end;

function TTgMessage.MigrateFromChatId: Int64;
begin
  Result := ReadToSimpleType<Int64>('migrate_from_chat_id');
end;

function TTgMessage.MigrateToChatId: Int64;
begin
  Result := ReadToSimpleType<Int64>('migrate_to_chat_id');
end;

function TTgMessage.NewChatMember: ItgUser;
begin
  Result := ReadToClass<TtgUser>('new_chat_member');
end;

function TTgMessage.NewChatMembers: TArray<ItgUser>;
var
  LValue: string;
  LJsonArray: TJSONArray;
  I: Integer;
begin
  Result := nil;
  if FJSON.TryGetValue<string>('new_chat_members', LValue) then
  begin
    LJsonArray := TJSONObject.ParseJSONValue(LValue) as TJSONArray;
    try
      SetLength(Result, LJsonArray.Count);
      for I := 0 to LJsonArray.Count - 1 do
        Result[I] := ReadToClass<TtgUser>('new_chat_members');
    finally
      LJsonArray.Free;
    end;
  end;
end;

function TTgMessage.NewChatPhoto: TArray<ItgPhotoSize>;
var
  LValue: string;
  LJsonArray: TJSONArray;
  I: Integer;
begin
  Result := nil;
  if FJSON.TryGetValue<string>('new_chat_photo', LValue) then
  begin
    LJsonArray := TJSONObject.ParseJSONValue(LValue) as TJSONArray;
    try
      SetLength(Result, LJsonArray.Count);
      for I := 0 to LJsonArray.Count - 1 do
        Result[I] := ReadToClass<TtgPhotoSize>('new_chat_photo');
    finally
      LJsonArray.Free;
    end;
  end;
end;

function TTgMessage.NewChatTitle: string;
begin
  Result := ReadToSimpleType<string>('new_chat_title');
end;

function TTgMessage.Entities: TArray<ItgMessageEntity>;
var
  LJsonArray: TJSONArray;
  I: Integer;
begin
  LJsonArray := FJSON.GetValue('entities') as TJSONArray;
  if (not Assigned(LJsonArray)) or LJsonArray.Null then
    Exit(nil);
  SetLength(Result, LJsonArray.Count);
  for I := 0 to LJsonArray.Count - 1 do
    Result[I] := TtgMessageEntity.Create(LJsonArray.Items[I].ToString);
end;

function TTgMessage.Photo: TArray<ItgPhotoSize>;
begin
  Result := ReadToArray<ItgPhotoSize>(TtgPhotoSize, 'photo');
end;

function TTgMessage.PinnedMessage: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('pinned_message');
end;

function TTgMessage.Poll: ItgPoll;
begin
  Result := ReadToClass<TtgPoll>('poll');
end;

function TTgMessage.ReplyToMessage: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('reply_to_message');
end;

function TTgMessage.Sticker: ItgSticker;
begin
  Result := ReadToClass<TtgSticker>('sticker');
end;

function TTgMessage.SuccessfulPayment: ItgSuccessfulPayment;
begin
  Result := ReadToClass<TtgSuccessfulPayment>('successful_payment');
end;

function TTgMessage.SupergroupChatCreated: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('supergroup_chat_created');
end;

function TTgMessage.Text: string;
begin
  Result := ReadToSimpleType<string>('text');
end;

function TTgMessage.&Type: TtgMessageType;
begin
  if Audio <> nil then
    Exit(TtgMessageType.AudioMessage);
  if Contact <> nil then
    Exit(TtgMessageType.ContactMessage);
  if Document <> nil then
    Exit(TtgMessageType.DocumentMessage);
  if Game <> nil then
    Exit(TtgMessageType.GameMessage);
  if (Location <> nil) then
    Exit(TtgMessageType.LocationMessage);
  if (NewChatMember <> nil) or (LeftChatMember <> nil) or ((NewChatPhoto <> nil) and (Length(NewChatPhoto) > 0)) or ((NewChatMembers <> nil) and (Length(NewChatMembers) > 0)) or (not NewChatTitle.IsEmpty) or DeleteChatPhoto or GroupChatCreated or SupergroupChatCreated or ChannelChatCreated or (MigrateToChatId <> 0) or (MigrateFromChatId <> 0) or (PinnedMessage <> nil) then
    Exit(TtgMessageType.ServiceMessage);
  if (Photo <> nil) and (Length(Photo) > 0) then
    Exit(TtgMessageType.PhotoMessage);
  if (Sticker <> nil) then
    Exit(TtgMessageType.StickerMessage);
  if (Venue <> nil) then
    Exit(TtgMessageType.VenueMessage);
  if (Video <> nil) then
    Exit(TtgMessageType.VideoMessage);
  if (VideoNote <> nil) then
    Exit(TtgMessageType.VideoNoteMessage);
  if (Voice <> nil) then
    Exit(TtgMessageType.VoiceMessage);
  if not Text.IsEmpty then
    Exit(TtgMessageType.TextMessage);
  Result := TtgMessageType.UnknownMessage;
end;

function TTgMessage.Audio: ItgAudio;
begin
  Result := ReadToClass<TtgAudio>('audio');
end;

function TTgMessage.AuthorSignature: string;
begin
  Result := ReadToSimpleType<string>('author_signature');
end;

function TTgMessage.Caption: string;
begin
  Result := ReadToSimpleType<string>('caption');
end;

function TTgMessage.CaptionEntities: TArray<ItgMessageEntity>;
begin
  Result := ReadToArray<ItgMessageEntity>(TtgMessageEntity, 'caption_entities');
end;

function TTgMessage.ChannelChatCreated: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('channel_chat_created');
end;

function TTgMessage.Chat: ItgChat;
begin
  Result := ReadToClass<TtgChat>('chat');
end;

function TTgMessage.ConnectedWebsite: string;
begin
  Result := ReadToSimpleType<string>('connected_website');
end;

function TTgMessage.Contact: ItgContact;
begin
  Result := ReadToClass<TtgContact>('contact');
end;

function TTgMessage.Date: TDateTime;
begin
  Result := ReadToDateTime('date');
end;

function TTgMessage.DeleteChatPhoto: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('delete_chat_photo');
end;

function TTgMessage.Dice: ItgDice;
begin
  Result := ReadToClass<TtgDice>('dice');
end;

function TTgMessage.Venue: ItgVenue;
begin
  Result := ReadToClass<TtgVenue>('venue');
end;

function TTgMessage.Video: ItgVideo;
begin
  Result := ReadToClass<TtgVideo>('video');
end;

function TTgMessage.VideoNote: ItgVideoNote;
begin
  Result := ReadToClass<TtgVideoNote>('video_note');
end;

function TTgMessage.Voice: ItgVoice;
begin
  Result := ReadToClass<TtgVoice>('voice');
end;

{ TtgShippingOption }

function TtgShippingOption.ID: string;
begin
  Result := ReadToSimpleType<string>('id');
end;

function TtgShippingOption.Prices: TArray<ItgLabeledPrice>;
begin
  Result := ReadToArray<ItgLabeledPrice>(TtgLabeledPrice, 'prices');
end;

function TtgShippingOption.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

{ TtgUpdate }
function TtgUpdate.CallbackQuery: ItgCallbackQuery;
begin
  Result := ReadToClass<TtgCallbackQuery>('callback_query');
end;

function TtgUpdate.ChannelPost: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('channel_post');
end;

function TtgUpdate.ChosenInlineResult: ItgChosenInlineResult;
begin
  Result := ReadToClass<TtgChosenInlineResult>('chosen_inline_result');
end;

function TtgUpdate.EditedChannelPost: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('edited_channel_post');
end;

function TtgUpdate.EditedMessage: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('edited_message');
end;

function TtgUpdate.ID: Int64;
begin
  Result := ReadToSimpleType<Int64>('update_id');
end;

function TtgUpdate.InlineQuery: ItgInlineQuery;
begin
  Result := ReadToClass<TtgInlineQuery>('inline_query');
end;

function TtgUpdate.Message: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('message');
end;

function TtgUpdate.PreCheckoutQuery: ItgPreCheckoutQuery;
begin
  Result := ReadToClass<TtgPreCheckoutQuery>('pre_checkout_query');
end;

function TtgUpdate.ShippingQuery: ItgShippingQuery;
begin
  Result := ReadToClass<TtgShippingQuery>('shipping_query');
end;

function TtgUpdate.&Type: TtgUpdateType;
begin
  if CallbackQuery <> nil then
    Result := TtgUpdateType.CallbackQueryUpdate
  else if ChannelPost <> nil then
    Result := (TtgUpdateType.ChannelPost)
  else if ChosenInlineResult <> nil then
    Result := (TtgUpdateType.ChosenInlineResultUpdate)
  else if EditedChannelPost <> nil then
    Result := (TtgUpdateType.EditedChannelPost)
  else if EditedMessage <> nil then
    Result := (TtgUpdateType.EditedMessage)
  else if InlineQuery <> nil then
    Result := (TtgUpdateType.InlineQueryUpdate)
  else if Message <> nil then
    Result := (TtgUpdateType.MessageUpdate)
  else if PreCheckoutQuery <> nil then
    Result := (TtgUpdateType.PreCheckoutQueryUpdate)
  else if ShippingQuery <> nil then
    Result := (TtgUpdateType.ShippingQueryUpdate)
  else
    Result := TtgUpdateType.UnknownUpdate;
end;

{ TtgLocation }

constructor TtgLocation.Create(const ALatitude, ALongitude: Single);
var AJson: String;
begin
  SetLongitude(ALongitude);
  SetLatitude(ALatitude);
  AJson := '{ "latitude":'+ALatitude.ToString+'",';
  AJson := AJson + '"longitude":'+ALongitude.ToString+'}';
  Create(AJson);
end;

constructor TtgLocation.Create(const AJson: string);
begin
  inherited Create(AJson);
end;

function TtgLocation.GetLatitude: Single;
begin
  Result := ReadToSimpleType<Single>('latitude');
  FLat := Result;
end;

function TtgLocation.GetLongitude: Single;
begin
  Result := ReadToSimpleType<Single>('longitude');
  FLng := Result;
end;

procedure TtgLocation.SetLatitude(const Value: Single);
begin
  FLat := Value;
//  FJSON.AddPair('latitude', TJSONNumber.Create(Value));
end;

procedure TtgLocation.SetLongitude(const Value: Single);
begin
 FLng := Value;
 // FJSON.AddPair('longitude', TJSONNumber.Create(Value));
end;

{ TtgStickerSet }

function TtgStickerSet.ContainsMasks: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('contains_masks');
end;

function TtgStickerSet.Name: string;
begin
  Result := ReadToSimpleType<string>('name');
end;

function TtgStickerSet.Stickers: TArray<ItgSticker>;
begin
  Result := ReadToArray<ItgSticker>(TtgSticker, 'stickers');
end;

function TtgStickerSet.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

{ TtgLabeledPrice }
//UPDated By Ruan Diego Lacerda Menezes
constructor TtgLabeledPrice.Create(const AText: string; AAmount: Int64);
begin
  FText   := AText;
  FAmount := AAmount;

  if Not Assigned(FJSON) then
  Begin
    FJSON := TJSONObject.Create;
    FJSON.AddPair('label', TJSONString.Create(AText));
    FJSON.AddPair('amount', TJSONNumber.Create(AAmount));
  End;

  AJSon := '{["label"='+FText+',"amount"='+FAmount.ToString+']}';
  // '{["label":'+FText+','+'"amount":'+FAmount.ToString+']}';
  inherited Create(AJSon);
end;

constructor TtgLabeledPrice.Create(const AJson: string);
begin
 inherited Create(AJson);
end;

function TtgLabeledPrice.Amount: Int64;
begin
  Result := ReadToSimpleType<Int64>('amount');
end;

function TtgLabeledPrice.Text: string;
begin
  Result := ReadToSimpleType<string>('label');
end;

{ TtgResponseParameters }

function TtgResponseParameters.MigrateToChatId: Int64;
begin
  Result := ReadToSimpleType<Int64>('migrate_to_chat_id');
end;

function TtgResponseParameters.RetryAfter: Int64;
begin
  Result := ReadToSimpleType<Int64>('retry_after');
end;

{ TtgUser }

function TtgUser.FirstName: string;
begin
  Result := ReadToSimpleType<string>('first_name');
end;

function TtgUser.ID: Int64;
begin
  Result := ReadToSimpleType<Int64>('id');
end;

function TtgUser.IsBot: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('is_bot');
end;

function TtgUser.LanguageCode: string;
begin
  Result := ReadToSimpleType<string>('language_code');
end;

function TtgUser.LastName: string;
begin
  Result := ReadToSimpleType<string>('last_name');
end;

function TtgUser.Username: string;
begin
  Result := ReadToSimpleType<string>('username');
end;

{ TtgInlineQuery }

function TtgInlineQuery.From: ItgUser;
begin
  Result := ReadToClass<TtgUser>('from');
end;

function TtgInlineQuery.ID: string;
begin
  Result := ReadToSimpleType<string>('id');
end;

function TtgInlineQuery.Offset: string;
begin
  Result := ReadToSimpleType<string>('offset');
end;

function TtgInlineQuery.Query: string;
begin
  Result := ReadToSimpleType<string>('query');
end;

{ TtgChosenInlineResult }

function TtgChosenInlineResult.From: ItgUser;
begin
  Result := ReadToClass<TtgUser>('from');
end;

function TtgChosenInlineResult.InlineMessageId: string;
begin
  Result := ReadToSimpleType<string>('inline_message_id');
end;

function TtgChosenInlineResult.Location: ItgLocation;
begin
  Result := ReadToClass<TtgLocation>('location');
end;

function TtgChosenInlineResult.Query: string;
begin
  Result := ReadToSimpleType<string>('query');
end;

function TtgChosenInlineResult.ResultId: string;
begin
  Result := ReadToSimpleType<string>('result_id');
end;

{ TtgPreCheckoutQuery }

function TtgPreCheckoutQuery.Currency: string;
begin
  Result := ReadToSimpleType<string>('currency');
end;

function TtgPreCheckoutQuery.From: ItgUser;
begin
  Result := ReadToClass<TtgUser>('from');
end;

function TtgPreCheckoutQuery.ID: string;
begin
  Result := ReadToSimpleType<string>('id');
end;

function TtgPreCheckoutQuery.InvoicePayload: string;
begin
  Result := ReadToSimpleType<string>('invoice_payload');
end;

function TtgPreCheckoutQuery.OrderInfo: ItgOrderInfo;
begin
  Result := ReadToClass<TtgOrderInfo>('order_info');
end;

function TtgPreCheckoutQuery.ShippingOptionId: string;
begin
  Result := ReadToSimpleType<string>('shipping_option_id');
end;

function TtgPreCheckoutQuery.TotalAmount: Int64;
begin
  Result := ReadToSimpleType<Int64>('total_amount');
end;

{ TtgShippingQuery }

function TtgShippingQuery.From: ItgUser;
begin
  Result := ReadToClass<TtgUser>('from');
end;

function TtgShippingQuery.ID: string;
begin
  Result := ReadToSimpleType<string>('id');
end;

function TtgShippingQuery.InvoicePayload: string;
begin
  Result := ReadToSimpleType<string>('invoice_payload');
end;

function TtgShippingQuery.ShippingAddress: ItgShippingAddress;
begin
  Result := ReadToClass<TtgShippingAddress>('shipping_address');
end;

{ TtgChatPhoto }

function TtgChatPhoto.BigFileId: string;
begin
  Result := ReadToSimpleType<string>('big_file_id');
end;

function TtgChatPhoto.SmallFileId: string;
begin
  Result := ReadToSimpleType<string>('small_file_id');
end;

{ TtgChatMember }

function TtgChatMember.CanAddWebPagePreviews: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_add_web_page_previews');
end;

function TtgChatMember.CanBeEdited: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_change_info');
end;

function TtgChatMember.CanChangeInfo: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_change_info');
end;

function TtgChatMember.CanDeleteMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_delete_messages');
end;

function TtgChatMember.CanEditMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_edit_messages');
end;

function TtgChatMember.CanInviteUsers: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_invite_users');
end;

function TtgChatMember.CanPinMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_pin_messages');
end;

function TtgChatMember.CanPostMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_post_messages');
end;

function TtgChatMember.CanPromoteMembers: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_promote_members');
end;

function TtgChatMember.CanRestrictMembers: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_restrict_members');
end;

function TtgChatMember.CanSendMediaMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_send_media_messages');
end;

function TtgChatMember.CanSendMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_send_messages');
end;

function TtgChatMember.CanSendOtherMessages: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_send_other_messages');
end;

function TtgChatMember.Status: TtgChatMemberStatus;
var
  LStatus: string;
begin
  Result := TtgChatMemberStatus.Member;
  LStatus := ReadToSimpleType<string>('status');
  if LStatus = 'creator' then
    Result := TtgChatMemberStatus.Creator
  else if LStatus = 'administrator' then
    Result := TtgChatMemberStatus.Administrator
  else if LStatus = 'member' then
    Result := TtgChatMemberStatus.Member
  else if LStatus = 'restricted' then
    Result := TtgChatMemberStatus.Restricted
  else if LStatus = 'left' then
    Result := TtgChatMemberStatus.Left
  else if LStatus = 'kicked' then
    Result := TtgChatMemberStatus.Kicked
  else
    TBaseJson.UnSupported;
end;

function TtgChatMember.UntilDate: TDateTime;
begin
  Result := ReadToDateTime('until_date');
end;

function TtgChatMember.User: ItgUser;
begin
  Result := ReadToClass<TtgUser>('user');
end;

{ TtgChat }

function TtgChat.AllMembersAreAdministrators: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('all_members_are_administrators');
end;

function TtgChat.CanSetStickerSet: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('can_set_sticker_set');
end;

function TtgChat.Description: string;
begin
  Result := ReadToSimpleType<string>('description');
end;

function TtgChat.FirstName: string;
begin
  Result := ReadToSimpleType<string>('first_name');
end;

function TtgChat.ID: Int64;
begin
  Result := ReadToSimpleType<Int64>('id');
end;

function TtgChat.InviteLink: string;
begin
  Result := ReadToSimpleType<string>('invite_link');
end;

function TtgChat.IsGroup: Boolean;
var
  LValue: string;
begin
  LValue := ReadToSimpleType<string>('type');
  result := (LValue = 'group');
end;

function TtgChat.LastName: string;
begin
  Result := ReadToSimpleType<string>('last_name');
end;

function TtgChat.Photo: ItgChatPhoto;
begin
  Result := ReadToClass<TtgChatPhoto>('photo');
end;

function TtgChat.PinnedMessage: ITgMessage;
begin
  Result := ReadToClass<TTgMessage>('pinned_message');
end;

function TtgChat.StickerSetName: string;
begin
  Result := ReadToSimpleType<string>('sticker_set_name');
end;

function TtgChat.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

function TtgChat.TypeChat: TtgChatType;
var
  LValue: string;
begin
  LValue := ReadToSimpleType<string>('type');
  Result := TtgChatType.&private;
  if LValue = 'private' then
    Result := TtgChatType.&private
  else if LValue = 'group' then
    Result := TtgChatType.Group
  else if LValue = 'channel' then
    Result := TtgChatType.Channel
  else if LValue = 'supergroup' then
    Result := TtgChatType.Supergroup
  else
    UnSupported;
end;

function TtgChat.Username: string;
begin
  Result := ReadToSimpleType<string>('username');
end;

{ TtgSuccessfulPayment }

function TtgSuccessfulPayment.Currency: string;
begin
  Result := ReadToSimpleType<string>('currency');
end;

function TtgSuccessfulPayment.InvoicePayload: string;
begin
  Result := ReadToSimpleType<string>('invoice_payload');
end;

function TtgSuccessfulPayment.OrderInfo: ItgOrderInfo;
begin
  Result := ReadToClass<TtgOrderInfo>('order_info');
end;

function TtgSuccessfulPayment.ProviderPaymentChargeId: string;
begin
  Result := ReadToSimpleType<string>('provider_payment_charge_id');
end;

function TtgSuccessfulPayment.ShippingOptionId: string;
begin
  Result := ReadToSimpleType<string>('shipping_option_id');
end;

function TtgSuccessfulPayment.TelegramPaymentChargeId: string;
begin
  Result := ReadToSimpleType<string>('telegram_payment_charge_id');
end;

function TtgSuccessfulPayment.TotalAmount: Int64;
begin
  Result := ReadToSimpleType<Int64>('total_amount');
end;

{ TtgWebhookInfo }

function TtgWebhookInfo.AllowedUpdates: TArray<string>;
var
  LJsonArray: TJSONArray;
  I: Integer;
begin
  LJsonArray := FJSON.GetValue('allowed_updates') as TJSONArray;
  if (not Assigned(LJsonArray)) or LJsonArray.Null then
    Exit(nil);
  SetLength(Result, LJsonArray.Count);
  for I := 0 to LJsonArray.Count - 1 do
    Result[I] := ReadToSimpleType<string>(LJsonArray.Items[I].ToString);
end;

function TtgWebhookInfo.HasCustomCertificate: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('has_custom_certificate');
end;

function TtgWebhookInfo.LastErrorDate: TDateTime;
begin
  Result := ReadToDateTime('last_error_date');
end;

function TtgWebhookInfo.LastErrorMessage: string;
begin
  Result := ReadToSimpleType<string>('last_error_message');
end;

function TtgWebhookInfo.MaxConnections: Int64;
begin
  Result := ReadToSimpleType<Int64>('max_connections');
end;

function TtgWebhookInfo.PendingUpdateCount: Int64;
begin
  Result := ReadToSimpleType<Int64>('pending_update_count');
end;

function TtgWebhookInfo.Url: string;
begin
  Result := ReadToSimpleType<string>('url');
end;

{ TtgMessageEntity }

function TtgMessageEntity.Length: Int64;
begin
  Result := ReadToSimpleType<Int64>('length');
end;

function TtgMessageEntity.Offset: Int64;
begin
  Result := ReadToSimpleType<Int64>('offset');
end;

function TtgMessageEntity.TypeMessage: TtgMessageEntityType;
var
  LValue: string;
begin
  LValue := ReadToSimpleType<string>('type');
  Result := TtgMessageEntityType.N_A;
  if LValue = 'mention' then
    Result := TtgMessageEntityType.mention
  else if LValue = 'hashtag' then
    Result := TtgMessageEntityType.hashtag
  else if LValue = 'bot_command' then
    Result := TtgMessageEntityType.bot_command
  else if LValue = 'url' then
    Result := TtgMessageEntityType.Url
  else if LValue = 'bold' then
    Result := TtgMessageEntityType.bold
  else if LValue = 'italic' then
    Result := TtgMessageEntityType.italic
  else if LValue = 'code' then
    Result := TtgMessageEntityType.code
  else if LValue = 'pre' then
    Result := TtgMessageEntityType.pre
  else if LValue = 'text_link' then
    Result := TtgMessageEntityType.text_link
  else if LValue = 'text_mention' then
    Result := TtgMessageEntityType.text_mention
end;

function TtgMessageEntity.Url: string;
begin
  Result := ReadToSimpleType<string>('url');
end;

function TtgMessageEntity.User: ItgUser;
begin
  Result := ReadToClass<TtgUser>('user');
end;

{ TtgAudio }

function TtgAudio.Duration: Int64;
begin
  Result := ReadToSimpleType<Int64>('duration');
end;

function TtgAudio.MimeType: string;
begin
  Result := ReadToSimpleType<string>('mime_type');
end;

function TtgAudio.Performer: string;
begin
  Result := ReadToSimpleType<string>('performer');
end;

function TtgAudio.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

{ TtgPhotoSize }

function TtgPhotoSize.Height: Int64;
begin
  Result := ReadToSimpleType<Int64>('height');
end;

function TtgPhotoSize.Width: Int64;
begin
  Result := ReadToSimpleType<Int64>('width');
end;

{ TtgMaskPosition }

function TtgMaskPosition.Point: TtgMaskPositionPoint;
var
  LValue: string;
begin
  LValue := ReadToSimpleType<string>('point');
  Result := TtgMaskPositionPoint.forehead;
  if LValue = 'forehead' then
    Result := TtgMaskPositionPoint.forehead
  else if LValue = 'eyes' then
    Result := TtgMaskPositionPoint.eyes
  else if LValue = 'mouth' then
    Result := TtgMaskPositionPoint.mouth
  else if LValue = 'chin' then
    Result := TtgMaskPositionPoint.chin
  else
    UnSupported;
end;

function TtgMaskPosition.Scale: Single;
begin
  Result := ReadToSimpleType<Single>('scale');
end;

function TtgMaskPosition.XShift: Single;
begin
  Result := ReadToSimpleType<Single>('x_shift');
end;

function TtgMaskPosition.YShift: Single;
begin
  Result := ReadToSimpleType<Single>('y_shift');
end;

{ TtgSticker }

function TtgSticker.Emoji: string;
begin
  Result := ReadToSimpleType<string>('emoji');
end;

function TtgSticker.Height: Int64;
begin
  Result := ReadToSimpleType<Int64>('height');
end;

function TtgSticker.MaskPosition: ItgMaskPosition;
begin
  Result := ReadToClass<TtgMaskPosition>('mask_position');
end;

function TtgSticker.SetName: string;
begin
  Result := ReadToSimpleType<string>('set_name');
end;

function TtgSticker.Thumb: ItgPhotoSize;
begin
  Result := ReadToClass<TtgPhotoSize>('thumb');
end;

function TtgSticker.Width: Int64;
begin
  Result := ReadToSimpleType<Int64>('width');
end;

{ TtgGame }

function TtgGame.Animation: ItgAnimation;
begin
  Result := ReadToClass<TtgAnimation>('animation');
end;

function TtgGame.Description: string;
begin
  Result := ReadToSimpleType<string>('description');
end;

function TtgGame.Photo: TArray<ItgPhotoSize>;
begin
  Result := ReadToArray<ItgPhotoSize>(TtgPhotoSize, 'photo');
end;

function TtgGame.Text: string;
begin
  Result := ReadToSimpleType<string>('text');
end;

function TtgGame.TextEntities: TArray<ItgMessageEntity>;
begin
  Result := ReadToArray<ItgMessageEntity>(TtgMessageEntity, 'text_entities');
end;

function TtgGame.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

{ TtgInvoice }

function TtgInvoice.Currency: string;
begin
  Result := ReadToSimpleType<string>('currency');
end;

function TtgInvoice.Description: string;
begin
  Result := ReadToSimpleType<string>('description');
end;

function TtgInvoice.StartParameter: string;
begin
  Result := ReadToSimpleType<string>('start_parameter');
end;

function TtgInvoice.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

function TtgInvoice.TotalAmount: Int64;
begin
  Result := ReadToSimpleType<Int64>('total_amount');
end;

{ TtgVideo }

function TtgVideo.Duration: Int64;
begin
  Result := ReadToSimpleType<Int64>('duration');
end;

function TtgVideo.Height: Int64;
begin
  Result := ReadToSimpleType<Int64>('height');
end;

function TtgVideo.MimeType: string;
begin
  Result := ReadToSimpleType<string>('mime_type');
end;

function TtgVideo.Thumb: ItgPhotoSize;
begin
  Result := ReadToClass<TtgPhotoSize>('thumb');
end;

function TtgVideo.Width: Int64;
begin
  Result := ReadToSimpleType<Int64>('width');
end;

{ TtgContact }

constructor TtgContact.Create(const AJson: string);
begin
  inherited Create(AJson);
end;

constructor TtgContact.Create(const ANumeroTelelefone, APrimeiroNome, UltimoNome: String);
begin
  SetPhoneNumber(ANumeroTelelefone);
  SetFirstName(APrimeiroNome);
  SetLastName(UltimoNome);
  inherited Create(FJson);
end;

procedure TtgContact.SetFirstName(const Value: string);
begin
  FJson := FJson + ' "first_name":"'+Value+'",';
//  FJSON.AddPair('first_name', TJSONString.Create(Value));
end;

procedure TtgContact.SetLastName(const Value: string);
begin
  FJson := FJson + ' "last_name":"'+Value+'"}';
//  FJSON.AddPair('last_name', TJSONString.Create(Value));
end;

procedure TtgContact.SetPhoneNumber(const Value: string);
begin
  FJson := '{"phone_number":"'+Value+'",';
 // FJSON.AddPair('phone_number', TJSONString.Create(Value));
end;

function TtgContact.FirstName: string;
begin
  Result := ReadToSimpleType<string>('first_name');
end;

function TtgContact.LastName: string;
begin
  Result := ReadToSimpleType<string>('last_name');
end;

function TtgContact.PhoneNumber: string;
begin
  Result := ReadToSimpleType<string>('phone_number');
end;

function TtgContact.UserId: Int64;
begin
  Result := ReadToSimpleType<Int64>('user_id');
end;

{ TtgVenue }

constructor TtgVenue.Create(const ALocation: ItgLocation; ATitle, AAddress,
  AFoursquareId, AFoursquareType: String);
begin
  SetLocation(ALocation);
  SetTitle(ATitle);
  SetAddress(AAddress);
  SetFoursquareId(AFoursquareId);
  SetFoursquareType(AFoursquareType);
end;

function TtgVenue.Address: string;
begin
  Result := ReadToSimpleType<string>('address');
end;

function TtgVenue.FoursquareId: string;
begin
  Result := ReadToSimpleType<string>('foursquare_id');
end;

function TtgVenue.FoursquareType: string;
begin
  Result := ReadToSimpleType<string>('foursquare_type');
end;

function TtgVenue.Location: ItgLocation;
begin
  Result := ReadToClass<TtgLocation>('location');
end;

function TtgVenue.Title: string;
begin
  Result := ReadToSimpleType<string>('title');
end;

constructor TtgVenue.Create(const AJson: string);
begin
  inherited Create(AJson);
end;

destructor TtgVenue.Destroy;
begin
  if Assigned(FLocation) then
    FreeAndNil(FLocation);
  Inherited Destroy;
end;

constructor TtgVenue.Create(const ALatitude, ALongitude: Single; ATitle,
  AAddress, AFoursquareId, AFoursquareType: String);
begin
  SetLongitude(ALongitude);
  SetLatitude(ALatitude);
  SetTitle(ATitle);
  SetAddress(AAddress);
  SetFoursquareId(AFoursquareId);
  SetFoursquareType(AFoursquareType);

  if Not Assigned(FLocation) then
    FLocation := TtgLocation.Create(ALatitude, ALongitude);
end;

procedure TtgVenue.SetLatitude(const Value: Single);
begin
  FLatitude := Value;
end;

procedure TtgVenue.SetLocation(const Value: ItgLocation);
begin
  FLocation := Value;
  SetLatitude(Value.Latitude);
  SetLongitude(Value.Longitude);
end;

procedure TtgVenue.SetLongitude(const Value: Single);
begin
  FLongitude := Value;
end;

procedure TtgVenue.SetTitle(const Value: String);
begin
  FTitle := Value;
end;

procedure TtgVenue.SetAddress(const Value: String);
begin
  FAddress := Value;
end;

procedure TtgVenue.SetFoursquareId(const Value: String);
begin
  FFoursquareId := Value;
end;

procedure TtgVenue.SetFoursquareType(const Value: String);
begin
  FFoursquareType := Value;
end;

{ TtgVideoNote }

function TtgVideoNote.Duration: Int64;
begin
  Result := ReadToSimpleType<Int64>('duration');
end;

function TtgVideoNote.FileId: string;
begin
  Result := ReadToSimpleType<string>('file_id');
end;

function TtgVideoNote.FileSize: Int64;
begin
  Result := ReadToSimpleType<Int64>('file_size');
end;

function TtgVideoNote.Length: Int64;
begin
  Result := ReadToSimpleType<Int64>('length');
end;

function TtgVideoNote.Thumb: ItgPhotoSize;
begin
  Result := ReadToClass<TtgPhotoSize>('thumb');
end;

{ TtgVoice }

function TtgVoice.Duration: Int64;
begin
  Result := ReadToSimpleType<Int64>('duration');
end;

function TtgVoice.MimeType: string;
begin
  Result := ReadToSimpleType<string>('mime_type');
end;

{ TtgOrderInfo }

function TtgOrderInfo.Email: string;
begin
  Result := ReadToSimpleType<string>('email');
end;

function TtgOrderInfo.Name: string;
begin
  Result := ReadToSimpleType<string>('name');
end;

function TtgOrderInfo.PhoneNumber: string;
begin
  Result := ReadToSimpleType<string>('phone_number');
end;

function TtgOrderInfo.ShippingAddress: ItgShippingAddress;
begin
  Result := ReadToClass<TtgShippingAddress>('shipping_address');
end;

{ TtgShippingAddress }

function TtgShippingAddress.City: string;
begin
  Result := ReadToSimpleType<string>('city');
end;

function TtgShippingAddress.CountryCode: string;
begin
  Result := ReadToSimpleType<string>('country_code');
end;

function TtgShippingAddress.PostCode: string;
begin
  Result := ReadToSimpleType<string>('post_code');
end;

function TtgShippingAddress.State: string;
begin
  Result := ReadToSimpleType<string>('state');
end;

function TtgShippingAddress.StreetLine1: string;
begin
  Result := ReadToSimpleType<string>('street_line1');
end;

function TtgShippingAddress.StreetLine2: string;
begin
  Result := ReadToSimpleType<string>('street_line2');
end;

{ TtgUserProfilePhotos }

function TtgUserProfilePhotos.Photos: TArray<TArray<ItgPhotoSize>>;
var
  PhotoArr, SizeArr: TJSONArray;
  PhotoIndex, ResultPhotoIndex: Integer;
  SizeIndex: Integer;
  GUID: TGUID;
begin
  Result := nil;
  PhotoArr := FJSON.GetValue('photos') as TJSONArray;
  if (not Assigned(PhotoArr)) or PhotoArr.Null then
    Exit;
  GUID := GetTypeData(TypeInfo(ItgPhotoSize))^.GUID;
  SetLength(Result, PhotoArr.Count);
  //Some photos could be empty(?), so we should
  //use separated counter instead of copy of the FOR-loop variable value.
  ResultPhotoIndex := 0;
  for PhotoIndex := 0 to High(Result) do
  begin
    //get array of photoSizes from photoArr[i]
    SizeArr := PhotoArr.Items[PhotoIndex] as TJSONArray;
    //check for empty photo
    if (not Assigned(SizeArr)) or SizeArr.Null then
      Continue;
    //set length of photoSize array
    SetLength(Result[ResultPhotoIndex], SizeArr.Count);
    //fills the result[RealIndex] with array of sizes
    for SizeIndex := 0 to High(Result[ResultPhotoIndex]) do
      GetTgClass.Create(SizeArr.Items[SizeIndex].ToString).GetInterface(GUID, Result[ResultPhotoIndex, SizeIndex]);
    //inc counter of processed photos
    Inc(ResultPhotoIndex);
  end;
  //Set real length of the result array. length = zero based index + 1;
  SetLength(Result, ResultPhotoIndex + 1);
end;

function TtgUserProfilePhotos.TotalCount: Int64;
begin
  Result := ReadToSimpleType<Int64>('total_count');
end;

{ TtgPollOption }

function TtgPollOption.text: String;
begin
  Result := ReadToSimpleType<String>('text');
end;

function TtgPollOption.voter_count: String;
begin
  Result := ReadToSimpleType<String>('voter_count');
end;

{ TtgPollAnswer }

function TtgPollAnswer.option_ids: TArray<Integer>;
var
  LJsonArray: TJSONArray;
  I: Integer;
begin
  LJsonArray := FJSON.GetValue('option_ids') as TJSONArray;
  if (not Assigned(LJsonArray)) or LJsonArray.Null then
    Exit(nil);
  SetLength(Result, LJsonArray.Count);
  for I := 0 to LJsonArray.Count - 1 do
    Result[I] := ReadToSimpleType<integer>(LJsonArray.Items[I].ToString);
end;

function TtgPollAnswer.poll_id: String;
begin
  Result := ReadToSimpleType<String>('poll_id');
end;

function TtgPollAnswer.user: ItgUser;
begin
  Result := ReadToSimpleType<ItgUser>('user');
end;

{ TtgPoll }

function TtgPoll.allows_multiple_answers: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('allows_multiple_answers');
end;

function TtgPoll.correct_option_id: Integer;
begin
  Result := ReadToSimpleType<Integer>('correct_option_id');
end;

function TtgPoll.Id: String;
begin
  Result := ReadToSimpleType<String>('Id');
end;

function TtgPoll.is_anonymous: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('is_anonymous');
end;

function TtgPoll.is_closed: Boolean;
begin
  Result := ReadToSimpleType<Boolean>('is_closed');
end;

function TtgPoll.options: TArray<ItgPollOption>;
begin
  Result := ReadToArray<ItgPollOption>(TtgPollOption, 'options');
end;

function TtgPoll.question: String;
begin
  Result := ReadToSimpleType<String>('question');
end;

function TtgPoll.total_voter_count: Integer;
begin
  Result := ReadToSimpleType<Integer>('total_voter_count');
end;

function TtgPoll.&type: String;
begin
  Result := ReadToSimpleType<String>('type');
end;

{ TtgDice }

function TtgDice.value: Integer;
begin
  Result := ReadToSimpleType<Integer>('value');
end;

End.

