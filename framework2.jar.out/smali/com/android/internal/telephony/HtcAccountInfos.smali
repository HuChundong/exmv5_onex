.class public Lcom/android/internal/telephony/HtcAccountInfos;
.super Landroid/os/Handler;
.source "HtcAccountInfos.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_DETAIL:Z = false

.field private static final DEBUG_DEVELOPMENT:Z = false

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x1

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_SOURCE:I = 0x5

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final LOG_PREFIX:Ljava/lang/String; = "AccIs-"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final PHONE_ACCOUNT_CAPABILITY__CAN_TWO_GSM_PHONE:I = 0x1

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_CDMA_NV:I = 0x4

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_CDMA_RELATED_UICC:I = 0x5

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_GSM_SLOT:I = 0x2

.field public static final PHONE_ACCOUNT_CAPABILITY__HAVE_SUB_GSM_SLOT:I = 0x3

.field public static final PHONE_ACCOUNT_CAPABILITY__ONLY_ONE_PHONE:I = 0x0

.field private static final SUBSCRIPTION_FROM_NV:I = 0x1

.field private static final SUBSCRIPTION_FROM_RUIM:I = 0x0

.field private static final SUBSCRIPTION_SOURCE_UNKNOWN:I = -0x1


# instance fields
.field private mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

.field private mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

.field private mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

.field private mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

.field private mCdmaSST_mMin:Ljava/lang/reflect/Field;

.field private mCdmaSubscriptionQuerying:I

.field private mCdmaSubscriptionTryCount:I

.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentSubscriptionSource:I

.field private mGetRadioAvaliable:Z

.field private mGetRadioOn:Z

.field private mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

.field private mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

.field private mIccRecords_spn:Ljava/lang/reflect/Field;

.field private mPreviousPossibleResult:I

.field private mRegisterCdmaSubscription:Z

.field private mRuimRecords_mImsi:Ljava/lang/reflect/Field;

.field private mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

.field private mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

.field private mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

.field private mSIMRecords_imsi:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcAccountInfos;->DEBUG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 935
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    .line 936
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    .line 37
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "cm"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 935
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    .line 936
    iput v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    .line 44
    iput-object p1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->init()V

    .line 46
    return-void
.end method

