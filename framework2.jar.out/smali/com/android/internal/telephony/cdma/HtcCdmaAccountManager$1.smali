.class synthetic Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;
.super Ljava/lang/Object;
.source "HtcCdmaAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/android/internal/telephony/IccCardStatus$CardState;->values()[Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaAccountManager$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 315
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
