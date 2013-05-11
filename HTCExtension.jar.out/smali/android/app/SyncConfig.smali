.class public Landroid/app/SyncConfig;
.super Ljava/lang/Object;
.source "SyncConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAABEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 237
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 244
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    .line 252
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    .line 256
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x9f

    if-eq v1, v2, :cond_0

    .line 260
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x147

    if-eq v1, v2, :cond_0

    .line 264
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2aa

    if-eq v1, v2, :cond_0

    .line 268
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEASEnabled()Z
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public static isMyCommunityeEnabled()Z
    .locals 4

    .prologue
    const/16 v3, 0xd0

    const/4 v0, 0x1

    .line 220
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 232
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMyPhoneBookEnabled()Z
    .locals 6

    .prologue
    const/16 v5, 0x9b

    const/16 v4, 0x26

    const/16 v3, 0xd0

    const/4 v0, 0x1

    .line 65
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v5, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v5, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 79
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 86
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v1, v4, :cond_0

    .line 93
    :cond_4
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 100
    :cond_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_6

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 106
    :cond_6
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_7

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 112
    :cond_7
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_8

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 118
    :cond_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v4, :cond_9

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 124
    :cond_9
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_a

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 130
    :cond_a
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdf

    if-ne v1, v2, :cond_b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 136
    :cond_b
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-ne v1, v2, :cond_c

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 142
    :cond_c
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2d7

    if-ne v1, v2, :cond_d

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 148
    :cond_d
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x146

    if-ne v1, v2, :cond_e

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 154
    :cond_e
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x23f

    if-ne v1, v2, :cond_f

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 160
    :cond_f
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x240

    if-ne v1, v2, :cond_10

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 164
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static isMyPhoneBookProfileEnabled()Z
    .locals 5

    .prologue
    const/16 v4, 0x26

    const/16 v3, 0xd0

    const/4 v0, 0x1

    .line 173
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-nez v1, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v1, v4, :cond_0

    .line 187
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_3

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 193
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 199
    :cond_4
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 205
    :cond_5
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v4, :cond_6

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 211
    :cond_6
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe1

    if-ne v1, v2, :cond_7

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v3, :cond_0

    .line 215
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPCSyncEnabled()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