.method private extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;
    .locals 4
    .parameter "currentIccTypes"
    .parameter "newIccTypes"

    .prologue
    const/4 v2, 0x0

    .line 181
    if-nez p2, :cond_0

    .line 190
    .end local p1
    :goto_0
    return-object p1

    .line 184
    .restart local p1
    :cond_0
    if-nez p1, :cond_2

    move v1, v2

    .line 185
    .local v1, lenCurrent:I
    :goto_1
    add-int/lit8 v3, v1, 0x1

    new-array v0, v3, [Lcom/android/internal/telephony/HtcIccType;

    .line 186
    .local v0, extendedIccTypes:[Lcom/android/internal/telephony/HtcIccType;
    if-lez v1, :cond_1

    .line 187
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    :cond_1
    aput-object p2, v0, v1

    move-object p1, v0

    .line 190
    goto :goto_0

    .line 184
    .end local v0           #extendedIccTypes:[Lcom/android/internal/telephony/HtcIccType;
    .end local v1           #lenCurrent:I
    :cond_2
    array-length v1, p1

    goto :goto_1
.end method

.method public static getAccountCapability()[Z
    .locals 12

    .prologue
    const/high16 v11, -0x8000

    .line 115
    const/4 v8, 0x0

    .line 116
    .local v8, onlyOnePhone:Z
    const/4 v1, 0x0

    .line 117
    .local v1, canTwoGsmPhone:Z
    const/4 v5, 0x0

    .line 118
    .local v5, detectGsm:Z
    const/4 v6, 0x0

    .line 119
    .local v6, detectGsm1:Z
    const/4 v4, 0x0

    .line 120
    .local v4, detectCdmaNv:Z
    const/4 v3, 0x0

    .line 121
    .local v3, detectCdmaIcc:Z
    sget v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    .line 123
    sget v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1

    .line 126
    const/4 v1, 0x1

    .line 127
    const/4 v6, 0x1

    .line 133
    :goto_0
    const/4 v5, 0x1

    .line 176
    :cond_0
    const/4 v9, 0x6

    new-array v0, v9, [Z

    const/4 v9, 0x0

    aput-boolean v8, v0, v9

    const/4 v9, 0x1

    aput-boolean v1, v0, v9

    const/4 v9, 0x2

    aput-boolean v5, v0, v9

    const/4 v9, 0x3

    aput-boolean v6, v0, v9

    const/4 v9, 0x4

    aput-boolean v4, v0, v9

    const/4 v9, 0x5

    aput-boolean v3, v0, v9

    .line 177
    .local v0, accCaps:[Z
    return-object v0

    .line 131
    .end local v0           #accCaps:[Z
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 136
    :cond_2
    sget v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v10, -0x2000

    and-int v2, v9, v10

    .line 141
    .local v2, cap:I
    if-eqz v2, :cond_5

    .line 142
    if-eq v2, v11, :cond_4

    .line 143
    and-int v9, v2, v11

    if-eqz v9, :cond_3

    .line 145
    const/4 v1, 0x1

    .line 146
    const/4 v6, 0x1

    .line 156
    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 162
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    sget-object v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    array-length v9, v9

    if-ge v7, v9, :cond_0

    .line 163
    sget-object v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v2, v9, v7

    .line 164
    sget-object v9, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    aget v9, v9, v7

    packed-switch v9, :pswitch_data_0

    .line 171
    const/4 v3, 0x1

    .line 162
    :goto_4
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 154
    .end local v7           #i:I
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 160
    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    .line 166
    .restart local v7       #i:I
    :pswitch_1
    const/4 v4, 0x1

    .line 167
    goto :goto_4

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCdma_IccFields()V
    .locals 3

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.cdma.CDMAPhone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    move-result-object v0

    .line 331
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 333
    :try_start_1
    const-string v1, "mSIMRecords"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    .line 334
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 342
    .end local v0           #cls:Ljava/lang/Class;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 344
    const/4 v0, 0x0

    .line 346
    .restart local v0       #cls:Ljava/lang/Class;
    :try_start_2
    const-string v1, "com.android.internal.telephony.IccRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v0

    .line 352
    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 354
    :try_start_3
    const-string v1, "spn"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    .line 355
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 363
    .end local v0           #cls:Ljava/lang/Class;
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    if-nez v1, :cond_6

    .line 368
    :cond_2
    const/4 v0, 0x0

    .line 370
    .restart local v0       #cls:Ljava/lang/Class;
    :try_start_4
    const-string v1, "com.android.internal.telephony.cdma.RuimRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v0

    .line 376
    :goto_4
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3

    .line 378
    :try_start_5
    const-string v1, "mImsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 386
    :cond_3
    :goto_5
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 388
    :try_start_6
    const-string v1, "mImsi_M"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi_M:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 396
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    if-nez v1, :cond_5

    .line 398
    :try_start_7
    const-string v1, "mSimpleIP_NAIs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 406
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    if-nez v1, :cond_6

    .line 408
    :try_start_8
    const-string v1, "mMobileIP_NAIs"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    .line 409
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 417
    .end local v0           #cls:Ljava/lang/Class;
    :cond_6
    :goto_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_9

    .line 419
    :cond_7
    const/4 v0, 0x0

    .line 421
    .restart local v0       #cls:Ljava/lang/Class;
    :try_start_9
    const-string v1, "com.android.internal.telephony.cdma.HtcCdmaSIMRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v0

    .line 427
    :goto_9
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_8

    .line 429
    :try_start_a
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_imsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 437
    :cond_8
    :goto_a
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_9

    .line 439
    :try_start_b
    const-string v1, "gsmImsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 448
    .end local v0           #cls:Ljava/lang/Class;
    :cond_9
    :goto_b
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_a

    .line 449
    const/4 v0, 0x0

    .line 451
    .restart local v0       #cls:Ljava/lang/Class;
    :try_start_c
    const-string v1, "com.android.internal.telephony.gsm.SIMRecords"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v0

    .line 457
    :goto_c
    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    if-nez v1, :cond_a

    .line 459
    :try_start_d
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 468
    .end local v0           #cls:Ljava/lang/Class;
    :cond_a
    :goto_d
    return-void

    .line 461
    .restart local v0       #cls:Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_d

    .line 452
    :catch_1
    move-exception v1

    goto :goto_c

    .line 441
    :catch_2
    move-exception v1

    goto :goto_b

    .line 431
    :catch_3
    move-exception v1

    goto :goto_a

    .line 422
    :catch_4
    move-exception v1

    goto :goto_9

    .line 410
    :catch_5
    move-exception v1

    goto :goto_8

    .line 400
    :catch_6
    move-exception v1

    goto :goto_7

    .line 390
    :catch_7
    move-exception v1

    goto/16 :goto_6

    .line 380
    :catch_8
    move-exception v1

    goto/16 :goto_5

    .line 371
    :catch_9
    move-exception v1

    goto/16 :goto_4

    .line 356
    :catch_a
    move-exception v1

    goto/16 :goto_3

    .line 347
    :catch_b
    move-exception v1

    goto/16 :goto_2

    .line 335
    :catch_c
    move-exception v1

    goto/16 :goto_1

    .line 326
    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method private getCdma_NvFields()V
    .locals 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.cdma.CDMAPhone"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 254
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 256
    :try_start_1
    const-string v1, "mCarrierId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mCarrierId:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 265
    .end local v0           #cls:Ljava/lang/Class;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 268
    :cond_1
    const/4 v0, 0x0

    .line 270
    .restart local v0       #cls:Ljava/lang/Class;
    :try_start_2
    const-string v1, "com.android.internal.telephony.cdma.CdmaServiceStateTracker"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 276
    :goto_2
    if-eqz v0, :cond_4

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    if-nez v1, :cond_2

    .line 279
    :try_start_3
    const-string v1, "IMSI_MCC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 287
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    if-nez v1, :cond_3

    .line 289
    :try_start_4
    const-string v1, "IMSI_11_12"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 297
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    .line 299
    :try_start_5
    const-string v1, "mMin"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    .line 300
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 309
    .end local v0           #cls:Ljava/lang/Class;
    :cond_4
    :goto_5
    return-void

    .line 301
    .restart local v0       #cls:Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_5

    .line 291
    :catch_1
    move-exception v1

    goto :goto_4

    .line 281
    :catch_2
    move-exception v1

    goto :goto_3

    .line 271
    :catch_3
    move-exception v1

    goto :goto_2

    .line 258
    :catch_4
    move-exception v1

    goto :goto_1

    .line 249
    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "imsi"

    .prologue
    const/4 v5, 0x0

    .line 558
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    :cond_0
    move-object v2, p1

    .line 568
    :goto_0
    return-object v2

    .line 561
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 562
    .local v1, mcc:I
    const/4 v2, 0x0

    .line 564
    .local v2, mccmnc:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, ex:Ljava/lang/Exception;
    move-object v2, p1

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v0

    .line 51
    .local v0, possibleAccounts:[Z
    aget-boolean v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 53
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    .line 55
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 62
    .end local v0           #possibleAccounts:[Z
    :cond_1
    return-void
.end method

.method private newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;
    .locals 13
    .parameter "cdmaPhone"
    .parameter "readNv"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 572
    new-instance v8, Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {v8}, Lcom/android/internal/telephony/HtcIccType;-><init>()V

    .line 574
    .local v8, iccType:Lcom/android/internal/telephony/HtcIccType;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v10

    iput v10, v8, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 575
    if-eqz p2, :cond_3

    .line 576
    iget v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    if-nez v10, :cond_0

    .line 577
    iput v11, v8, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->getCdma_NvFields()V

    .line 580
    check-cast p1, Lcom/android/internal/telephony/PhoneBase;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 581
    .local v9, sst:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    if-eqz v9, :cond_2

    .line 582
    const/4 v1, 0x0

    .line 583
    .local v1, MCC:Ljava/lang/String;
    const/4 v3, 0x0

    .line 584
    .local v3, MNC:Ljava/lang/String;
    const/4 v2, 0x0

    .line 586
    .local v2, MIN:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_MCC:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 596
    :goto_0
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_IMSI_11_12:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 606
    :goto_1
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSST_mMin:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 615
    :goto_2
    new-instance v10, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v8}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 616
    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 617
    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    .end local v1           #MCC:Ljava/lang/String;
    .end local v2           #MIN:Ljava/lang/String;
    .end local v3           #MNC:Ljava/lang/String;
    .end local v9           #sst:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_1
    :goto_3
    move-object v10, v8

    .line 722
    :goto_4
    return-object v10

    .line 623
    .restart local v9       #sst:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_2
    const/4 v10, 0x0

    goto :goto_4

    .line 627
    .end local v9           #sst:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    .restart local p1
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcAccountInfos;->getCdma_IccFields()V

    move-object v10, p1

    .line 628
    check-cast v10, Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v7

    .line 629
    .local v7, iccPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v7, :cond_9

    .line 634
    sget-object v10, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    .line 635
    .local v4, cdmaIccRec:Lcom/android/internal/telephony/IccRecords;
    const-string v10, "AccIs-CDMA "

    invoke-direct {p0, v8, v4, v10}, Lcom/android/internal/telephony/HtcAccountInfos;->updateHtcIccTypeFromRuimRecords(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/IccRecords;Ljava/lang/String;)V

    .line 637
    sget-object v10, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    .line 638
    .local v5, gsmIccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v5, :cond_8

    .line 639
    instance-of v10, v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v10, :cond_7

    .line 640
    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_5

    .line 641
    :cond_4
    iget-object v10, v5, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 646
    :cond_5
    new-instance v10, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v8}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 648
    :try_start_3
    iget-object v11, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v12, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mSIMRecords_imsi:Ljava/lang/reflect/Field;

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object v10, v0

    invoke-virtual {v12, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v11, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 652
    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v11, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v11, v11, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcAccountInfos;->getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 671
    :cond_6
    :goto_5
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 675
    const/4 v8, 0x0

    goto :goto_3

    .line 660
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 667
    :cond_8
    iget v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    if-ne v10, v12, :cond_6

    .line 668
    iput v11, v8, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    goto :goto_5

    .end local v4           #cdmaIccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v5           #gsmIccRec:Lcom/android/internal/telephony/IccRecords;
    :cond_9
    move-object v10, p1

    .line 679
    check-cast v10, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v10, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 680
    .local v4, cdmaIccRec:Lcom/android/internal/telephony/cdma/RuimRecords;
    const/4 v5, 0x0

    .line 682
    .local v5, gsmIccRec:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaPhone_mSIMRecords:Ljava/lang/reflect/Field;

    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local p1
    invoke-virtual {v10, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;

    move-object v5, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 688
    :goto_6
    if-eqz v4, :cond_b

    iget-object v10, v4, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 689
    const-string v10, "AccIs-CDMAonly "

    invoke-direct {p0, v8, v4, v10}, Lcom/android/internal/telephony/HtcAccountInfos;->updateHtcIccTypeFromRuimRecords(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/IccRecords;Ljava/lang/String;)V

    .line 690
    if-eqz v5, :cond_1

    .line 691
    const/4 v6, 0x0

    .line 693
    .local v6, gsmImsi:Ljava/lang/String;
    :try_start_5
    iget-object v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mHtcCdmaSIMRecords_gsmImsi:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 702
    :goto_7
    if-eqz v6, :cond_a

    .line 703
    new-instance v10, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v8}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 704
    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v6, v10, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 705
    iget-object v10, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v11, v8, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v11, v11, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcAccountInfos;->getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto/16 :goto_3

    .line 708
    :cond_a
    iget v10, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    if-ne v10, v12, :cond_1

    .line 709
    iput v11, v8, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    goto/16 :goto_3

    .line 718
    .end local v6           #gsmImsi:Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 697
    .restart local v6       #gsmImsi:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_7

    .line 683
    .end local v6           #gsmImsi:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_6

    .line 653
    .local v4, cdmaIccRec:Lcom/android/internal/telephony/IccRecords;
    .local v5, gsmIccRec:Lcom/android/internal/telephony/IccRecords;
    .restart local p1
    :catch_2
    move-exception v10

    goto :goto_5

    .line 610
    .end local v4           #cdmaIccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v5           #gsmIccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v7           #iccPxy:Lcom/android/internal/telephony/IccCardProxy;
    .end local p1
    .restart local v1       #MCC:Ljava/lang/String;
    .restart local v2       #MIN:Ljava/lang/String;
    .restart local v3       #MNC:Ljava/lang/String;
    .restart local v9       #sst:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :catch_3
    move-exception v10

    goto/16 :goto_2

    .line 600
    :catch_4
    move-exception v10

    goto/16 :goto_1

    .line 590
    :catch_5
    move-exception v10

    goto/16 :goto_0
.end method

.method private newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;
    .locals 5
    .parameter "gsmPhone"
    .parameter "singlePhone"

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v1, Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {v1}, Lcom/android/internal/telephony/HtcIccType;-><init>()V

    .line 196
    .local v1, iccType:Lcom/android/internal/telephony/HtcIccType;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    iput v3, v1, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 197
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 198
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 236
    .end local v1           #iccType:Lcom/android/internal/telephony/HtcIccType;
    :goto_0
    return-object v1

    .line 204
    .restart local v1       #iccType:Lcom/android/internal/telephony/HtcIccType;
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, IMSI:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    :cond_2
    move-object v1, v2

    .line 206
    goto :goto_0

    .line 209
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 210
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, v3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 214
    if-eqz p2, :cond_4

    .line 215
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 223
    :sswitch_0
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    const-string v4, "gsm.gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 229
    :sswitch_1
    iget-object v3, v1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    const-string v4, "gsm.sub.icc.operator.numeric"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    goto :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private tryToUpdateSubscriptionSource(ZZ)V
    .locals 6
    .parameter "anotherTry"
    .parameter "forceUpdate"

    .prologue
    const/16 v2, 0x31

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 939
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    if-eqz p2, :cond_2

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .local v0, strBuf:Ljava/lang/StringBuilder;
    const-string v1, "AccIs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    const-string v1, "CDMA change : try="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 948
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 950
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 951
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    add-int/lit8 v1, v1, 0x31

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    add-int/lit8 v1, v1, 0x31

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 954
    const-string v1, ", idx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    const-string v1, "PHONE"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v0           #strBuf:Ljava/lang/StringBuilder;
    :cond_2
    if-eqz p1, :cond_8

    .line 960
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    if-eqz v1, :cond_7

    .line 961
    :cond_3
    if-eqz p2, :cond_6

    .line 962
    iput v4, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 963
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    .line 968
    :goto_3
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    if-ne v1, v4, :cond_0

    .line 969
    iget-object v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/telephony/HtcAccountInfos;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    goto :goto_0

    .restart local v0       #strBuf:Ljava/lang/StringBuilder;
    :cond_4
    move v1, v3

    .line 949
    goto :goto_1

    :cond_5
    move v2, v3

    .line 950
    goto :goto_2

    .line 966
    .end local v0           #strBuf:Ljava/lang/StringBuilder;
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    goto :goto_3

    .line 973
    :cond_7
    iput v4, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    goto/16 :goto_0

    .line 977
    :cond_8
    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 978
    iget v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    .line 979
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    goto/16 :goto_0
.end method

.method private updateHtcIccTypeFromRuimRecords(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/IccRecords;Ljava/lang/String;)V
    .locals 9
    .parameter "iccType"
    .parameter "cdmaIccRec"
    .parameter "logPrefix"

    .prologue
    const/4 v6, 0x0

    .line 471
    if-eqz p2, :cond_2

    .line 472
    instance-of v5, p2, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v5, :cond_2

    .line 473
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 474
    iget-object v5, p2, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 479
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;)V

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 481
    :try_start_0
    iget-object v7, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v8, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mImsi:Ljava/lang/reflect/Field;

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    move-object v5, v0

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 485
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v7, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcAccountInfos;->getMccMncFromIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 492
    :goto_0
    :try_start_1
    iget-object v7, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mIccRecords_spn:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, mcc:Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_2

    const-string v5, "404"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "405"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "406"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 506
    :cond_1
    const/4 v3, 0x0

    .line 507
    .local v3, mSimpleIP_NAIs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 508
    .local v2, mMobileIP_NAIs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 510
    .local v1, customerId:Ljava/lang/String;
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mSimpleIP_NAIs:Ljava/lang/reflect/Field;

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    move-object v5, v0

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 514
    iget-object v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRuimRecords_mMobileIP_NAIs:Ljava/lang/reflect/Field;

    check-cast p2, Lcom/android/internal/telephony/cdma/RuimRecords;

    .end local p2
    invoke-virtual {v5, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 518
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    invoke-static {p3, v3, v2, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->omhCustomerIdDetection(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 524
    :goto_3
    if-eqz v1, :cond_2

    .line 525
    const-string v5, "INDIA_TATA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 526
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 527
    iput-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 528
    const-string v5, "405"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 529
    const-string v5, "25"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 555
    .end local v1           #customerId:Ljava/lang/String;
    .end local v2           #mMobileIP_NAIs:[Ljava/lang/String;
    .end local v3           #mSimpleIP_NAIs:[Ljava/lang/String;
    .end local v4           #mcc:Ljava/lang/String;
    :cond_2
    :goto_4
    return-void

    .restart local p2
    :cond_3
    move-object v4, v6

    .line 501
    goto :goto_2

    .line 532
    .end local p2
    .restart local v1       #customerId:Ljava/lang/String;
    .restart local v2       #mMobileIP_NAIs:[Ljava/lang/String;
    .restart local v3       #mSimpleIP_NAIs:[Ljava/lang/String;
    .restart local v4       #mcc:Ljava/lang/String;
    :cond_4
    const-string v5, "INDIA_RELIANCE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 533
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 534
    iput-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 535
    const-string v5, "404"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 536
    const-string v5, "09"

    iput-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto :goto_4

    .line 539
    :cond_5
    const-string v5, "INDIA_MTS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 540
    iget-object v5, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 541
    iput-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 542
    iput-object v6, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 543
    iput-object v6, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto :goto_4

    .line 519
    :catch_0
    move-exception v5

    goto :goto_3

    .line 496
    .end local v1           #customerId:Ljava/lang/String;
    .end local v2           #mMobileIP_NAIs:[Ljava/lang/String;
    .end local v3           #mSimpleIP_NAIs:[Ljava/lang/String;
    .end local v4           #mcc:Ljava/lang/String;
    .restart local p2
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 486
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method private updateKnownFields([Lcom/android/internal/telephony/HtcIccType;)V
    .locals 11
    .parameter "accountInfos"

    .prologue
    const/16 v10, 0xd8

    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 848
    if-nez p1, :cond_1

    .line 917
    :cond_0
    return-void

    .line 851
    :cond_1
    move-object v1, p1

    .local v1, arr$:[Lcom/android/internal/telephony/HtcIccType;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 852
    .local v0, accInfo:Lcom/android/internal/telephony/HtcIccType;
    if-eqz v0, :cond_2

    .line 853
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_4

    .line 854
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 855
    const-string v5, "ro.cid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 856
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 857
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 858
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 859
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 851
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    :cond_3
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    goto :goto_1

    .line 867
    :cond_4
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_c

    .line 868
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-nez v5, :cond_5

    .line 869
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_5

    .line 870
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 871
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "311480"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 875
    const/16 v5, 0xa8

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 876
    const-string v5, "311"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 877
    const-string v5, "480"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 882
    :cond_5
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-nez v5, :cond_2

    .line 883
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 884
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 885
    .local v4, mcc:Ljava/lang/String;
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "46605"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 886
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 887
    const-string v5, "466"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 888
    const-string v5, "05"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto :goto_1

    .line 890
    :cond_6
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    const-string v6, "45502"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 892
    :cond_7
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 893
    const-string v5, "460"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 894
    const-string v5, "03"

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    goto/16 :goto_1

    .line 896
    :cond_8
    const-string v5, "440"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "441"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 898
    :cond_9
    const/16 v5, 0x51

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 899
    iput-object v4, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 900
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    goto/16 :goto_1

    .line 902
    :cond_a
    const-string v5, "460"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 904
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    goto/16 :goto_1

    .line 906
    :cond_b
    const-string v5, "466"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 908
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    goto/16 :goto_1

    .line 913
    .end local v4           #mcc:Ljava/lang/String;
    :cond_c
    iget-object v5, v0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v5, :cond_2

    goto/16 :goto_1
.end method

.method private updateSubscriptionSourceResult(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x2f

    .line 984
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 986
    .local v0, ar:Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 987
    .local v4, strTail:Ljava/lang/StringBuilder;
    const-string v5, ", cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 989
    const-string v5, ", quIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 992
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    const/4 v1, 0x0

    .line 995
    .local v1, isFinalResult:Z
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    if-lez v5, :cond_0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    if-ne v5, v6, :cond_0

    .line 996
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 997
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    .line 998
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    if-lez v5, :cond_2

    .line 999
    iget-object v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    iget v7, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionQuerying:I

    invoke-virtual {p0, v6, v7, v9}, Lcom/android/internal/telephony/HtcAccountInfos;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaSubscriptionSource(Landroid/os/Message;)V

    .line 1000
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCdmaSubscriptionTryCount:I

    .line 1007
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .local v3, strBuf:Ljava/lang/StringBuilder;
    const-string v5, "AccIs-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v5, "CDMA from : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_4

    .line 1011
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v9

    .line 1013
    .local v2, newSubscriptionSource:I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1015
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v5, "PHONE"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    if-eqz v1, :cond_3

    .line 1020
    iput v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    .line 1037
    .end local v2           #newSubscriptionSource:I
    :cond_1
    :goto_1
    return-void

    .line 1003
    .end local v3           #strBuf:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1023
    .restart local v2       #newSubscriptionSource:I
    .restart local v3       #strBuf:Ljava/lang/StringBuilder;
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    goto :goto_1

    .line 1027
    .end local v2           #newSubscriptionSource:I
    :cond_4
    if-eqz v1, :cond_1

    .line 1029
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const-string v5, "PHONE"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mPreviousPossibleResult:I

    iput v5, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCurrentSubscriptionSource:I

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 69
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mRegisterCdmaSubscription:Z

    .line 77
    :cond_0
    return-void
.end method

.method public getAccountInfos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)[Landroid/os/Parcelable;
    .locals 8
    .parameter "mActivePhone"
    .parameter "mGsmPhone"
    .parameter "mSubGsmPhone"
    .parameter "mCdmaPhone"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 731
    const/4 v0, 0x0

    .line 734
    .local v0, accountInfos:[Lcom/android/internal/telephony/HtcIccType;
    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v1

    .line 735
    .local v1, cap:[Z
    aget-boolean v2, v1, v3

    if-eqz v2, :cond_5

    .line 740
    if-eqz p1, :cond_0

    .line 741
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 824
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcAccountInfos;->updateKnownFields([Lcom/android/internal/telephony/HtcIccType;)V

    .line 844
    return-object v0

    .line 743
    :pswitch_0
    aget-boolean v2, v1, v5

    if-eqz v2, :cond_1

    .line 748
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 750
    :cond_1
    aget-boolean v2, v1, v6

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 752
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 757
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_3
    aget-boolean v2, v1, v7

    if-eqz v2, :cond_0

    .line 770
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 774
    :pswitch_1
    aget-boolean v2, v1, v5

    if-eqz v2, :cond_4

    .line 778
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 780
    :cond_4
    aget-boolean v2, v1, v6

    if-eqz v2, :cond_0

    .line 784
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto :goto_0

    .line 792
    :cond_5
    aget-boolean v2, v1, v7

    if-eqz v2, :cond_6

    .line 796
    if-eqz p2, :cond_6

    .line 797
    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 800
    :cond_6
    const/4 v2, 0x3

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_7

    .line 804
    if-eqz p3, :cond_7

    .line 805
    invoke-direct {p0, p3, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromGsm(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 808
    :cond_7
    if-eqz p4, :cond_0

    .line 809
    aget-boolean v2, v1, v5

    if-eqz v2, :cond_8

    .line 813
    invoke-direct {p0, p4, v4}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    .line 815
    :cond_8
    aget-boolean v2, v1, v6

    if-eqz v2, :cond_0

    .line 819
    invoke-direct {p0, p4, v3}, Lcom/android/internal/telephony/HtcAccountInfos;->newIccTypeFromCdma(Lcom/android/internal/telephony/Phone;Z)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->extendIccTypes([Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType;)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    goto/16 :goto_0

    .line 741
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1045
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1047
    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1050
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    if-nez v0, :cond_0

    .line 1051
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    .line 1052
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1056
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    if-nez v0, :cond_0

    .line 1057
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    .line 1058
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1062
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioOn:Z

    .line 1063
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcAccountInfos;->mGetRadioAvaliable:Z

    .line 1064
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcAccountInfos;->tryToUpdateSubscriptionSource(ZZ)V

    goto :goto_0

    .line 1067
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcAccountInfos;->updateSubscriptionSourceResult(Landroid/os/Message;)V

    goto :goto_0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
