.class public final enum Lcom/android/internal/telephony/IccCard$IccCardState;
.super Ljava/lang/Enum;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccCardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCard$IccCardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCard$IccCardState;

.field public static final enum CARD_ABSENT:Lcom/android/internal/telephony/IccCard$IccCardState;

.field public static final enum CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

.field public static final enum CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, Lcom/android/internal/telephony/IccCard$IccCardState;

    const-string v1, "CARD_INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCard$IccCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    new-instance v0, Lcom/android/internal/telephony/IccCard$IccCardState;

    const-string v1, "CARD_ABSENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCard$IccCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_ABSENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    new-instance v0, Lcom/android/internal/telephony/IccCard$IccCardState;

    const-string v1, "CARD_PRESENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCard$IccCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    .line 262
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/IccCard$IccCardState;

    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_INIT:Lcom/android/internal/telephony/IccCard$IccCardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_ABSENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCard$IccCardState;->CARD_PRESENT:Lcom/android/internal/telephony/IccCard$IccCardState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->$VALUES:[Lcom/android/internal/telephony/IccCard$IccCardState;

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
    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCard$IccCardState;
    .locals 1
    .parameter "name"

    .prologue
    .line 262
    const-class v0, Lcom/android/internal/telephony/IccCard$IccCardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCard$IccCardState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCard$IccCardState;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/android/internal/telephony/IccCard$IccCardState;->$VALUES:[Lcom/android/internal/telephony/IccCard$IccCardState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCard$IccCardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCard$IccCardState;

    return-object v0
.end method
