.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

.field bufSize:I

.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field destinationAddress:[B

.field itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

.field networkAccessName:Ljava/lang/String;

.field userLogin:Ljava/lang/String;

.field userPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;ILcom/android/internal/telephony/cat/InterfaceTransportLevel;[BLcom/android/internal/telephony/cat/BearerDescription;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "bufSize"
    .parameter "itl"
    .parameter "destinationAddress"
    .parameter "bearerDescription"
    .parameter "networkAccessName"
    .parameter "userLogin"
    .parameter "userPassword"

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 190
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    .line 192
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    .line 193
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    .line 194
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 195
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 205
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    .line 206
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    .line 207
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    .line 208
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 209
    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 210
    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    .line 211
    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    .line 212
    return-void
.end method
