.class public Lcom/android/internal/telephony/HtcTelephonyCapability;
.super Ljava/lang/Object;
.source "HtcTelephonyCapability.java"


# static fields
.field public static final BUILT_ACCOUNT_CAPABILITIES:[I = null

.field public static final BUILT_ACCOUNT_FEATURE_FLAG_ICC_FOR_DATA_ONLY:I = -0x80000000

.field public static final BUILT_ACCOUNT_MAIN_FLAG_NV:I = 0x2

.field public static final BUILT_ACCOUNT_MAIN_FLAG_RUIM:I = 0x4

.field public static final BUILT_ACCOUNT_MAIN_FLAG_UICC:I = 0x10

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM:I = 0x1

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM_RUIM:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final BUILT_DATA_CAPABILITIES:I = 0x0

.field public static final BUILT_DATA_MAIN_FLAG_DEFAULT:I = 0x1

.field public static final BUILT_DATA_MAIN_FLAG_MM:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final BUILT_PHONE_CAPABILITIES:I = 0x0

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_DUAL_STAND_BY:I = 0x40000000

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_SINGLE_STAND_BY:I = 0x20000000

.field public static final BUILT_PHONE_FEATURE_FLAG_WORLD_PHONE:I = -0x80000000

.field public static final BUILT_PHONE_MAIN_FLAG_CDMA:I = 0x2

.field public static final BUILT_PHONE_MAIN_FLAG_GSM:I = 0x1

.field public static final BUILT_PHONE_MAIN_FLAG_GSM1:I = 0x4

#the value of this static final field might be set in the static constructor
.field public static final BUILT_RAT_CAPABILITIES:I = 0x0

.field public static final BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA:I = 0x2

.field public static final BUILT_RAT_MAIN_FLAG_LTE_BOUND_UMTS:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final BUILT_RIL_CAPABILITIES:I = 0x0

.field public static final BUILT_RIL_MAIN_FLAG_AT_BASED:I = 0x1

.field public static final BUILT_RIL_MAIN_FLAG_QMI:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final BUILT_SMS_CAPABILITIES:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final BUILT_TABLET_CAPABILITIES:I = 0x0

.field public static final BUILT_TABLET_FEATURE_PHONE_ENABLED:I = -0x80000000

.field public static final BUILT_TABLET_FEATURE_WIFI_ONLY:I = 0x40000000

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltPhoneCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    .line 199
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltTabletCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_TABLET_CAPABILITIES:I

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltAccountCapabilites()[I

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltDataCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_DATA_CAPABILITIES:I

    .line 202
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltSmsCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_SMS_CAPABILITIES:I

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRilCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRatCapabilities()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    .line 205
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBuiltAccountCapabilites()[I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, capabilities:[I
    const/4 v1, 0x0

    .line 418
    .local v1, preferNetworkMode:Ljava/lang/Integer;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 504
    if-nez v1, :cond_0

    .line 505
    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 508
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 529
    :pswitch_0
    new-array v0, v4, [I

    .end local v0           #capabilities:[I
    aput v3, v0, v3

    .line 530
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    .line 537
    :goto_0
    return-object v0

    .line 422
    :sswitch_0
    new-array v0, v5, [I

    .end local v0           #capabilities:[I
    fill-array-data v0, :array_0

    .line 423
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    .line 424
    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto :goto_0

    .line 430
    :sswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_1

    .line 439
    new-array v0, v5, [I

    .end local v0           #capabilities:[I
    fill-array-data v0, :array_1

    .line 440
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    .line 441
    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    .line 448
    :goto_1
    :sswitch_2
    new-array v0, v4, [I

    .end local v0           #capabilities:[I
    aput v3, v0, v3

    .line 449
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x5

    aput v2, v0, v3

    goto :goto_0

    .line 433
    :pswitch_1
    new-array v0, v4, [I

    .end local v0           #capabilities:[I
    aput v3, v0, v3

    .line 434
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    goto :goto_1

    .line 466
    :sswitch_3
    new-array v0, v4, [I

    .end local v0           #capabilities:[I
    aput v3, v0, v3

    .line 467
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x10

    aput v2, v0, v3

    goto :goto_0

    .line 474
    :sswitch_4
    new-array v0, v5, [I

    .end local v0           #capabilities:[I
    fill-array-data v0, :array_2

    .line 475
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    .line 476
    aget v2, v0, v4

    const v3, -0x7ffffff0

    or-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_0

    .line 486
    :sswitch_5
    new-array v0, v5, [I

    .end local v0           #capabilities:[I
    fill-array-data v0, :array_3

    .line 487
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x10

    aput v2, v0, v3

    .line 488
    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto :goto_0

    .line 497
    :sswitch_6
    new-array v0, v5, [I

    .end local v0           #capabilities:[I
    fill-array-data v0, :array_4

    .line 498
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    .line 499
    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto/16 :goto_0

    .line 510
    :pswitch_2
    new-array v0, v4, [I

    .end local v0           #capabilities:[I
    aput v3, v0, v3

    .line 511
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    goto/16 :goto_0

    .line 515
    :pswitch_3
    new-array v0, v5, [I

    .end local v0           #capabilities:[I
    fill-array-data v0, :array_5

    .line 516
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v3

    .line 517
    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto/16 :goto_0

    .line 522
    :pswitch_4
    new-array v0, v4, [I

    .end local v0           #capabilities:[I
    aput v3, v0, v3

    .line 523
    .restart local v0       #capabilities:[I
    aget v2, v0, v3

    or-int/lit8 v2, v2, 0x10

    aput v2, v0, v3

    goto/16 :goto_0

    .line 418
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_6
        0x1d -> :sswitch_3
        0x1e -> :sswitch_3
        0x1f -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_3
        0x43 -> :sswitch_3
        0x49 -> :sswitch_4
        0x4a -> :sswitch_5
        0x50 -> :sswitch_1
        0x52 -> :sswitch_3
        0x54 -> :sswitch_4
        0x55 -> :sswitch_4
        0x5a -> :sswitch_0
        0x61 -> :sswitch_3
        0x64 -> :sswitch_3
        0x66 -> :sswitch_6
        0x70 -> :sswitch_5
        0x97 -> :sswitch_2
        0x9d -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_3
        0xe0 -> :sswitch_3
        0xe3 -> :sswitch_6
        0xe4 -> :sswitch_5
        0x240 -> :sswitch_6
        0x241 -> :sswitch_5
        0x2d8 -> :sswitch_3
    .end sparse-switch

    .line 508
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 422
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 430
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 439
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 474
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 486
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 497
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 515
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static final getBuiltDataCapabilities()I
    .locals 2

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, capabilities:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 559
    or-int/lit8 v0, v0, 0x1

    .line 562
    :goto_0
    return v0

    .line 556
    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 557
    goto :goto_0

    .line 542
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1e -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x43 -> :sswitch_0
        0x49 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x61 -> :sswitch_0
        0x64 -> :sswitch_0
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltPhoneCapabilities()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x8000

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, capabilities:I
    const/4 v1, 0x0

    .line 251
    .local v1, preferNetworkMode:Ljava/lang/Integer;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 302
    if-nez v1, :cond_0

    .line 303
    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 306
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 318
    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    .line 325
    :goto_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_1

    .line 360
    if-nez v1, :cond_1

    .line 361
    const-string v2, "ro.telephony.default_network"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 376
    :cond_2
    :goto_1
    :pswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_2

    .line 395
    :goto_2
    return v0

    .line 268
    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 269
    goto :goto_0

    .line 272
    :sswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_2

    .line 277
    or-int/lit8 v0, v0, 0x2

    .line 278
    goto :goto_0

    .line 274
    :pswitch_2
    or-int/lit8 v0, v0, 0x1

    .line 275
    goto :goto_0

    .line 286
    :sswitch_2
    or-int/lit8 v0, v0, 0x3

    .line 289
    goto :goto_0

    .line 296
    :sswitch_3
    or-int/lit8 v0, v0, 0x5

    .line 299
    goto :goto_0

    .line 309
    :pswitch_3
    or-int/lit8 v0, v0, 0x2

    .line 310
    goto :goto_0

    .line 313
    :pswitch_4
    or-int/lit8 v0, v0, 0x2

    .line 314
    goto :goto_0

    .line 339
    :sswitch_4
    or-int/2addr v0, v4

    .line 340
    goto :goto_1

    .line 343
    :sswitch_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v2, :pswitch_data_3

    .line 347
    or-int/2addr v0, v4

    .line 348
    goto :goto_1

    .line 352
    :sswitch_6
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_3

    const-string v2, "persist.radio.worldphone"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    :cond_3
    or-int/2addr v0, v4

    goto :goto_1

    .line 367
    :pswitch_5
    or-int/2addr v0, v4

    .line 368
    goto :goto_1

    .line 384
    :sswitch_7
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    .line 385
    goto :goto_2

    .line 389
    :sswitch_8
    const/high16 v2, 0x2000

    or-int/2addr v0, v2

    .line 390
    goto :goto_2

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0x13 -> :sswitch_3
        0x1d -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x43 -> :sswitch_0
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5c -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_3
        0x70 -> :sswitch_2
        0x97 -> :sswitch_0
        0x9d -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe3 -> :sswitch_3
        0xe4 -> :sswitch_2
        0x240 -> :sswitch_3
        0x241 -> :sswitch_2
        0x2d8 -> :sswitch_0
    .end sparse-switch

    .line 306
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 325
    :sswitch_data_1
    .sparse-switch
        0x1d -> :sswitch_4
        0x1e -> :sswitch_4
        0x1f -> :sswitch_4
        0x2a -> :sswitch_4
        0x2b -> :sswitch_6
        0x43 -> :sswitch_4
        0x50 -> :sswitch_5
        0x5a -> :sswitch_4
        0x5c -> :sswitch_4
        0x64 -> :sswitch_4
        0x97 -> :sswitch_4
        0x9d -> :sswitch_5
        0xaa -> :sswitch_4
        0xad -> :sswitch_4
        0xe0 -> :sswitch_4
        0x2d8 -> :sswitch_4
    .end sparse-switch

    .line 364
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 376
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_7
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x4a -> :sswitch_7
        0x66 -> :sswitch_8
        0x70 -> :sswitch_7
        0xe3 -> :sswitch_8
        0xe4 -> :sswitch_7
        0x240 -> :sswitch_8
        0x241 -> :sswitch_7
    .end sparse-switch

    .line 272
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 343
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static final getBuiltRatCapabilities()I
    .locals 2

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 620
    .local v0, capabilities:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 648
    :goto_0
    return v0

    .line 628
    :sswitch_0
    or-int/lit8 v0, v0, 0x1

    .line 629
    goto :goto_0

    .line 643
    :sswitch_1
    or-int/lit8 v0, v0, 0x2

    .line 644
    goto :goto_0

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_1
        0x1e -> :sswitch_1
        0x24 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x3e -> :sswitch_0
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x49 -> :sswitch_1
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
        0x55 -> :sswitch_1
        0x61 -> :sswitch_1
        0x71 -> :sswitch_0
        0x7c -> :sswitch_0
        0xad -> :sswitch_1
        0x147 -> :sswitch_0
        0x2aa -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltRilCapabilities()I
    .locals 2

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 574
    .local v0, capabilities:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 610
    or-int/lit8 v0, v0, 0x1

    .line 613
    :goto_0
    return v0

    .line 607
    :sswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 608
    goto :goto_0

    .line 574
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x24 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x3e -> :sswitch_0
        0x43 -> :sswitch_0
        0x49 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x5b -> :sswitch_0
        0x61 -> :sswitch_0
        0x64 -> :sswitch_0
        0x71 -> :sswitch_0
        0x7c -> :sswitch_0
        0x89 -> :sswitch_0
        0x9f -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe3 -> :sswitch_0
        0x12d -> :sswitch_0
        0x12f -> :sswitch_0
        0x147 -> :sswitch_0
        0x240 -> :sswitch_0
        0x2aa -> :sswitch_0
        0x2d8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getBuiltSmsCapabilities()I
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, capabilities:I
    return v0
.end method

.method private static final getBuiltTabletCapabilities()I
    .locals 3

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 402
    .local v0, capabilities:I
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v1, :cond_0

    .line 403
    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    .line 406
    :cond_0
    const-string v1, "ro.phone.function"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    .line 410
    :cond_1
    return v0
.end method

.method public static getCapabilityLength([I)I
    .locals 1
    .parameter "builtCapabilities"

    .prologue
    .line 243
    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCapabilitiesEnabled(II)Z
    .locals 1
    .parameter "capabilities"
    .parameter "builtCapabilities"

    .prologue
    .line 215
    and-int v0, p1, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledInMultiCapabilities(I[I)Z
    .locals 5
    .parameter "capabilities"
    .parameter "builtMultiCapabilities"

    .prologue
    .line 227
    if-eqz p1, :cond_1

    .line 228
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 229
    .local v3, singleCapabilities:I
    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    const/4 v4, 0x1

    .line 234
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #singleCapabilities:I
    :goto_1
    return v4

    .line 228
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #singleCapabilities:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #singleCapabilities:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
