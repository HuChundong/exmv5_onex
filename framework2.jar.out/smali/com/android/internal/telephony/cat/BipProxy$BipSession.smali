.class final enum Lcom/android/internal/telephony/cat/BipProxy$BipSession;
.super Ljava/lang/Enum;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BipSession"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/BipProxy$BipSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field public static final enum BIP_STATE_CLOSE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field public static final enum BIP_STATE_DROPPED:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field public static final enum BIP_STATE_IDLE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field public static final enum BIP_STATE_OPEN:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field public static final enum BIP_STATE_RECEIVE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

.field public static final enum BIP_STATE_SEND:Lcom/android/internal/telephony/cat/BipProxy$BipSession;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    const-string v1, "BIP_STATE_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cat/BipProxy$BipSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_IDLE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    const-string v1, "BIP_STATE_OPEN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cat/BipProxy$BipSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_OPEN:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    const-string v1, "BIP_STATE_CLOSE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cat/BipProxy$BipSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_CLOSE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    const-string v1, "BIP_STATE_DROPPED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/cat/BipProxy$BipSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_DROPPED:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    const-string v1, "BIP_STATE_SEND"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/cat/BipProxy$BipSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_SEND:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    const-string v1, "BIP_STATE_RECEIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$BipSession;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_RECEIVE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_IDLE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_OPEN:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_CLOSE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_DROPPED:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_SEND:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->BIP_STATE_RECEIVE:Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->$VALUES:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/BipProxy$BipSession;
    .locals 1
    .parameter "name"

    .prologue
    .line 108
    const-class v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/BipProxy$BipSession;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipSession;->$VALUES:[Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/BipProxy$BipSession;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/BipProxy$BipSession;

    return-object v0
.end method
