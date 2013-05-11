.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$1;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field private static final KDDI_SUBPARAM_ANONYMOUS_REASON:B = 0x56t

.field private static final KDDI_SUBPARAM_ESN:B = 0x57t

.field private static final KDDI_SUBPARAM_IP_ADDRESS:B = 0x55t

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public isKddiEarthquakeAlert:Z

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public serviceCategoryProgramData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 135
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 158
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 159
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 190
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 191
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 223
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 224
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 225
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 251
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 807
    return-void
.end method

.method private static KddiReplaceUserData(Lcom/android/internal/telephony/cdma/sms/UserData;II)[B
    .locals 15
    .parameter "userData"
    .parameter "numFields"
    .parameter "offset"

    .prologue
    .line 2973
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "format ori userdata> 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    const-string v12, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numFields> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", offset> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2979
    .local v1, data:[B
    const/4 v12, 0x2

    new-array v5, v12, [B

    fill-array-data v5, :array_0

    .line 2980
    .local v5, newSmsType:[B
    const/4 v12, 0x5

    new-array v10, v12, [[B

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_1

    aput-object v13, v10, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_2

    aput-object v13, v10, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_3

    aput-object v13, v10, v12

    const/4 v12, 0x3

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_4

    aput-object v13, v10, v12

    const/4 v12, 0x4

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_5

    aput-object v13, v10, v12

    .line 2987
    .local v10, smsType:[[B
    const/16 v12, 0xa

    new-array v11, v12, [B

    fill-array-data v11, :array_6

    .line 2995
    .local v11, smsTypeEmailSig:[B
    const/16 v12, 0x1a

    new-array v8, v12, [B

    fill-array-data v8, :array_7

    .line 3030
    .local v8, serviceData:[B
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v12

    if-nez v12, :cond_6

    .line 3031
    const/4 v9, 0x0

    .line 3037
    .local v9, skipEsnCheck:Z
    :goto_0
    const/4 v2, 0x0

    .line 3040
    .local v2, hasESN:Z
    if-nez v9, :cond_0

    array-length v12, v1

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 3041
    const/4 v12, 0x0

    aget-byte v12, v5, v12

    aget-byte v13, v1, p2

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, v1, v13

    if-ne v12, v13, :cond_0

    .line 3043
    add-int/lit8 p2, p2, 0x2

    .line 3044
    const/4 v2, 0x1

    .line 3050
    :cond_0
    if-nez v2, :cond_2

    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_2

    array-length v12, v1

    sub-int v12, v12, p2

    const/16 v13, 0xa

    if-lt v12, v13, :cond_2

    .line 3051
    const/4 v4, 0x1

    .line 3052
    .local v4, isEmailSig:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v12, v11

    if-ge v3, v12, :cond_1

    .line 3053
    aget-byte v12, v11, v3

    add-int v13, p2, v3

    aget-byte v13, v1, v13

    if-eq v12, v13, :cond_7

    .line 3054
    const/4 v4, 0x0

    .line 3058
    :cond_1
    if-eqz v4, :cond_2

    .line 3059
    const/high16 v12, 0x1000

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3060
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 3069
    .end local v3           #i:I
    .end local v4           #isEmailSig:Z
    :cond_2
    array-length v12, v1

    sub-int v12, v12, p2

    const/4 v13, 0x2

    if-lt v12, v13, :cond_a

    .line 3070
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    array-length v12, v10

    if-le v12, v3, :cond_3

    .line 3071
    aget-object v12, v10, v3

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    aget-byte v13, v1, p2

    if-ne v12, v13, :cond_8

    aget-object v12, v10, v3

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, v1, v13

    if-ne v12, v13, :cond_8

    .line 3073
    packed-switch v3, :pswitch_data_0

    .line 3097
    :goto_3
    add-int/lit8 p2, p2, 0x2

    .line 3103
    :cond_3
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_4

    .line 3104
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeCmail(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    .line 3109
    :cond_4
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_a

    .line 3110
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeOptionsServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    move-result v12

    if-nez v12, :cond_5

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeOtherServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3112
    :cond_5
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-nez v12, :cond_9

    .line 3129
    .end local v3           #i:I
    .end local v8           #serviceData:[B
    :goto_4
    return-object v8

    .line 3033
    .end local v2           #hasESN:Z
    .end local v9           #skipEsnCheck:Z
    .restart local v8       #serviceData:[B
    :cond_6
    const/4 v9, 0x1

    .restart local v9       #skipEsnCheck:Z
    goto/16 :goto_0

    .line 3052
    .restart local v2       #hasESN:Z
    .restart local v3       #i:I
    .restart local v4       #isEmailSig:Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3075
    .end local v4           #isEmailSig:Z
    :pswitch_0
    const/16 v12, 0x201

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3076
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3079
    :pswitch_1
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3080
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3083
    :pswitch_2
    const/16 v12, 0x101

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3084
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3087
    :pswitch_3
    const/16 v12, 0x102

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3088
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3091
    :pswitch_4
    const/4 v12, 0x4

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3092
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3070
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    move-object v8, v1

    .line 3117
    goto :goto_4

    .line 3125
    .end local v3           #i:I
    :cond_a
    sub-int v7, p1, p2

    .line 3126
    .local v7, resultDataLen:I
    new-array v6, v7, [B

    .line 3127
    .local v6, resultData:[B
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, v0, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 3129
    goto :goto_4

    .line 2979
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x70t
    .end array-data

    .line 2980
    nop

    :array_1
    .array-data 0x1
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x0t
        0x4t
    .end array-data

    .line 2987
    nop

    :array_6
    .array-data 0x1
        0x53t
        0x49t
        0x47t
        0x4et
        0x41t
        0x4ct
        0x55t
        0x49t
        0x44t
        0x3at
    .end array-data

    .line 2995
    nop

    :array_7
    .array-data 0x1
        0x94t
        0xf1t
        0x91t
        0xcet
        0x89t
        0x9et
        0x82t
        0xcct
        0x82t
        0xbdt
        0x82t
        0xdft
        0x95t
        0x5ct
        0x8et
        0xa6t
        0x82t
        0xc5t
        0x82t
        0xabt
        0x82t
        0xdct
        0x82t
        0xb9t
        0x82t
        0xf1t
    .end array-data

    .line 3073
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static KddiformatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 12
    .parameter "mBearerData"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3135
    if-eqz p0, :cond_1

    .line 3136
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 3137
    .local v6, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-object v1, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3138
    .local v1, data:[B
    const/4 v4, 0x0

    .line 3141
    .local v4, offset:I
    array-length v7, v1

    if-lt v7, v11, :cond_0

    .line 3144
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3145
    const/4 v5, 0x0

    .line 3156
    .local v5, skipEsnCheck:Z
    :goto_0
    if-nez v5, :cond_0

    .line 3157
    aget-byte v7, v1, v10

    if-nez v7, :cond_0

    const/16 v7, 0x70

    aget-byte v8, v1, v9

    if-ne v7, v8, :cond_0

    .line 3158
    const-string v7, "SMS"

    const-string v8, "ENS: 0x0070"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    add-int/lit8 v4, v4, 0x2

    .line 3165
    .end local v5           #skipEsnCheck:Z
    :cond_0
    iget-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v7

    sub-int/2addr v7, v4

    if-lt v7, v11, :cond_1

    .line 3167
    aget-byte v7, v1, v4

    if-nez v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_1

    .line 3168
    const-string v7, "SMS"

    const-string v8, "sms type: 0x0000"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3172
    iput-boolean v9, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 3178
    const/4 v3, 0x0

    .line 3180
    .local v3, fixedCallbackNumber:[B
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3181
    const/4 v7, 0x4

    new-array v3, v7, [B

    .end local v3           #fixedCallbackNumber:[B
    fill-array-data v3, :array_0

    .line 3182
    .restart local v3       #fixedCallbackNumber:[B
    invoke-static {v1, v10}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 3191
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 3192
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 3193
    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 3195
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 3204
    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v1           #data:[B
    .end local v3           #fixedCallbackNumber:[B
    .end local v4           #offset:I
    .end local v6           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    return-void

    .line 3147
    .restart local v1       #data:[B
    .restart local v4       #offset:I
    .restart local v6       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    const/4 v5, 0x1

    .restart local v5       #skipEsnCheck:Z
    goto :goto_0

    .line 3184
    .end local v5           #skipEsnCheck:Z
    .restart local v3       #fixedCallbackNumber:[B
    :cond_3
    const/16 v7, 0xd

    new-array v3, v7, [B

    .end local v3           #fixedCallbackNumber:[B
    fill-array-data v3, :array_1

    .line 3187
    .restart local v3       #fixedCallbackNumber:[B
    invoke-static {v1, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 3196
    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception v2

    .line 3197
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formatSlamdownMessage Addr decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3181
    :array_0
    .array-data 0x1
        0x31t
        0x34t
        0x31t
        0x36t
    .end array-data

    .line 3184
    :array_1
    .array-data 0x1
        0x2bt
        0x38t
        0x31t
        0x39t
        0x30t
        0x34t
        0x34t
        0x34t
        0x34t
        0x30t
        0x31t
        0x34t
        0x31t
    .end array-data
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "msg"
    .parameter "force7BitEncoding"

    .prologue
    .line 494
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 12
    .parameter "msg"
    .parameter "force7BitEncoding"
    .parameter "nli"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    .line 506
    const/4 v4, 0x0

    .line 509
    .local v4, septets:I
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v8

    if-ne v8, v6, :cond_1

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/HtcMessageHelper;->getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .line 596
    :cond_0
    :goto_0
    return-object v5

    .line 517
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v4

    .line 519
    const/16 v2, 0xa0

    .line 520
    .local v2, max_data_septets:I
    const/16 v1, 0x8c

    .line 523
    .local v1, max_data_bytes:I
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_2

    .line 524
    const/16 v2, 0x96

    .line 525
    const/16 v1, 0x83

    .line 529
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v8

    if-nez v8, :cond_e

    .line 530
    new-instance v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 532
    .local v5, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isSupportSegmentIndicator()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 533
    if-ne v4, v10, :cond_7

    move v0, v7

    .line 535
    .local v0, bAscii:Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v8, v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    if-le v8, v9, :cond_5

    .line 538
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v4

    .line 543
    .end local v0           #bAscii:Z
    :cond_5
    if-ne v4, v10, :cond_a

    .line 544
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    mul-int/lit8 v4, v8, 0x2

    .line 547
    if-lez v4, :cond_6

    .line 548
    div-int v8, v4, v1

    rem-int v9, v4, v1

    if-lez v9, :cond_8

    :goto_2
    add-int/2addr v6, v8

    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 550
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 551
    if-lez v4, :cond_9

    iget v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/2addr v6, v1

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    :goto_3
    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 553
    iput v11, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    :cond_7
    move v0, v6

    .line 533
    goto :goto_1

    :cond_8
    move v6, v7

    .line 548
    goto :goto_2

    .line 551
    :cond_9
    div-int/lit8 v6, v1, 0x2

    goto :goto_3

    .line 557
    :cond_a
    if-lez v4, :cond_c

    .line 558
    div-int v8, v4, v2

    rem-int v9, v4, v2

    if-lez v9, :cond_b

    move v7, v6

    :cond_b
    add-int/2addr v7, v8

    iput v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 560
    :cond_c
    iput v4, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 561
    if-lez v4, :cond_d

    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/2addr v7, v2

    sub-int v2, v7, v4

    .end local v2           #max_data_septets:I
    :cond_d
    iput v2, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 563
    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 570
    .end local v5           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v2       #max_data_septets:I
    :cond_e
    if-eq v4, v10, :cond_f

    if-gt v4, v2, :cond_f

    .line 571
    new-instance v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 572
    .restart local v5       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 573
    iput v4, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 574
    sub-int v7, v2, v4

    iput v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 575
    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 577
    .end local v5           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_f
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .line 579
    .restart local v5       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-ne v7, v6, :cond_0

    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v7, v6, :cond_0

    .line 582
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 583
    iget v7, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v3, v7, 0x2

    .line 584
    .local v3, octets:I
    const/16 v7, 0x8c

    if-le v3, v7, :cond_10

    .line 585
    add-int/lit16 v6, v3, 0x85

    div-int/lit16 v6, v6, 0x86

    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 587
    iget v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v6, v6, 0x86

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 593
    :goto_4
    iput v11, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 590
    :cond_10
    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 591
    rsub-int v6, v3, 0x8c

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4
.end method

.method public static calcTextEncodingDetailsForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 10
    .parameter "msgBody"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 607
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 608
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v5, 0x0

    .line 610
    .local v5, septets:I
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    .line 616
    if-nez p1, :cond_1

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v8, 0x2

    if-nez p2, :cond_2

    const/4 v8, 0x0

    :goto_1
    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v8, 0x3

    .line 628
    .local v7, totalBytes:I
    rsub-int v0, v7, 0xac

    .line 629
    .local v0, maxBytes:I
    mul-int/lit8 v8, v0, 0x8

    div-int/lit8 v3, v8, 0x7

    .line 632
    .local v3, maxSeptets:I
    move v1, v0

    .line 634
    .local v1, maxConcatenatedBytes:I
    mul-int/lit8 v8, v1, 0x8

    div-int/lit8 v2, v8, 0x7

    .line 639
    .local v2, maxConcatenatedSeptets:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    if-gt v5, v3, :cond_3

    .line 640
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 641
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 642
    sub-int v8, v3, v5

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 643
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 698
    :cond_0
    :goto_2
    return-object v6

    .line 616
    .end local v0           #maxBytes:I
    .end local v1           #maxConcatenatedBytes:I
    .end local v2           #maxConcatenatedSeptets:I
    .end local v3           #maxSeptets:I
    .end local v7           #totalBytes:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v8

    goto :goto_1

    .line 645
    .restart local v0       #maxBytes:I
    .restart local v1       #maxConcatenatedBytes:I
    .restart local v2       #maxConcatenatedSeptets:I
    .restart local v3       #maxSeptets:I
    .restart local v7       #totalBytes:I
    :cond_3
    const/4 v8, -0x1

    if-eq v5, v8, :cond_6

    .line 646
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 647
    if-le v5, v3, :cond_5

    .line 648
    rem-int v8, v5, v2

    if-nez v8, :cond_4

    .line 649
    div-int v8, v5, v2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 650
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 660
    :goto_3
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 681
    :goto_4
    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 684
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 685
    iget v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v4, v8, 0x2

    .line 686
    .local v4, octets:I
    if-le v4, v0, :cond_9

    .line 687
    div-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 688
    rem-int v8, v4, v1

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 694
    :goto_5
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 652
    .end local v4           #octets:I
    :cond_4
    div-int v8, v5, v2

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 653
    rem-int v8, v5, v2

    sub-int v8, v2, v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 657
    :cond_5
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 658
    sub-int v8, v3, v5

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 662
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v4, v8, 0x2

    .line 663
    .restart local v4       #octets:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 665
    if-le v4, v0, :cond_8

    .line 666
    rem-int v8, v4, v1

    if-nez v8, :cond_7

    .line 667
    div-int v8, v4, v1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 668
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 678
    :goto_6
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_4

    .line 670
    :cond_7
    div-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 671
    rem-int v8, v4, v1

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 675
    :cond_8
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 676
    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 691
    :cond_9
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 692
    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .parameter "msg"
    .parameter "force"

    .prologue
    const/4 v2, -0x1

    .line 482
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 483
    .local v1, msgLen:I
    if-eqz p1, :cond_1

    .line 489
    .end local v1           #msgLen:I
    :cond_0
    :goto_0
    return v1

    .line 484
    .restart local v1       #msgLen:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 485
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 486
    goto :goto_0

    .line 484
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1
    .parameter "smsData"

    .prologue
    .line 2644
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 10
    .parameter "smsData"
    .parameter "serviceCategory"

    .prologue
    const/4 v8, 0x1

    .line 2662
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2663
    .local v4, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2664
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x0

    .line 2665
    .local v3, foundSubparamMask:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lez v7, :cond_3

    .line 2666
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2667
    .local v5, subparamId:I
    shl-int v6, v8, v5

    .line 2668
    .local v6, subparamIdBit:I
    and-int v7, v3, v6

    if-eqz v7, :cond_2

    .line 2669
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal duplicate subparameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2768
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :catch_0
    move-exception v2

    .line 2769
    .local v2, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BearerData decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    .end local v2           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    .line 2672
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #subparamId:I
    .restart local v6       #subparamIdBit:I
    :cond_2
    const/4 v1, 0x0

    .line 2673
    .local v1, decodeSuccess:Z
    sparse-switch v5, :sswitch_data_0

    .line 2739
    :try_start_1
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unsupported bearer data subparameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2770
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :catch_1
    move-exception v2

    .line 2771
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BearerData decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2675
    .end local v2           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #subparamId:I
    .restart local v6       #subparamIdBit:I
    :sswitch_0
    :try_start_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2742
    :goto_3
    if-eqz v1, :cond_0

    or-int/2addr v3, v6

    goto/16 :goto_0

    .line 2678
    :sswitch_1
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2679
    goto :goto_3

    .line 2681
    :sswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2682
    goto :goto_3

    .line 2684
    :sswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2685
    goto :goto_3

    .line 2687
    :sswitch_4
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2688
    goto :goto_3

    .line 2690
    :sswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2691
    goto :goto_3

    .line 2693
    :sswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2694
    goto :goto_3

    .line 2696
    :sswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2697
    goto :goto_3

    .line 2699
    :sswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2700
    goto :goto_3

    .line 2702
    :sswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2703
    goto :goto_3

    .line 2705
    :sswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2706
    goto :goto_3

    .line 2708
    :sswitch_b
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2709
    goto :goto_3

    .line 2711
    :sswitch_c
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2712
    goto :goto_3

    .line 2714
    :sswitch_d
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2715
    goto :goto_3

    .line 2717
    :sswitch_e
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2718
    goto :goto_3

    .line 2720
    :sswitch_f
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2721
    goto :goto_3

    .line 2723
    :sswitch_10
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2724
    goto :goto_3

    .line 2726
    :sswitch_11
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2727
    goto :goto_3

    .line 2729
    :sswitch_12
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2730
    goto :goto_3

    .line 2735
    :sswitch_13
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)V

    goto :goto_3

    .line 2744
    .end local v1           #decodeSuccess:Z
    .end local v5           #subparamId:I
    .end local v6           #subparamIdBit:I
    :cond_3
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_4

    .line 2745
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2747
    :cond_4
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v7, :cond_1

    .line 2748
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2749
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    goto/16 :goto_2

    .line 2750
    :cond_5
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v7, v8, :cond_7

    .line 2751
    xor-int/lit8 v7, v3, 0x1

    xor-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 2755
    const-string v7, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 must occur without extra subparams ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_6
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto/16 :goto_2

    .line 2763
    :cond_7
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2673
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_f
        0x9 -> :sswitch_c
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_10
        0xd -> :sswitch_d
        0xe -> :sswitch_5
        0xf -> :sswitch_e
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x14 -> :sswitch_6
        0x55 -> :sswitch_13
        0x56 -> :sswitch_13
        0x57 -> :sswitch_13
    .end sparse-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 12
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0xd

    const/16 v9, 0xa

    const/4 v4, 0x1

    .line 1346
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v7, v4, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1348
    .local v4, isAsiaChs:Z
    :goto_0
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd8

    if-eq v7, v8, :cond_0

    if-eqz v4, :cond_1

    .line 1349
    :cond_0
    mul-int/lit8 v7, p1, 0x8

    rem-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_3

    .line 1350
    mul-int/lit8 v7, p1, 0x8

    div-int/lit8 v7, v7, 0x7

    sub-int/2addr p2, v7

    .line 1357
    :cond_1
    :goto_1
    if-nez p1, :cond_4

    .line 1358
    mul-int/lit8 p1, p1, 0x8

    .line 1369
    :goto_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1370
    .local v5, strBuf:Ljava/lang/StringBuffer;
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1371
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v7, p2, 0x7

    add-int v6, p1, v7

    .line 1372
    .local v6, wantedBits:I
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-ge v7, v6, :cond_6

    .line 1373
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insufficient data (wanted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bits, but only have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #strBuf:Ljava/lang/StringBuffer;
    .end local v6           #wantedBits:I
    :catch_0
    move-exception v1

    .line 1393
    .local v1, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "7bit ASCII decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1346
    .end local v1           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v4           #isAsiaChs:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1352
    .restart local v4       #isAsiaChs:Z
    :cond_3
    mul-int/lit8 v7, p1, 0x8

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr p2, v7

    goto :goto_1

    .line 1360
    :cond_4
    mul-int/lit8 v7, p1, 0x8

    :try_start_1
    rem-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_5

    .line 1361
    mul-int/lit8 p1, p1, 0x8

    goto :goto_2

    .line 1363
    :cond_5
    mul-int/lit8 p1, p1, 0x8

    .line 1364
    mul-int/lit8 v7, p1, 0x8

    rem-int/lit8 v7, v7, 0x7

    rsub-int/lit8 v7, v7, 0x7

    add-int/2addr p1, v7

    goto :goto_2

    .line 1376
    .restart local v3       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #strBuf:Ljava/lang/StringBuffer;
    .restart local v6       #wantedBits:I
    :cond_6
    invoke-virtual {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1377
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, p2, :cond_a

    .line 1378
    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1379
    .local v0, charCode:I
    if-lt v0, v11, :cond_7

    sget v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v0, v7, :cond_7

    .line 1381
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v8, v0, -0x20

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1377
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1382
    :cond_7
    if-ne v0, v9, :cond_8

    .line 1383
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1384
    :cond_8
    if-ne v0, v10, :cond_9

    .line 1385
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1388
    :cond_9
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1391
    .end local v0           #charCode:I
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1413
    mul-int/lit8 v6, p1, 0x8

    .line 1414
    .local v6, offsetBits:I
    add-int/lit8 v0, v6, 0x6

    div-int/lit8 v7, v0, 0x7

    .line 1415
    .local v7, offsetSeptets:I
    sub-int/2addr p2, v7

    .line 1416
    mul-int/lit8 v0, v7, 0x7

    sub-int v3, v0, v6

    .local v3, paddingBits:I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 1417
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v8

    .line 1419
    .local v8, result:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1420
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v1, "7bit GSM decoding failed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_0
    return-object v8
.end method

.method public static decodeCBM(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 14
    .parameter "sms"

    .prologue
    const/4 v13, 0x1

    .line 2535
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEncodedBearerData()[B

    move-result-object v7

    .line 2537
    .local v7, smsData:[B
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2538
    .local v4, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2539
    .local v0, bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v5

    .line 2541
    .local v5, isCmas:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v6

    .line 2542
    .local v6, isKddiEarthquakeAlert:Z
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    .line 2545
    const/4 v3, 0x0

    .line 2546
    .local v3, foundSubparamMask:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v10

    if-lez v10, :cond_3

    .line 2547
    const/4 v1, 0x0

    .line 2548
    .local v1, decodeSuccess:Z
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2549
    .local v8, subparamId:I
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "subparamId> 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    shl-int v9, v13, v8

    .line 2551
    .local v9, subparamIdBit:I
    and-int v10, v3, v9

    if-eqz v10, :cond_2

    .line 2552
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal duplicate subparameter ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2626
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #isCmas:Z
    .end local v6           #isKddiEarthquakeAlert:Z
    .end local v8           #subparamId:I
    .end local v9           #subparamIdBit:I
    :catch_0
    move-exception v2

    .line 2627
    .local v2, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BearerData decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    .end local v2           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    .line 2555
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #isCmas:Z
    .restart local v6       #isKddiEarthquakeAlert:Z
    .restart local v8       #subparamId:I
    .restart local v9       #subparamIdBit:I
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 2591
    :pswitch_0
    :try_start_1
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unsupported bearer data subparameter ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2628
    .end local v0           #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1           #decodeSuccess:Z
    .end local v3           #foundSubparamMask:I
    .end local v4           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v5           #isCmas:Z
    .end local v6           #isKddiEarthquakeAlert:Z
    .end local v8           #subparamId:I
    .end local v9           #subparamIdBit:I
    :catch_1
    move-exception v2

    .line 2629
    .local v2, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BearerData decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2557
    .end local v2           #ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0       #bData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1       #decodeSuccess:Z
    .restart local v3       #foundSubparamMask:I
    .restart local v4       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5       #isCmas:Z
    .restart local v6       #isKddiEarthquakeAlert:Z
    .restart local v8       #subparamId:I
    .restart local v9       #subparamIdBit:I
    :pswitch_1
    :try_start_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2594
    :goto_3
    if-eqz v1, :cond_0

    or-int/2addr v3, v9

    goto/16 :goto_0

    .line 2561
    :pswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2562
    goto :goto_3

    .line 2564
    :pswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2565
    goto :goto_3

    .line 2568
    :pswitch_4
    const/4 v10, 0x1

    invoke-static {v0, v4, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v1

    .line 2570
    goto :goto_3

    .line 2572
    :pswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2573
    goto :goto_3

    .line 2575
    :pswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2576
    goto :goto_3

    .line 2578
    :pswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2579
    goto :goto_3

    .line 2581
    :pswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2582
    goto :goto_3

    .line 2584
    :pswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2586
    goto :goto_3

    .line 2588
    :pswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2589
    goto :goto_3

    .line 2596
    .end local v1           #decodeSuccess:Z
    .end local v8           #subparamId:I
    .end local v9           #subparamIdBit:I
    :cond_3
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_4

    .line 2597
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v11, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2599
    :cond_4
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v10, :cond_1

    .line 2600
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v10, v13, :cond_6

    .line 2601
    xor-int/lit8 v10, v3, 0x1

    xor-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_5

    .line 2605
    const-string v10, "SMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IS-91 must occur without extra subparams ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto/16 :goto_2

    .line 2610
    :cond_6
    if-eqz v5, :cond_7

    .line 2611
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 2612
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    if-eqz v10, :cond_1

    .line 2613
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    goto/16 :goto_2

    .line 2620
    :cond_7
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-boolean v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 10
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 2011
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    mul-int/lit8 v5, v7, 0x8

    .line 2012
    .local v5, paramBits:I
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2013
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2014
    const/4 v3, 0x4

    .line 2015
    .local v3, fieldBits:B
    const/4 v1, 0x1

    .line 2016
    .local v1, consumedBits:B
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v8, :cond_0

    .line 2017
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 2018
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2019
    const/16 v3, 0x8

    .line 2020
    int-to-byte v1, v9

    .line 2022
    :cond_0
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 2023
    add-int/lit8 v7, v1, 0x8

    int-to-byte v1, v7

    .line 2024
    sub-int v6, v5, v1

    .line 2025
    .local v6, remainingBits:I
    iget v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v2, v7, v3

    .line 2026
    .local v2, dataBits:I
    sub-int v4, v6, v2

    .line 2027
    .local v4, paddingBits:I
    if-ge v6, v2, :cond_1

    .line 2028
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dataBits + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", paddingBits + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2032
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 2033
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2034
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 2036
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->judgeAndPrependPlus()V

    .line 2039
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2040
    return v8
.end method

.method private static decodeCmasErecordAlertText(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 14
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1536
    const/4 v2, 0x0

    .line 1537
    .local v2, decodeSuccess:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1539
    .local v8, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1540
    .local v4, paramBytes:I
    mul-int/lit8 v3, v4, 0x8

    .line 1541
    .local v3, paramBits:I
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "paramBytes> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    if-gt v4, v13, :cond_0

    .line 1545
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1598
    :goto_0
    return v13

    .line 1552
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCharSetEncoding(I)V

    .line 1553
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCharSetEncodingSet(Z)V

    .line 1554
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encoding> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    new-array v7, v4, [B

    .line 1557
    .local v7, textArray:[B
    add-int/lit8 v9, v3, -0x8

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v1

    .line 1558
    .local v1, data1:[B
    new-array v6, v13, [B

    .line 1559
    .local v6, remainByte:[B
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1560
    .local v5, remainBits:I
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainBits> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    shl-int/lit8 v9, v5, 0x5

    and-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v6, v12

    .line 1562
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainByte> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    array-length v9, v1

    invoke-static {v1, v12, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1564
    array-length v9, v1

    invoke-static {v6, v12, v7, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1565
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertText([B)V

    .line 1567
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getNumberOfFields(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;)I

    move-result v0

    .line 1568
    .local v0, charCount:I
    if-gez v0, :cond_1

    .line 1569
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported cmas charset encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1572
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1595
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported cmas charset encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1574
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1575
    const/4 v2, 0x1

    .line 1576
    goto/16 :goto_0

    .line 1579
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1580
    const/4 v2, 0x1

    .line 1581
    goto/16 :goto_0

    .line 1583
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1584
    const/4 v2, 0x1

    .line 1585
    goto/16 :goto_0

    .line 1587
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1588
    const/4 v2, 0x1

    .line 1589
    goto/16 :goto_0

    .line 1591
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1592
    const/4 v2, 0x1

    .line 1593
    goto/16 :goto_0

    .line 1572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeCmasErecordType1(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 1506
    const/16 v0, 0x20

    .line 1507
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1508
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1509
    .local v2, paramBits:I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 1510
    add-int/lit8 v2, v2, -0x20

    .line 1511
    const/4 v1, 0x1

    .line 1512
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCategory(I)V

    .line 1513
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setResponseType(I)V

    .line 1514
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setSeverity(I)V

    .line 1515
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setUrgency(I)V

    .line 1516
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCertainty(I)V

    .line 1517
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1519
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1520
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e_record_type_1 decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1525
    return v1

    .line 1520
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeCmasErecordType2(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 8
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 1474
    const/16 v0, 0x50

    .line 1475
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1476
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x8

    .line 1477
    .local v2, paramBits:I
    const/16 v4, 0x50

    if-lt v2, v4, :cond_0

    .line 1478
    add-int/lit8 v2, v2, -0x50

    .line 1479
    const/4 v1, 0x1

    .line 1480
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCmasId(I)V

    .line 1482
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertHandling(I)V

    .line 1483
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    .line 1484
    .local v3, time:[B
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->fromatTimeStamp([B)Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setExpires(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;)V

    .line 1485
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expires> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setLanguage(I)V

    .line 1488
    .end local v3           #time:[B
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1489
    :cond_1
    const-string v5, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e_record_type_2 decode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    const-string v4, "succeeded"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (extra bits = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1494
    return v1

    .line 1489
    :cond_3
    const-string v4, "failed"

    goto :goto_0
.end method

.method private static decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .locals 15
    .parameter "bData"
    .parameter "serviceCategory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2454
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2455
    .local v8, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    const/16 v13, 0x8

    if-ge v0, v13, :cond_0

    .line 2456
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v13, "emergency CB with no CMAE_protocol_version"

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2458
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 2459
    .local v10, protocolVersion:I
    if-eqz v10, :cond_1

    .line 2460
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unsupported CMAE_protocol_version "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2463
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v1

    .line 2464
    .local v1, messageClass:I
    const/4 v2, -0x1

    .line 2465
    .local v2, category:I
    const/4 v3, -0x1

    .line 2466
    .local v3, responseType:I
    const/4 v4, -0x1

    .line 2467
    .local v4, severity:I
    const/4 v5, -0x1

    .line 2468
    .local v5, urgency:I
    const/4 v6, -0x1

    .line 2470
    .local v6, certainty:I
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    const/16 v13, 0x10

    if-lt v0, v13, :cond_2

    .line 2471
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 2472
    .local v12, recordType:I
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 2473
    .local v11, recordLen:I
    packed-switch v12, :pswitch_data_0

    .line 2517
    const-string v0, "SMS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "skipping unsupported CMAS record type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    mul-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_0

    .line 2475
    :pswitch_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2476
    .local v7, alertUserData:Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2477
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2478
    const/4 v0, 0x0

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 2481
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v0, :pswitch_data_1

    .line 2498
    :pswitch_1
    const/4 v9, 0x0

    .line 2501
    .local v9, numFields:I
    :goto_1
    iput v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2502
    mul-int/lit8 v0, v11, 0x8

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2503
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2504
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    goto :goto_0

    .line 2484
    .end local v9           #numFields:I
    :pswitch_2
    add-int/lit8 v9, v11, -0x1

    .line 2485
    .restart local v9       #numFields:I
    goto :goto_1

    .line 2490
    .end local v9           #numFields:I
    :pswitch_3
    mul-int/lit8 v0, v11, 0x8

    add-int/lit8 v0, v0, -0x5

    div-int/lit8 v9, v0, 0x7

    .line 2491
    .restart local v9       #numFields:I
    goto :goto_1

    .line 2494
    .end local v9           #numFields:I
    :pswitch_4
    add-int/lit8 v0, v11, -0x1

    div-int/lit8 v9, v0, 0x2

    .line 2495
    .restart local v9       #numFields:I
    goto :goto_1

    .line 2508
    .end local v7           #alertUserData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v9           #numFields:I
    :pswitch_5
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 2509
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 2510
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 2511
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2512
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2513
    mul-int/lit8 v0, v11, 0x8

    add-int/lit8 v0, v0, -0x1c

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2523
    .end local v11           #recordLen:I
    .end local v12           #recordType:I
    :cond_2
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 2525
    return-void

    .line 2473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 2481
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 20
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    move-object/from16 v16, v0

    .line 1620
    .local v16, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1621
    .local v10, hasUserDataHeader:Z
    const/4 v13, 0x0

    .line 1623
    .local v13, offset:I
    if-eqz v10, :cond_0

    .line 1624
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 1625
    .local v15, udhLen:I
    add-int/lit8 v17, v15, 0x1

    add-int v13, v13, v17

    .line 1626
    new-array v11, v15, [B

    .line 1627
    .local v11, headerData:[B
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1628
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1633
    .end local v11           #headerData:[B
    .end local v15           #udhLen:I
    :cond_0
    :try_start_0
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1634
    .local v12, inStream:Lcom/android/internal/util/BitwiseInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;-><init>()V

    .line 1635
    .local v4, cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    .line 1637
    if-lez v13, :cond_1

    .line 1638
    mul-int/lit8 v14, v13, 0x8

    .line 1639
    .local v14, offsetBits:I
    invoke-virtual {v12, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1642
    .end local v14           #offsetBits:I
    :cond_1
    const/16 v3, 0x18

    .line 1643
    .local v3, EXPECTED_CMAS_MIN_SIZE:I
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1644
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal CMAS format. offset: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    .end local v3           #EXPECTED_CMAS_MIN_SIZE:I
    .end local v4           #cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    .end local v12           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :catch_0
    move-exception v8

    .line 1686
    .local v8, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMAS Message decode failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1648
    .end local v8           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v3       #EXPECTED_CMAS_MIN_SIZE:I
    .restart local v4       #cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    .restart local v12       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    :cond_2
    const/16 v17, 0x8

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setProtocolVersion(I)V

    .line 1649
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMAE_pro_v> 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getProtocolVersion()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const/4 v9, 0x0

    .line 1653
    .local v9, foundErecordTypeMask:I
    :cond_3
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 1654
    const/4 v5, 0x0

    .line 1655
    .local v5, decodeSuccess:Z
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1656
    .local v6, eRecordTypeId:I
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "eRecordTypeId> 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const/16 v17, 0x1

    shl-int v7, v17, v6

    .line 1658
    .local v7, eRecoredTypeIdBit:I
    and-int v17, v9, v7

    if-eqz v17, :cond_4

    .line 1659
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal duplicate e_recored_type ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1662
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 1675
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->skipUnsupportedType(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    .line 1676
    const-string v17, "SMS"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "skip unsupported e_record-type ( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :goto_1
    if-eqz v5, :cond_3

    or-int/2addr v9, v7

    goto/16 :goto_0

    .line 1664
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordAlertText(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1665
    goto :goto_1

    .line 1667
    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordType1(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1668
    goto :goto_1

    .line 1670
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordType2(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1671
    goto :goto_1

    .line 1682
    .end local v5           #decodeSuccess:Z
    .end local v6           #eRecordTypeId:I
    .end local v7           #eRecoredTypeIdBit:I
    :cond_5
    and-int/lit8 v17, v9, 0x1

    if-nez v17, :cond_6

    .line 1683
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v18, "CMAS Message missing E_RECORD_TYPE_ALERT_TEXT type"

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1688
    :cond_6
    return-void

    .line 1662
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2130
    const/16 v0, 0x30

    .line 2131
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2132
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2133
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2134
    add-int/lit8 v2, v2, -0x30

    .line 2135
    const/4 v1, 0x1

    .line 2136
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2139
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2140
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2145
    return v1

    .line 2140
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2172
    const/16 v0, 0x8

    .line 2173
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2174
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2175
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2176
    add-int/lit8 v2, v2, -0x8

    .line 2177
    const/4 v1, 0x1

    .line 2178
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 2180
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2181
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2186
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 2187
    return v1

    .line 2181
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1958
    const/16 v0, 0x10

    .line 1959
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1960
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1961
    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1962
    add-int/lit8 v2, v2, -0x10

    .line 1963
    const/4 v1, 0x1

    .line 1964
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 1966
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1967
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1972
    return v1

    .line 1967
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2236
    const/16 v0, 0x8

    .line 2237
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2238
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2239
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2240
    add-int/lit8 v2, v2, -0x8

    .line 2241
    const/4 v1, 0x1

    .line 2242
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 2243
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2245
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2246
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISPLAY_MODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2251
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 2252
    return v1

    .line 2246
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .parameter "rawData"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 1980
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1981
    .local v1, strBuf:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 1982
    div-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v2, v3, 0xf

    .line 1985
    .local v2, val:I
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1981
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1986
    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1987
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1988
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1989
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1991
    .end local v2           #val:I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    .line 1906
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1896
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1909
    :goto_0
    return-void

    .line 1899
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1903
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1894
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 6
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1877
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1878
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    div-int/lit8 v1, v4, 0x4

    .line 1879
    .local v1, dataLen:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1880
    .local v3, numFields:I
    const/16 v4, 0xe

    if-gt v1, v4, :cond_0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    if-ge v1, v3, :cond_1

    .line 1881
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v5, "IS-91 voicemail status decoding failed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1883
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1884
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1885
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1886
    int-to-byte v4, v3

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1887
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1888
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1889
    return-void
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 7
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1854
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1855
    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    div-int/lit8 v0, v5, 0x6

    .line 1856
    .local v0, dataLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1858
    .local v3, numFields:I
    const/16 v5, 0xe

    if-gt v3, v5, :cond_0

    if-ge v0, v3, :cond_1

    .line 1859
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v6, "IS-91 short message decoding failed"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1861
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1862
    .local v4, strbuf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1863
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1865
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1866
    return-void
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 10
    .parameter "bData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    .line 1811
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1812
    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    div-int/lit8 v1, v7, 0x6

    .line 1813
    .local v1, dataLen:I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1814
    .local v4, numFields:I
    const/16 v7, 0xe

    if-gt v1, v7, :cond_0

    if-lt v1, v8, :cond_0

    if-ge v1, v4, :cond_1

    .line 1815
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "IS-91 voicemail status decoding failed"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1818
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1819
    .local v6, strbuf:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lt v7, v9, :cond_2

    .line 1820
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1835
    .end local v6           #strbuf:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 1836
    .local v2, ex:Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1822
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #strbuf:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, data:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1824
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1825
    .local v5, prioCode:C
    const/16 v7, 0x20

    if-ne v5, v7, :cond_3

    .line 1826
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1833
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1834
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x3

    add-int/lit8 v9, v4, -0x3

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1840
    return-void

    .line 1827
    :cond_3
    const/16 v7, 0x21

    if-ne v5, v7, :cond_4

    .line 1828
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1837
    .end local v0           #data:Ljava/lang/String;
    .end local v5           #prioCode:C
    .end local v6           #strbuf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 1838
    .local v2, ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1830
    .end local v2           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #data:Ljava/lang/String;
    .restart local v5       #prioCode:C
    .restart local v6       #strbuf:Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2215
    const/16 v0, 0x8

    .line 2216
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2217
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2218
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2219
    add-int/lit8 v2, v2, -0x8

    .line 2220
    const/4 v1, 0x1

    .line 2221
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 2223
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2224
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2229
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 2230
    return v1

    .line 2224
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1428
    if-ltz p2, :cond_0

    add-int v1, p2, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 1429
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "ISO-8859-1 decode failed: offset or length out of range"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1432
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISO-8859-1 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    .line 1274
    const/16 v0, 0x18

    .line 1275
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1276
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x8

    .line 1277
    .local v2, paramBits:I
    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 1278
    add-int/lit8 v2, v2, -0x18

    .line 1279
    const/4 v1, 0x1

    .line 1280
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1281
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1282
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1283
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1284
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1286
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1287
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1292
    return v1

    .line 1283
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1287
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 1
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2069
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    return v0
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .parameter "isCbm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    .line 2077
    const/16 v0, 0x30

    .line 2078
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2079
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2082
    .local v2, paramBits:I
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x51

    if-ne v3, v4, :cond_0

    .line 2089
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2090
    const/4 v3, 0x1

    .line 2104
    :goto_0
    return v3

    .line 2093
    :cond_0
    if-lt v2, v5, :cond_1

    .line 2094
    add-int/lit8 v2, v2, -0x30

    .line 2095
    const/4 v1, 0x1

    .line 2096
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2098
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 2099
    :cond_2
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move v3, v1

    .line 2104
    goto :goto_0

    .line 2099
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1938
    const/16 v0, 0x8

    .line 1939
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1940
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1941
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 1942
    add-int/lit8 v2, v2, -0x8

    .line 1943
    const/4 v1, 0x1

    .line 1944
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1946
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1947
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1952
    return v1

    .line 1947
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2280
    const/16 v0, 0x8

    .line 2281
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2282
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2284
    .local v2, paramBits:I
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isSupportKddiMtCmail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2289
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2290
    const/4 v3, 0x1

    .line 2306
    :goto_0
    return v3

    .line 2293
    :cond_0
    if-lt v2, v4, :cond_1

    .line 2294
    add-int/lit8 v2, v2, -0x8

    .line 2295
    const/4 v1, 0x1

    .line 2296
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 2297
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2299
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 2300
    :cond_2
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2305
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    move v3, v1

    .line 2306
    goto :goto_0

    .line 2300
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2046
    const/16 v0, 0x8

    .line 2047
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2048
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2049
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2050
    add-int/lit8 v2, v2, -0x8

    .line 2051
    const/4 v1, 0x1

    .line 2052
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 2053
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 2055
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2056
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_STATUS decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2061
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 2062
    return v1

    .line 2056
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeOctet([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1402
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Octet decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2258
    const/16 v0, 0x8

    .line 2259
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2260
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2261
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2262
    add-int/lit8 v2, v2, -0x8

    .line 2263
    const/4 v1, 0x1

    .line 2264
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2265
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2267
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2268
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIORITY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2273
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2274
    return v1

    .line 2268
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2193
    const/16 v0, 0x8

    .line 2194
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2195
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2196
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2197
    add-int/lit8 v2, v2, -0x8

    .line 2198
    const/4 v1, 0x1

    .line 2199
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 2200
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2202
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2203
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIVACY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2208
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 2209
    return v1

    .line 2203
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1914
    const/16 v0, 0x8

    .line 1915
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 1916
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1917
    .local v2, paramBits:I
    if-lt v2, v6, :cond_0

    .line 1918
    add-int/lit8 v2, v2, -0x8

    .line 1919
    const/4 v1, 0x1

    .line 1920
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1921
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1922
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1923
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1924
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1926
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1927
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLY_OPTION decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_7

    const-string v3, "succeeded"

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1932
    return v1

    :cond_3
    move v3, v5

    .line 1920
    goto :goto_0

    :cond_4
    move v3, v5

    .line 1921
    goto :goto_1

    :cond_5
    move v3, v5

    .line 1922
    goto :goto_2

    :cond_6
    move v4, v5

    .line 1923
    goto :goto_3

    .line 1927
    :cond_7
    const-string v3, "failed"

    goto :goto_4
.end method

.method private static decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 20
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2333
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 2334
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits available"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2338
    :cond_0
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    mul-int/lit8 v13, v17, 0x8

    .line 2339
    .local v13, paramBits:I
    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 2340
    .local v11, msgEncoding:I
    add-int/lit8 v13, v13, -0x5

    .line 2342
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v13, :cond_1

    .line 2343
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits available ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits expected)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2347
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2349
    .local v14, programDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    const/16 v9, 0x30

    .line 2350
    .local v9, CATEGORY_FIELD_MIN_SIZE:I
    const/4 v10, 0x0

    .line 2351
    .local v10, decodeSuccess:Z
    :goto_0
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 2352
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 2353
    .local v3, operation:I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    shl-int/lit8 v17, v17, 0x8

    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    or-int v4, v17, v18

    .line 2354
    .local v4, category:I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2355
    .local v5, language:Ljava/lang/String;
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2356
    .local v6, maxMessages:I
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 2357
    .local v7, alertOption:I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 2358
    .local v12, numFields:I
    add-int/lit8 v13, v13, -0x30

    .line 2360
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v15

    .line 2361
    .local v15, textBits:I
    if-ge v13, v15, :cond_2

    .line 2362
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "category name is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits in length,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but there are only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits available"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2366
    :cond_2
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2367
    .local v16, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, v16

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2368
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2369
    move-object/from16 v0, v16

    iput v12, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2370
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2371
    sub-int/2addr v13, v15

    .line 2373
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2374
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2375
    .local v8, categoryName:Ljava/lang/String;
    new-instance v2, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    invoke-direct/range {v2 .. v8}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 2377
    .local v2, programData:Landroid/telephony/cdma/CdmaSmsCbProgramData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    const/4 v10, 0x1

    .line 2380
    goto/16 :goto_0

    .line 2382
    .end local v2           #programData:Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .end local v3           #operation:I
    .end local v4           #category:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #maxMessages:I
    .end local v7           #alertOption:I
    .end local v8           #categoryName:Ljava/lang/String;
    .end local v12           #numFields:I
    .end local v15           #textBits:I
    .end local v16           #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_3
    if-eqz v10, :cond_4

    if-lez v13, :cond_5

    .line 2383
    :cond_4
    const-string v18, "SMS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v10, :cond_6

    const-string v17, "succeeded"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " (extra bits = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x29

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2389
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/List;

    .line 2390
    return v10

    .line 2383
    :cond_6
    const-string v17, "failed"

    goto :goto_1
.end method

.method private static decodeShiftJis([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1443
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sub-int v2, p2, p1

    const-string v3, "SJIS"

    invoke-direct {v1, p0, p1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SJIS decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1995
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1999
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v4, v4

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    :goto_0
    return-void

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2004
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1298
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1299
    .local v2, paramBits:I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1300
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1301
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1302
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1303
    const/4 v0, 0x5

    .line 1304
    .local v0, consumedBits:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1306
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1307
    add-int/lit8 v0, v0, 0x8

    .line 1309
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1310
    add-int/lit8 v0, v0, 0x8

    .line 1311
    sub-int v1, v2, v0

    .line 1312
    .local v1, dataBits:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1313
    return v5
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 1
    .parameter "userData"
    .parameter "hasUserDataHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1696
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V

    .line 1697
    return-void
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V
    .locals 12
    .parameter "userData"
    .parameter "hasUserDataHeader"
    .parameter "isKddiEarthquakeAlert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1703
    const/4 v4, 0x0

    .line 1704
    .local v4, offset:I
    if-eqz p1, :cond_0

    .line 1705
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v8, v8, v10

    and-int/lit16 v7, v8, 0xff

    .line 1706
    .local v7, udhLen:I
    add-int/lit8 v8, v7, 0x1

    add-int/2addr v4, v8

    .line 1707
    new-array v3, v7, [B

    .line 1708
    .local v3, headerData:[B
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v8, v11, v3, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1709
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1713
    .end local v3           #headerData:[B
    .end local v7           #udhLen:I
    :cond_0
    const/16 v2, 0x9

    .line 1714
    .local v2, encodingTypeFromDcs:I
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_1

    .line 1715
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    invoke-static {v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getEncodingTypeFromDcs(B)I

    move-result v2

    .line 1716
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1723
    :cond_1
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x51

    if-ne v8, v9, :cond_2

    .line 1724
    if-ne p1, v11, :cond_2

    .line 1725
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    sub-int/2addr v8, v4

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1726
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v8, v8

    sub-int/2addr v8, v4

    new-array v6, v8, [B

    .line 1727
    .local v6, truePayload:[B
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v9, v6

    invoke-static {v8, v4, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1728
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1729
    const/4 v4, 0x0

    .line 1734
    .end local v6           #truePayload:[B
    :cond_2
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v8, :pswitch_data_0

    .line 1789
    :pswitch_0
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupported user data encoding ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1740
    :pswitch_1
    const/4 v1, 0x0

    .line 1751
    .local v1, decodingtypeUTF8:Z
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v5, v8, [B

    .line 1752
    .local v5, payload:[B
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v9, v9

    if-ge v8, v9, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1755
    .local v0, copyLen:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v8, v10, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1756
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1758
    if-nez v1, :cond_4

    .line 1761
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1792
    .end local v0           #copyLen:I
    .end local v1           #decodingtypeUTF8:Z
    .end local v5           #payload:[B
    :goto_1
    return-void

    .line 1752
    .restart local v1       #decodingtypeUTF8:Z
    .restart local v5       #payload:[B
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v8

    goto :goto_0

    .line 1763
    .restart local v0       #copyLen:I
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1768
    .end local v0           #copyLen:I
    .end local v1           #decodingtypeUTF8:Z
    .end local v5           #payload:[B
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1771
    :pswitch_3
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1774
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1777
    :pswitch_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1781
    :pswitch_6
    if-nez p2, :cond_5

    sget-boolean v8, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v8, :cond_5

    .line 1782
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p0, v4, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiDecodeShiftJis(Lcom/android/internal/telephony/cdma/sms/UserData;II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1784
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v8, v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2312
    const/16 v0, 0x8

    .line 2313
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2314
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2315
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2316
    add-int/lit8 v2, v2, -0x8

    .line 2317
    const/4 v1, 0x1

    .line 2318
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 2320
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2321
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_RESPONSE_CODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2326
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 2327
    return v1

    .line 2321
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1332
    mul-int/lit8 v0, p2, 0x2

    .line 1333
    .local v0, byteCount:I
    if-ltz v0, :cond_0

    add-int v2, v0, p1

    array-length v3, p0

    if-le v2, v3, :cond_1

    .line 1334
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "UTF-16 decode failed: offset or length out of range"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1337
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-16be"

    invoke-direct {v2, p0, p1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1338
    :catch_0
    move-exception v1

    .line 1339
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTF-16 decode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 4
    .parameter "data"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1319
    if-ltz p2, :cond_0

    add-int v1, p2, p1

    array-length v2, p0

    if-le v1, v2, :cond_1

    .line 1320
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "UTF-8 decode failed: offset or length out of range"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1323
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2110
    const/16 v0, 0x30

    .line 2111
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2112
    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2113
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2114
    add-int/lit8 v2, v2, -0x30

    .line 2115
    const/4 v1, 0x1

    .line 2116
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2118
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2119
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2124
    return v1

    .line 2119
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2151
    const/16 v0, 0x8

    .line 2152
    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .line 2153
    .local v1, decodeSuccess:Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2154
    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    .line 2155
    add-int/lit8 v2, v2, -0x8

    .line 2156
    const/4 v1, 0x1

    .line 2157
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 2159
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2160
    :cond_1
    const-string v4, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2165
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 2166
    return v1

    .line 2160
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 5
    .parameter "bData"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1202
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_d

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1205
    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1206
    .local v1, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1207
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_0

    .line 1209
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1210
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1212
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v2, :cond_1

    .line 1213
    const/16 v2, 0x8

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1214
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1216
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v2, :cond_3

    .line 1217
    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1218
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1220
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v2, :cond_4

    .line 1221
    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1222
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1224
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_e

    .line 1225
    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1226
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1233
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_6

    .line 1234
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1235
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1238
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_7

    .line 1239
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1240
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1242
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_8

    .line 1243
    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1244
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1246
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_9

    .line 1247
    const/16 v2, 0x8

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1248
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1250
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_a

    .line 1251
    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1252
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1254
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_b

    .line 1255
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1256
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1258
    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_c

    .line 1259
    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1260
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1262
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1268
    .end local v1           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :goto_2
    return-object v2

    :cond_d
    move v2, v3

    .line 1202
    goto/16 :goto_0

    .line 1229
    .restart local v1       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_e
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_5

    .line 1230
    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1231
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1263
    .end local v1           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v0

    .line 1264
    .local v0, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    .end local v0           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1265
    :catch_1
    move-exception v0

    .line 1266
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 9
    .parameter "uData"
    .parameter "udhData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 860
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 861
    .local v0, payload:[B
    array-length v5, p1

    add-int/lit8 v2, v5, 0x1

    .line 862
    .local v2, udhBytes:I
    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v3, v5, 0x2

    .line 863
    .local v3, udhCodeUnits:I
    rem-int/lit8 v4, v2, 0x2

    .line 864
    .local v4, udhPadding:I
    array-length v5, v0

    div-int/lit8 v1, v5, 0x2

    .line 865
    .local v1, payloadCodeUnits:I
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 866
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 867
    add-int v5, v3, v1

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 868
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 869
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 870
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v8, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int v6, v2, v4

    array-length v7, v0

    invoke-static {v0, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 751
    if-nez p2, :cond_0

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->stringTo7BitAsciiPacked(Ljava/lang/String;IZ)[B

    move-result-object v1

    .line 752
    .local v1, fullData:[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 753
    .local v2, result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 754
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    return-object v2

    .end local v1           #fullData:[B
    .end local v2           #result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 751
    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .parameter "msg"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 707
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 708
    .local v4, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 709
    .local v3, msgLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 710
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 711
    .local v0, charCode:I
    if-ne v0, v8, :cond_1

    .line 712
    if-eqz p1, :cond_0

    .line 713
    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 709
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    .end local v0           #charCode:I
    .end local v2           #i:I
    .end local v3           #msgLen:I
    .end local v4           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 723
    .local v1, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 718
    .end local v1           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0       #charCode:I
    .restart local v2       #i:I
    .restart local v3       #msgLen:I
    .restart local v4       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 721
    .end local v0           #charCode:I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 731
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 734
    .local v1, udhBytes:I
    mul-int/lit8 v3, v1, 0x8

    rem-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_0

    .line 735
    mul-int/lit8 v3, v1, 0x8

    div-int/lit8 v2, v3, 0x7

    .line 738
    .local v2, udhSeptets:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 739
    .local v0, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 740
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 741
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 742
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 743
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 744
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    return-void

    .line 737
    .end local v0           #gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .end local v2           #udhSeptets:I
    :cond_0
    mul-int/lit8 v3, v1, 0x8

    div-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v3, 0x1

    .restart local v2       #udhSeptets:I
    goto :goto_0
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .parameter "uData"
    .parameter "udhData"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 846
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 847
    .local v1, udhBytes:I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .line 848
    .local v2, udhSeptets:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 849
    .local v0, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 850
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 851
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 852
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 853
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 854
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .parameter "msg"
    .parameter "septetOffset"
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 832
    if-nez p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 833
    .local v1, fullData:[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 834
    .local v2, result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 835
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    return-object v2

    .end local v1           #fullData:[B
    .end local v2           #result:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 832
    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1081
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1082
    const/16 v3, 0x9

    .line 1083
    .local v3, paramBits:I
    const/4 v1, 0x0

    .line 1084
    .local v1, dataBits:I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_2

    .line 1085
    add-int/lit8 v3, v3, 0x7

    .line 1086
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    .line 1090
    :goto_0
    add-int/2addr v3, v1

    .line 1091
    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v5, v3, 0x8

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    add-int v4, v8, v5

    .line 1092
    .local v4, paramBytes:I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .line 1093
    .local v2, paddingBits:I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1094
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1095
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_0

    .line 1096
    const/4 v5, 0x3

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1097
    const/4 v5, 0x4

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1099
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1100
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1101
    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1102
    :cond_1
    return-void

    .line 1088
    .end local v2           #paddingBits:I
    .end local v4           #paramBytes:I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1091
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 5
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1049
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v2, v4, :cond_1

    .line 1051
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1056
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1059
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    .local v1, pureNumber:Ljava/lang/String;
    :try_start_1
    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1066
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    if-eqz v2, :cond_0

    .line 1067
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1068
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1069
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1070
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    goto :goto_0

    .line 1063
    :catch_1
    move-exception v0

    .line 1064
    .restart local v0       #ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static encodeCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1143
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1150
    return-void
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1172
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1173
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1174
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1175
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .parameter "address"

    .prologue
    .line 1024
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1025
    .local v3, digits:I
    mul-int/lit8 v1, v3, 0x4

    .line 1026
    .local v1, dataBits:I
    div-int/lit8 v2, v1, 0x8

    .line 1027
    .local v2, dataBytes:I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    .line 1028
    new-array v5, v2, [B

    .line 1029
    .local v5, rawData:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 1030
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1031
    .local v0, c:C
    const/4 v6, 0x0

    .line 1032
    .local v6, val:I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    .line 1037
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1029
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1027
    .end local v0           #c:C
    .end local v4           #i:I
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1033
    .restart local v0       #c:C
    .restart local v4       #i:I
    .restart local v5       #rawData:[B
    .restart local v6       #val:I
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 1034
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 1035
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    .line 1036
    :cond_4
    const/4 v5, 0x0

    .line 1039
    .end local v0           #c:C
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_5
    return-object v5
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 877
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    .line 878
    .local v1, headerData:[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_3

    .line 879
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 880
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    .line 897
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiEncodeEmsUserDataGsmDcs(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 899
    return-void

    .line 881
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 882
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 883
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 884
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 886
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1165
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1166
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1167
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 473
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 474
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 475
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 476
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 477
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 478
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 479
    return-void

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1115
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1116
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1117
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1188
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1189
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1190
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1191
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1107
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1108
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1109
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1110
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1180
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1181
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1182
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1183
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1157
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1158
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1159
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1160
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1015
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1016
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1017
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1018
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1019
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1020
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1021
    return-void

    :cond_0
    move v0, v2

    .line 1016
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1017
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1018
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1019
    goto :goto_3
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 977
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 978
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 980
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v7, :cond_1

    .line 981
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v6

    .line 978
    goto :goto_0

    .line 993
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .line 994
    .local v0, dataBits:I
    add-int/lit8 v2, v0, 0xd

    .line 995
    .local v2, paramBits:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_3

    .line 997
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 999
    :cond_3
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_7

    move v4, v5

    :goto_1
    add-int v3, v7, v4

    .line 1000
    .local v3, paramBytes:I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 1001
    .local v1, paddingBits:I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1002
    const/4 v4, 0x5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v4, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1003
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_5

    .line 1005
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1007
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1008
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1009
    if-lez v1, :cond_6

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1010
    :cond_6
    return-void

    .end local v1           #paddingBits:I
    .end local v3           #paramBytes:I
    :cond_7
    move v4, v6

    .line 999
    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 8
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 904
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v3, :cond_0

    .line 905
    const-string v3, "SMS"

    const-string v4, "user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_1

    .line 910
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 967
    :goto_0
    return-void

    .line 915
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->encodeMoSmsWithShiftJis()Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 917
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 918
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 919
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 920
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_2

    :goto_1
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    goto :goto_1

    .line 926
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v3, :cond_a

    .line 927
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v3, :cond_5

    .line 928
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v3, :cond_4

    .line 929
    const-string v3, "SMS"

    const-string v4, "user data with octet encoding but null payload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 931
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 933
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 934
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 937
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 938
    const-string v3, "SMS"

    const-string v4, "non-octet user data with null payloadStr"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 941
    :cond_6
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    .line 942
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 943
    .local v1, gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 944
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 945
    .end local v1           #gcr:Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_8

    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 947
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 948
    :cond_8
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v7, :cond_9

    .line 949
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_0

    .line 952
    :cond_9
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 959
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 965
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, ex:Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 962
    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 801
    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1131
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1133
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1137
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1138
    return-void
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1122
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1123
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1124
    return-void
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .parameter "msgEncoding"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2425
    packed-switch p0, :pswitch_data_0

    .line 2442
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2431
    :pswitch_1
    mul-int/lit8 v0, p1, 0x8

    .line 2439
    :goto_0
    return v0

    .line 2436
    :pswitch_2
    mul-int/lit8 v0, p1, 0x7

    goto :goto_0

    .line 2439
    :pswitch_3
    mul-int/lit8 v0, p1, 0x10

    goto :goto_0

    .line 2425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getEncodingTypeFromDcs(B)I
    .locals 5
    .parameter "dataCodingScheme"

    .prologue
    const/16 v4, 0xe0

    .line 2778
    const/4 v1, 0x0

    .line 2779
    .local v1, userDataCompressed:Z
    const/16 v0, 0x9

    .line 2782
    .local v0, encodingType:I
    and-int/lit16 v2, p0, 0x80

    if-nez v2, :cond_2

    .line 2784
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2786
    :goto_0
    if-eqz v1, :cond_1

    .line 2787
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :goto_1
    return v0

    .line 2784
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2790
    :cond_1
    shr-int/lit8 v2, p0, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2792
    :pswitch_0
    const/16 v0, 0x9

    .line 2793
    goto :goto_1

    .line 2796
    :pswitch_1
    const/4 v0, 0x4

    .line 2797
    goto :goto_1

    .line 2801
    :pswitch_2
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    const/4 v0, 0x0

    goto :goto_1

    .line 2807
    :cond_2
    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_4

    .line 2808
    and-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_3

    .line 2810
    const/16 v0, 0x9

    goto :goto_1

    .line 2813
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2815
    :cond_4
    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_5

    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_5

    and-int/lit16 v2, p0, 0xf0

    if-ne v2, v4, :cond_8

    .line 2824
    :cond_5
    and-int/lit16 v2, p0, 0xf0

    if-ne v2, v4, :cond_6

    .line 2825
    const/4 v0, 0x4

    .line 2832
    :goto_2
    and-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_7

    .line 2833
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for Voicemail Message Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2827
    :cond_6
    const/16 v0, 0x9

    goto :goto_2

    .line 2837
    :cond_7
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for fax, email, or other "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2841
    :cond_8
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .parameter "languageValue"

    .prologue
    .line 407
    packed-switch p0, :pswitch_data_0

    .line 430
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 409
    :pswitch_0
    const-string v0, "en"

    goto :goto_0

    .line 412
    :pswitch_1
    const-string v0, "fr"

    goto :goto_0

    .line 415
    :pswitch_2
    const-string v0, "es"

    goto :goto_0

    .line 418
    :pswitch_3
    const-string v0, "ja"

    goto :goto_0

    .line 421
    :pswitch_4
    const-string v0, "ko"

    goto :goto_0

    .line 424
    :pswitch_5
    const-string v0, "zh"

    goto :goto_0

    .line 427
    :pswitch_6
    const-string v0, "he"

    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 1
    .parameter "category"

    .prologue
    .line 2648
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2916
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 2917
    .local v0, subparamLen:I
    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2918
    return-void
.end method

.method private static kddiDecodeShiftJis(Lcom/android/internal/telephony/cdma/sms/UserData;II)Ljava/lang/String;
    .locals 7
    .parameter "userData"
    .parameter "offset"
    .parameter "numFields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2885
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->KddiReplaceUserData(Lcom/android/internal/telephony/cdma/sms/UserData;II)[B

    move-result-object v1

    .line 2887
    .local v1, pureData:[B
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 2899
    :goto_0
    return-object v3

    .line 2892
    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiChangeCmailPictCharCode([BI)[B

    move-result-object v2

    .line 2895
    .local v2, replaceData:[B
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replaceData> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v2

    const-string v6, "kddi-emoji"

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2901
    :catch_0
    move-exception v0

    .line 2902
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SJIS decode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static kddiEncodeEmsUserDataGsmDcs(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 3
    .parameter "uData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2853
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2856
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 2857
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 2864
    :goto_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2865
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgEncoding 0x>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgType 0x>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :cond_0
    return-void

    .line 2858
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2859
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    goto :goto_0

    .line 2861
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported EMS user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static kddiJudgeCmail(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 7
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3216
    .local v0, data:[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3226
    :cond_0
    :goto_0
    return v2

    .line 3218
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 3219
    .local v1, typeId:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAIL?> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiSmsTypeCmail(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3222
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3223
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    move v2, v3

    .line 3224
    goto :goto_0
.end method

.method private static kddiJudgeOptionsServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 7
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2927
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2928
    .local v0, data:[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2937
    :cond_0
    :goto_0
    return v2

    .line 2929
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2930
    .local v1, typeId:I
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Optional services?> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2932
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2933
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2934
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    move v2, v3

    .line 2935
    goto :goto_0
.end method

.method private static kddiJudgeOtherServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 6
    .parameter "userData"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2947
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2948
    .local v0, data:[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2961
    :cond_0
    :goto_0
    return v2

    .line 2949
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 2952
    .local v1, typeId:I
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2953
    const-string v2, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other services> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 2955
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2956
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    move v2, v3

    .line 2958
    goto :goto_0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .parameter "serviceCategory"

    .prologue
    .line 2394
    packed-switch p0, :pswitch_data_0

    .line 2411
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2396
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2399
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2402
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2405
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2408
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2394
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static skipUnsupportedType(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 4
    .parameter "bData"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1459
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1460
    .local v0, paramBits:I
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1461
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported type len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const/4 v1, 0x1

    return v1
.end method

.method public static stringTo7BitAsciiPacked(Ljava/lang/String;IZ)[B
    .locals 12
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 764
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 765
    .local v2, dataLen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v8, p1

    .line 766
    .local v7, septetCount:I
    const/16 v8, 0xff

    if-le v7, v8, :cond_0

    .line 767
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    const-string v9, "Payload cannot exceed 255 septets"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 769
    :cond_0
    mul-int/lit8 v8, v7, 0x7

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v0, v8, 0x8

    .line 770
    .local v0, byteCount:I
    add-int/lit8 v8, v0, 0x1

    new-array v6, v8, [B

    .line 773
    .local v6, ret:[B
    :try_start_0
    new-instance v5, Lcom/android/internal/util/BitwiseOutputStream;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 774
    .local v5, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    mul-int/lit8 v8, p1, 0x7

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 775
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 776
    sget-object v8, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 777
    .local v1, charCode:I
    if-ne v1, v11, :cond_2

    .line 778
    if-nez p2, :cond_1

    .line 779
    const/4 v8, 0x7

    const/16 v9, 0x20

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 775
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 781
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot ASCII encode ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .end local v1           #charCode:I
    .end local v4           #i:I
    .end local v5           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v3

    .line 789
    .local v3, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7bit ASCII encode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 784
    .end local v3           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v1       #charCode:I
    .restart local v4       #i:I
    .restart local v5       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    :cond_2
    const/4 v8, 0x7

    :try_start_1
    invoke-virtual {v5, v8, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 787
    .end local v1           #charCode:I
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 792
    const/4 v8, 0x0

    int-to-byte v9, v7

    aput-byte v9, v6, v8

    .line 793
    return-object v6
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :cond_0
    const-string v1, "unset"

    goto/16 :goto_0

    .line 441
    :cond_1
    const-string v1, "unset"

    goto/16 :goto_1

    .line 442
    :cond_2
    const-string v1, "unset"

    goto/16 :goto_2

    .line 443
    :cond_3
    const-string v1, "unset"

    goto/16 :goto_3

    .line 444
    :cond_4
    const-string v1, "unset"

    goto/16 :goto_4

    .line 445
    :cond_5
    const-string v1, "unset"

    goto/16 :goto_5

    .line 446
    :cond_6
    const-string v1, "unset"

    goto/16 :goto_6

    .line 447
    :cond_7
    const-string v1, "unset"

    goto/16 :goto_7

    .line 449
    :cond_8
    const-string v1, "unset"

    goto/16 :goto_8

    .line 451
    :cond_9
    const-string v1, "unset"

    goto/16 :goto_9

    .line 453
    :cond_a
    const-string v1, "unset"

    goto/16 :goto_a

    .line 455
    :cond_b
    const-string v1, "unset"

    goto/16 :goto_b
.end method
