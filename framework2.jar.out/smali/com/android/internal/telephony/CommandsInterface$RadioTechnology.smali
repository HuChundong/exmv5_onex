.class public final enum Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioTechnology"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_GSM:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSPAP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public static final enum RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_GPRS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EDGE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_UMTS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_IS95A"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_IS95B"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_1xRTT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_0"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_A"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSDPA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSUPA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSPA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EVDO_B"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_EHRPD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_LTE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_HSPAP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPAP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 117
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    const-string v1, "RADIO_TECH_GSM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GSM:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 99
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPAP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GSM:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getRadioTechFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 2
    .parameter "techInt"

    .prologue
    .line 150
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 152
    .local v0, rt:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    move-result-object v1

    aget-object v0, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 1
    .parameter "name"

    .prologue
    .line 99
    const-class v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    return-object v0
.end method


# virtual methods
.method public is3GPP()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPAP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GSM:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdma()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_IS95B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_1xRTT:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EHRPD:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEvdo()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_0:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_A:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EVDO_B:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GPRS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_EDGE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UMTS:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSDPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSUPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPA:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_LTE:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_HSPAP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_GSM:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
