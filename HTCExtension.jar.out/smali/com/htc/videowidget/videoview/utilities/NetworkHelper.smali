.class public Lcom/htc/videowidget/videoview/utilities/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;,
        Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;
    }
.end annotation


# static fields
.field private static final APN_APN:Ljava/lang/String; = "APN"

.field private static final APN_CURRENT:Ljava/lang/String; = "CURRENT"

.field private static final APN_NAME:Ljava/lang/String; = "NAME"

.field private static final APN_PORT:Ljava/lang/String; = "PORT"

.field private static final APN_PROXY:Ljava/lang/String; = "PROXY"

.field private static final APN_TYPE:Ljava/lang/String; = "TYPE"

.field private static final TAG:Ljava/lang/String; = "NetworkHelper"

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_ADMIN:I = 0x10

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_HTTPPROXY:I = 0xf

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_WAPGATEWAY:I = 0xe

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_USBNET:I = 0x12

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_HOTSPOT:I = 0x11

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

.field private mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    .line 52
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;)Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->showNetworkInfo(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public static getAPNProxyFromAPN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "APN"

    .prologue
    .line 342
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAPNProxyPortFromAPN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "APN"

    .prologue
    .line 353
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    .line 354
    .local v0, port:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAPNTypeFromAPN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "APN"

    .prologue
    .line 304
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "APN"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "PROXY"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "PORT"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "CURRENT"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "TYPE"

    aput-object v4, v2, v0

    .line 306
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, cr:Landroid/database/Cursor;
    const-string v7, ""

    .line 310
    .local v7, result:Ljava/lang/String;
    :try_start_0
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, APN_URI:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(current =1) AND (type like \'%internet%\' OR type like \'%httpproxy%\' OR type like \'%hipri%\' ) AND ( type like \'%default%\') AND (APN = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 323
    .end local v1           #APN_URI:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 324
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    const/4 v6, 0x0

    .line 331
    :cond_1
    :goto_1
    return-object v7

    .line 327
    :catch_0
    move-exception v0

    goto :goto_1

    .line 318
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getActiveAPN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 286
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 287
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 289
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 293
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 290
    :catch_0
    move-exception v2

    .line 293
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 268
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 271
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 273
    :catch_0
    move-exception v2

    .line 276
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getActiveNetworkTypeConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 247
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 248
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 250
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    .line 251
    const/4 v2, 0x1

    .line 257
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 254
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getMCC(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 364
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 365
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v1

    .line 370
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getMNC(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 381
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v0           #newConfig:Landroid/content/res/Configuration;
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v1

    .line 386
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getNetworkTypeString(I)Ljava/lang/String;
    .locals 2
    .parameter "networktype"

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_0

    .line 197
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TYPE_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 171
    :pswitch_1
    const-string v0, "TYPE_MOBILE"

    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "TYPE_WIFI"

    goto :goto_0

    .line 175
    :pswitch_3
    const-string v0, "TYPE_MOBILE_MMS"

    goto :goto_0

    .line 177
    :pswitch_4
    const-string v0, "TYPE_MOBILE_SUPL"

    goto :goto_0

    .line 179
    :pswitch_5
    const-string v0, "TYPE_MOBILE_DUN"

    goto :goto_0

    .line 181
    :pswitch_6
    const-string v0, "TYPE_MOBILE_HIPRI"

    goto :goto_0

    .line 183
    :pswitch_7
    const-string v0, "TYPE_WIMAX"

    goto :goto_0

    .line 185
    :pswitch_8
    const-string v0, "TYPE_MOBILE_WAPGATEWAY"

    goto :goto_0

    .line 187
    :pswitch_9
    const-string v0, "TYPE_MOBILE_HTTPPROXY"

    goto :goto_0

    .line 189
    :pswitch_a
    const-string v0, "TYPE_MOBILE_FOTA"

    goto :goto_0

    .line 191
    :pswitch_b
    const-string v0, "TYPE_MOBILE_ADMIN"

    goto :goto_0

    .line 193
    :pswitch_c
    const-string v0, "TYPE_WIFI_HOTSPOT"

    goto :goto_0

    .line 195
    :pswitch_d
    const-string v0, "TYPE_USBNET"

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getPhoneNetworkType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 560
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 562
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 566
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    .line 563
    :catch_0
    move-exception v1

    .line 566
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPhoneNetworkTypeString(I)Ljava/lang/String;
    .locals 2
    .parameter "networktype"

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHONE_NETWORK_TYPE_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    .line 589
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 590
    const-string v0, "PHONE_NETWORK_TYPE_GPRS"

    goto :goto_0

    .line 591
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 592
    const-string v0, "PHONE_NETWORK_TYPE_EDGE"

    goto :goto_0

    .line 593
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 594
    const-string v0, "PHONE_NETWORK_TYPE_UMTS"

    goto :goto_0

    .line 595
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 596
    const-string v0, "PHONE_NETWORK_TYPE_HSDPA"

    goto :goto_0

    .line 597
    :cond_4
    const/16 v0, 0x9

    if-ne p0, v0, :cond_5

    .line 598
    const-string v0, "PHONE_NETWORK_TYPE_HSUPA"

    goto :goto_0

    .line 599
    :cond_5
    const/16 v0, 0xa

    if-ne p0, v0, :cond_6

    .line 600
    const-string v0, "PHONE_NETWORK_TYPE_HSPA"

    goto :goto_0

    .line 601
    :cond_6
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    .line 602
    const-string v0, "PHONE_NETWORK_TYPE_CDMA"

    goto :goto_0

    .line 603
    :cond_7
    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    .line 604
    const-string v0, "PHONE_NETWORK_TYPE_EVDO_0"

    goto :goto_0

    .line 605
    :cond_8
    const/4 v0, 0x6

    if-ne p0, v0, :cond_9

    .line 606
    const-string v0, "PHONE_NETWORK_TYPE_EVDO_A"

    goto :goto_0

    .line 607
    :cond_9
    const/16 v0, 0xc

    if-ne p0, v0, :cond_a

    .line 608
    const-string v0, "PHONE_NETWORK_TYPE_EVDO_B"

    goto :goto_0

    .line 609
    :cond_a
    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    .line 610
    const-string v0, "PHONE_NETWORK_TYPE_1xRTT"

    goto :goto_0

    .line 611
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 612
    const-string v0, "PHONE_NETWORK_TYPE_LTE"

    goto :goto_0

    .line 613
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 614
    const-string v0, "PHONE_NETWORK_TYPE_EHRPD"

    goto :goto_0

    .line 615
    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    .line 616
    const-string v0, "PHONE_NETWORK_TYPE_HSPAP"

    goto :goto_0

    .line 618
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHONE_NETWORK_TYPE_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 623
    invoke-static {p2, p3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPreferAPN(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 428
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 429
    .local v1, PREFERRED_APN_URI:Landroid/net/Uri;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "NAME"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "APN"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "PROXY"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "PORT"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "CURRENT"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "TYPE"

    aput-object v3, v2, v0

    .line 430
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 431
    .local v6, cr:Landroid/database/Cursor;
    const-string v7, ""

    .line 433
    .local v7, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 435
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    const-string v0, "APN"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 444
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 445
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    const/4 v6, 0x0

    .line 452
    :cond_1
    :goto_1
    return-object v7

    .line 448
    :catch_0
    move-exception v0

    goto :goto_1

    .line 439
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getSystemPreferAPNType(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 461
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 462
    .local v1, PREFERRED_APN_URI:Landroid/net/Uri;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "NAME"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "APN"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "PROXY"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "PORT"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "CURRENT"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "TYPE"

    aput-object v3, v2, v0

    .line 463
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 464
    .local v6, cr:Landroid/database/Cursor;
    const-string v7, ""

    .line 466
    .local v7, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 468
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 469
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const-string v0, "TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 477
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 478
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    const/4 v6, 0x0

    .line 485
    :cond_1
    :goto_1
    return-object v7

    .line 481
    :catch_0
    move-exception v0

    goto :goto_1

    .line 472
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static isAPNValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "APNAPN"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 395
    const/4 v6, 0x0

    .line 396
    .local v6, cr:Landroid/database/Cursor;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "NAME"

    aput-object v0, v2, v8

    const-string v0, "APN"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v4, "PROXY"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "PORT"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "CURRENT"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "TYPE"

    aput-object v4, v2, v0

    .line 397
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 399
    .local v1, APN_URI:Landroid/net/Uri;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current = 1 AND (type like \'%internet%\' OR type like \'%httpproxy%\' OR type like \'%hipri%\' ) AND ( type like \'%default%\') AND APN = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    const/4 v6, 0x0

    move v0, v7

    .line 419
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    return v0

    .line 406
    :catch_0
    move-exception v0

    .line 411
    :cond_0
    if-eqz v6, :cond_1

    .line 412
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    const/4 v6, 0x0

    :cond_1
    :goto_1
    move v0, v8

    .line 419
    goto :goto_0

    .line 415
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 575
    if-nez p0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDataRoaming(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 543
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 545
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 549
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v1

    .line 546
    :catch_0
    move-exception v1

    .line 549
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkOK(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 516
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 517
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 518
    .local v1, mobile:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 524
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #mobile:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 520
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #mobile:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 521
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #mobile:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isNetworkOK(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 533
    invoke-static {p0}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->isMobileNetworkOK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->isWimaxOK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->isUSBNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUSBNetwork(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 228
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 229
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 230
    .local v1, wifi:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 236
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #wifi:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 232
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #wifi:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 233
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #wifi:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 209
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 210
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 211
    .local v1, wifi:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 217
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #wifi:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 213
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #wifi:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 214
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #wifi:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isWimaxOK(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, wimax:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 497
    .local v0, cm:Landroid/net/ConnectivityManager;
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIMAX_flag:Z

    if-ne v4, v2, :cond_0

    .line 498
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 500
    :cond_0
    if-nez v1, :cond_1

    .line 506
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 502
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 503
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showNetworkInfo(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .locals 8
    .parameter "context"
    .parameter "info"

    .prologue
    .line 124
    if-eqz p2, :cond_2

    .line 125
    const-string v5, "NetworkHelper"

    const-string v6, "                   [Active Network update]"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 128
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [Info: APN]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [Current: APN]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getActiveAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getSystemPreferAPN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, PreferAPN:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getSystemPreferAPNType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, PreferAPNType:Ljava/lang/String;
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [Preference: APN]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",Type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0           #PreferAPN:Ljava/lang/String;
    .end local v1           #PreferAPNType:Ljava/lang/String;
    :cond_0
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [info.getType()]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [info.getDetailedState]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [PhoneNetworkType]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getPhoneNetworkType(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getPhoneNetworkTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v5, "ro.ril.set.mtusize"

    const-string v6, "1500"

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, mtu:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 146
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [MTU]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    const-string v5, "net.dns1"

    const-string v6, "n/a"

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, dns1:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 154
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [net.dns1]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    const-string v5, "net.dns2"

    const-string v6, "n/a"

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, dns2:Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 161
    const-string v5, "NetworkHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "                   [net.dns2]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v2           #dns1:Ljava/lang/String;
    .end local v3           #dns2:Ljava/lang/String;
    .end local v4           #mtu:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 156
    .restart local v2       #dns1:Ljava/lang/String;
    .restart local v4       #mtu:Ljava/lang/String;
    :cond_3
    const-string v5, "NetworkHelper"

    const-string v6, "                   [net.dns1]=null"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .restart local v3       #dns2:Ljava/lang/String;
    :cond_4
    const-string v5, "NetworkHelper"

    const-string v6, "                   [net.dns2]=null"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public startMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 62
    const-string v1, "NetworkHelper"

    const-string v2, "[startMonitor]"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mListener:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$INetworkReceiver;

    .line 65
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;-><init>(Lcom/htc/videowidget/videoview/utilities/NetworkHelper;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    .line 73
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    .end local v0           #commandFilter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v1, "NetworkHelper"

    const-string v2, "[startMonitor]someone called this twice?"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopMonitor(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    const-string v0, "NetworkHelper"

    const-string v1, "[stopMonitor]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/NetworkHelper;->mIntentReceiver:Lcom/htc/videowidget/videoview/utilities/NetworkHelper$NetworkReceiver;

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method
