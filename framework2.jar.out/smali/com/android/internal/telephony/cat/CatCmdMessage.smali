.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/internal/telephony/cat/HtcIfCatCmdMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$2;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final SECURE:Z


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field private mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

.field private mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->DEBUG:Z

    .line 33
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->SECURE:Z

    .line 304
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 41
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 42
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 43
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 44
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 45
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 178
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 179
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 180
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/Menu;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 181
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/Input;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 182
    sget-object v2, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    goto :goto_0

    .line 192
    :pswitch_2
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 193
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 194
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 198
    :pswitch_3
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, eventLength:I
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->SECURE:Z

    if-eqz v2, :cond_1

    const-string v2, "StkCmdMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET_UP_EVENT_LIST parcelin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    if-lez v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    new-array v3, v0, [I

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_0

    .line 209
    .end local v0           #eventLength:I
    :pswitch_4
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 211
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->values()[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    array-length v2, v2

    if-lez v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    const-class v2, Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object v2, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 227
    :pswitch_5
    new-instance v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 228
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 229
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v4, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .local v1, len:I
    if-lez v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    new-array v3, v1, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 5
    .parameter "cmdParams"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 41
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 42
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 43
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 44
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 45
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 93
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 94
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 175
    .end local p1
    :goto_0
    return-void

    .line 97
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 105
    .restart local p1
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 109
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    goto :goto_0

    .restart local p1
    :pswitch_3
    move-object v1, p1

    .line 112
    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 113
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->url:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .restart local p1
    :pswitch_4
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 119
    .local v0, params:Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 120
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 123
    .end local v0           #params:Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_5
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 124
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 125
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 130
    .restart local p1
    :pswitch_6
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    .line 131
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/EventSetupParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/EventSetupParams;->eventList:[I

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    goto :goto_0

    .restart local p1
    :pswitch_7
    move-object v1, p1

    .line 136
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 137
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v4, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 139
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->port:I

    iput v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    iput v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 145
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    .restart local p1
    :pswitch_8
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1
    iget v2, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v4, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v3, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 156
    .restart local p1
    :pswitch_9
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    iput v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1
    iget v2, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    iput v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v3, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 162
    .restart local p1
    :pswitch_a
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/SendDataParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    iput v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v4, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 168
    .restart local p1
    :pswitch_b
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v4, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v4, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v3, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object v0
.end method

.method public getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    return-object v0
.end method

.method public getCmdQualifier()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    return-object v0
.end method

.method public getEventSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public getTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 246
    sget-object v2, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mEventSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;

    iget-object v0, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$EventSettings;->eventList:[I

    .line 262
    .local v0, eventList:[I
    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 265
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->SECURE:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET_UP_EVENT_LIST: size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :cond_2
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 273
    .end local v0           #eventList:[I
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->value()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 283
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 291
    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, len:I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    if-eqz v2, :cond_4

    .line 295
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v1, v2

    .line 296
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    if-lez v1, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
