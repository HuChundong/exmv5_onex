.class public Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelSettings"
.end annotation


# instance fields
.field public bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

.field public bufSize:I

.field public channel:I

.field public cid:Ljava/lang/Integer;

.field public destinationAddress:[B

.field public networkAccessName:Ljava/lang/String;

.field public port:I

.field public protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field public userLogin:Ljava/lang/String;

.field public userPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->this$0:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
