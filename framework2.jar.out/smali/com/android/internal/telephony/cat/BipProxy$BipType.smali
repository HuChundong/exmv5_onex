.class final enum Lcom/android/internal/telephony/cat/BipProxy$BipType;
.super Ljava/lang/Enum;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/BipProxy$BipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/BipProxy$BipType;

.field public static final enum DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

.field public static final enum NONE_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

.field public static final enum SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;

    const-string v1, "NONE_BIP"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/BipProxy$BipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;->NONE_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;

    const-string v1, "DEFAULT_BIP"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cat/BipProxy$BipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;

    const-string v1, "SPECIFIC_BIP"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cat/BipProxy$BipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/cat/BipProxy$BipType;

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->NONE_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->DEFAULT_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/BipProxy$BipType;->SPECIFIC_BIP:Lcom/android/internal/telephony/cat/BipProxy$BipType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;->$VALUES:[Lcom/android/internal/telephony/cat/BipProxy$BipType;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/BipProxy$BipType;
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    const-class v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/BipProxy$BipType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/cat/BipProxy$BipType;->$VALUES:[Lcom/android/internal/telephony/cat/BipProxy$BipType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/BipProxy$BipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/BipProxy$BipType;

    return-object v0
.end method
