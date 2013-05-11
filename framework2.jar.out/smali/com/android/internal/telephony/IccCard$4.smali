.class synthetic Lcom/android/internal/telephony/IccCard$4;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 795
    invoke-static {}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->values()[Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$IccCardApplication$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 405
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    :try_start_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    .line 795
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
