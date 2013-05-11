.class public Lcom/htc/util/http/XMLRequest;
.super Ljava/lang/Object;
.source "XMLRequest.java"


# static fields
.field protected static ESCAPE_CHAR:B = 0x0t

.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field protected static final Hexhars:[B = null

.field public static final Host:Ljava/lang/String; = "andota.htcsense.com"

.field public static final HostTest:Ljava/lang/String; = "andota.htctouch.com"

#the value of this static final field might be set in the static constructor
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "XMLRequest"

.field private static final PREFIX:Ljava/lang/String; = "[XMLRequest] "

.field static final RADIX:I = 0x10

.field public static final SEPARATOR:Ljava/lang/String; = "#"

.field protected static final WWW_FORM_URL:Ljava/util/BitSet; = null

.field public static final apiLevelTag:Ljava/lang/String; = "al"

.field public static final appendLog:Ljava/lang/String; = "/common-log/rws/log/basic"

.field public static final assetIdTag:Ljava/lang/String; = "aId"

.field public static final certTag:Ljava/lang/String; = "ct"

.field public static final cidTag:Ljava/lang/String; = "ci"

.field public static final deviceTag:Ljava/lang/String; = "de"

.field public static final digestTag:Ljava/lang/String; = "digest"

.field public static final getAlarmList:Ljava/lang/String; = "/and-sound/rws/alarm/list"

.field public static final getAppsList:Ljava/lang/String; = "/and-apps/rws/app/list"

.field public static final getAssetScene:Ljava/lang/String; = "/and-scene/rws/asset/detail/"

.field public static final getCategoryApps:Ljava/lang/String; = "/common/rws/category/apps"

.field public static final getCategoryHTC:Ljava/lang/String; = "/common/rws/category/asset"

.field public static final getCategoryMarket:Ljava/lang/String; = "/common/rws/category/direct"

.field public static final getCategorySDM:Ljava/lang/String; = "/common/rws/category/"

.field public static final getCategoryScene:Ljava/lang/String; = "/common/rws/category/scene"

.field public static final getCategorySoundSet:Ljava/lang/String; = "/common/rws/category/sound"

.field public static final getChart:Ljava/lang/String; = "/common-stock/rws/history"

.field public static final getLogSetting:Ljava/lang/String; = "/common-log/rws/log/setting"

.field public static final getNotificationList:Ljava/lang/String; = "/and-sound/rws/notification/list"

.field public static final getPackageDetail:Ljava/lang/String; = "/and-apps/rws/package/detail/"

.field public static final getPackageDetail2:Ljava/lang/String; = "/and-apps/rws/package/detail2/"

.field public static final getPlugInList:Ljava/lang/String; = "/and-apps/rws/plug/list"

.field public static final getQuotes:Ljava/lang/String; = "/common-stock/rws/quote"

.field public static final getRateing:Ljava/lang/String; = "/and-apps/rws/rating"

.field public static final getRingtoneLsit:Ljava/lang/String; = "/and-sound/rws/ringtone/list"

.field public static final getSceneByCat:Ljava/lang/String; = "/and-scene/rws/scene/list-by-category/"

.field public static final getSceneCatList:Ljava/lang/String; = "/and-scene/rws/scene/listcategory"

.field public static final getSceneList:Ljava/lang/String; = "/and-scene/rws/scene/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getSkinByCat:Ljava/lang/String; = "/and-scene/rws/skin/list-by-category/"

.field public static final getSkinCatList:Ljava/lang/String; = "/and-scene/rws/skin/listcategory"

.field public static final getSkinList:Ljava/lang/String; = "/and-scene/rws/skin/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getSoundDetail:Ljava/lang/String; = "/and-sound/rws/asset/detail/"

.field public static final getSoundSetDetail:Ljava/lang/String; = "/and-sound/rws/soundset/detail/"

.field public static final getSoundSetList:Ljava/lang/String; = "/and-sound/rws/soundset/list"

.field public static final getSymbol:Ljava/lang/String; = "/common-stock/rws/symbol"

.field public static final getWallpapaerCatList:Ljava/lang/String; = "/and-scene/rws/wallpaper/listcategory"

.field public static final getWallpaperByCat:Ljava/lang/String; = "/and-scene/rws/wallpaper/list-by-category/"

.field public static final getWallpaperList:Ljava/lang/String; = "/and-scene/rws/wallpaper/list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final getWidgetList:Ljava/lang/String; = "/and-apps/rws/widget/list"

.field public static final handsetTime:Ljava/lang/String; = "ht"

.field public static final htcAccount:Ljava/lang/String; = "mya"

.field public static final htcSdkVer:Ljava/lang/String; = "uisdk"

.field public static final hwcidTag:Ljava/lang/String; = "hc"

.field public static final imeiTag:Ljava/lang/String; = "ii"

.field public static final localeTag:Ljava/lang/String; = "le"

.field public static final mccTag:Ljava/lang/String; = "mcc"

.field public static final mncTag:Ljava/lang/String; = "mnc"

.field public static final pagingCtrl:Ljava/lang/String; = "next"

.field public static final platformTag:Ljava/lang/String; = "pl"

.field public static final ratingScoreTag:Ljava/lang/String; = "score"

.field public static final relesaseKey:Ljava/lang/String; = "rk"

.field public static final romVersionTag:Ljava/lang/String; = "rv"

.field public static final searchCondition:Ljava/lang/String; = "filter"

.field public static final senseVer:Ljava/lang/String; = "sv"

.field public static final skinVer:Ljava/lang/String; = "skn"

.field public static final skuTag:Ljava/lang/String; = "sk"

.field public static final sortingTag:Ljava/lang/String; = "sort"

.field public static final targetVersionTag:Ljava/lang/String; = "tv"

.field public static final weatherCity:Ljava/lang/String; = "/common-weather/rws/city"

.field public static final weatherCityCode:Ljava/lang/String; = "/common-weather/rws/citycodes"

.field public static final weatherLatitude:Ljava/lang/String; = "/common-weather/rws/point"


# instance fields
.field private mApiLevel:Ljava/lang/String;

.field private mCert:Ljava/lang/String;

.field private mCid:Ljava/lang/String;

.field private mConnectTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mDeviceFlag:Ljava/lang/String;

.field private mHCid:Ljava/lang/String;

.field private mHtcAccoutn:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mKeyType:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mOWCert:Ljava/lang/String;

.field private mOWCid:Ljava/lang/String;

.field private mOWDeviceFlag:Ljava/lang/String;

.field private mOWHost:Ljava/lang/String;

.field private mOWKeyType:Ljava/lang/String;

.field private mOWSchema:Ljava/lang/String;

.field private mOWSku:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private mRomVersion:Ljava/lang/String;

.field private mSkinVer:Ljava/lang/String;

.field private mSku:Ljava/lang/String;

.field private mSocketTimeout:I

.field private mUiSdk:Ljava/lang/String;

.field private mXmlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    .line 1048
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    .line 1113
    const/16 v0, 0x25

    sput-byte v0, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    .line 1118
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    return-void

    .line 1048
    nop

    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "htcAccount"

    .prologue
    const/16 v7, 0x1f40

    const/16 v8, 0x28

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    .line 416
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 417
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    .line 418
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    .line 419
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    .line 420
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    .line 421
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 422
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    .line 423
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    .line 424
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    .line 425
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 426
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mPlatform:Ljava/lang/String;

    .line 427
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    .line 428
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    .line 429
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 430
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 433
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    .line 434
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    .line 435
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    .line 436
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    .line 437
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    .line 438
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    .line 439
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    .line 442
    iput v7, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    .line 443
    iput v7, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    .line 445
    iput-object v9, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 472
    iput-object p1, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    .line 474
    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 475
    .local v5, telMgr:Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_5

    .line 477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 478
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v7, "2.1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v8, :cond_6

    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v6, :cond_6

    .line 481
    const-string v6, "211"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 493
    :cond_0
    :goto_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v7, "3.5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 495
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_1

    .line 497
    const-string v6, "-42"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    .line 501
    :cond_1
    const-string v6, "ro.cid"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    .line 502
    const-string v6, "ro.build.version.incremental"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    .line 503
    const-string v6, "ro.build.version.sdk"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 504
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    .line 505
    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    .line 506
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    .line 507
    const-string v6, "ro.htc.common.version"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 508
    iget-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    .line 511
    invoke-static {p1}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    .line 514
    const-string v6, "ro.product.version"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, productVersion:Ljava/lang/String;
    const-string v6, "0"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    .line 518
    if-eqz v4, :cond_2

    .line 520
    :try_start_0
    const-string v6, "//."

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, networkOperator:Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_9

    .line 531
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 532
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    .line 541
    :goto_2
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/HTCWORACert"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, certFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 544
    const-string v6, "1"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    .line 546
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_3

    .line 548
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 550
    .local v1, configFile:Ljava/util/Properties;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/HTCWORACert"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 551
    const-string v6, "host"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    .line 552
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWHost="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v6, "schema"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    .line 554
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWSchema="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v6, "de"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    .line 556
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWDeviceFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v6, "sk"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    .line 558
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWSku="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v6, "ci"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    .line 560
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWCid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v6, "ct"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    .line 562
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWCert="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v6, "rk"

    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    .line 564
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] mOWKeyType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWKeyType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 580
    .end local v1           #configFile:Ljava/util/Properties;
    :cond_3
    :goto_3
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_b

    .line 581
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    .line 585
    :goto_4
    if-eqz p2, :cond_4

    .line 586
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 587
    :cond_4
    sget-boolean v6, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v6, :cond_5

    .line 589
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mDeviceFlag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mSku="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mCid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mRomVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mApiLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mLocale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mImei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mUiSdk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mMcc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mMnc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mCert="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mKeyType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mHtcAccoutn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v6, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[XMLRequest] default mSkinVer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .end local v0           #certFile:Ljava/io/File;
    .end local v3           #networkOperator:Ljava/lang/String;
    .end local v4           #productVersion:Ljava/lang/String;
    :cond_5
    return-void

    .line 482
    :cond_6
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v6, v8, :cond_7

    .line 484
    const-string v6, "210"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 485
    :cond_7
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x21

    if-ne v6, v7, :cond_8

    .line 487
    const-string v6, "213"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 488
    :cond_8
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v7, 0x22

    if-ne v6, v7, :cond_0

    .line 490
    const-string v6, "212"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    goto/16 :goto_0

    .line 523
    .restart local v4       #productVersion:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 525
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 536
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #networkOperator:Ljava/lang/String;
    :cond_9
    const-string v6, "000"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    .line 537
    const-string v6, "00"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    goto/16 :goto_2

    .line 565
    .restart local v0       #certFile:Ljava/io/File;
    .restart local v1       #configFile:Ljava/util/Properties;
    :catch_1
    move-exception v2

    .line 566
    .local v2, e:Ljava/io/FileNotFoundException;
    sget-boolean v6, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v6, :cond_3

    .line 567
    const-string v6, "XMLRequest"

    const-string v7, "[XMLRequest] FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 568
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 569
    .local v2, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v6, :cond_3

    .line 570
    const-string v6, "XMLRequest"

    const-string v7, "[XMLRequest] IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 576
    .end local v1           #configFile:Ljava/util/Properties;
    .end local v2           #e:Ljava/io/IOException;
    :cond_a
    const-string v6, "2"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    goto/16 :goto_3

    .line 583
    :cond_b
    const-string v6, "1"

    iput-object v6, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method public static IsNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 459
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 461
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 464
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 467
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V
    .locals 10
    .parameter "httpGet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, timestamp:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    .line 886
    .local v0, account:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz p2, :cond_0

    const-string v7, "de"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 887
    :cond_0
    const-string v7, "de"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_1
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    const-string v7, "sk"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 889
    :cond_2
    const-string v7, "sk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_3
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    if-eqz v7, :cond_5

    if-eqz p2, :cond_4

    const-string v7, "ci"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    .line 891
    :cond_4
    const-string v7, "ci"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_5
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    const-string v7, "hc"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    .line 893
    :cond_6
    const-string v7, "hc"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mHCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_7
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    if-eqz v7, :cond_9

    if-eqz p2, :cond_8

    const-string v7, "rv"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_9

    .line 895
    :cond_8
    const-string v7, "rv"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_9
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    if-eqz v7, :cond_b

    if-eqz p2, :cond_a

    const-string v7, "al"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_b

    .line 897
    :cond_a
    const-string v7, "al"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_b
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    if-eqz v7, :cond_d

    if-eqz p2, :cond_c

    const-string v7, "le"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    .line 899
    :cond_c
    const-string v7, "le"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_d
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v7, :cond_f

    if-eqz p2, :cond_e

    const-string v7, "ii"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    :cond_e
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_f

    .line 902
    const-string v7, "ii"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_f
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    if-eqz v7, :cond_11

    if-eqz p2, :cond_10

    const-string v7, "mnc"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_11

    .line 904
    :cond_10
    const-string v7, "mnc"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_11
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    if-eqz v7, :cond_13

    if-eqz p2, :cond_12

    const-string v7, "mcc"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_13

    .line 906
    :cond_12
    const-string v7, "mcc"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_13
    const-string v7, "2"

    if-eqz v7, :cond_15

    if-eqz p2, :cond_14

    const-string v7, "pl"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_15

    .line 908
    :cond_14
    const-string v7, "pl"

    const-string v8, "2"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_15
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    if-eqz v7, :cond_17

    if-eqz p2, :cond_16

    const-string v7, "ct"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_17

    .line 910
    :cond_16
    const-string v7, "ct"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_17
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    if-eqz v7, :cond_19

    if-eqz p2, :cond_18

    const-string v7, "rk"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_19

    .line 912
    :cond_18
    const-string v7, "rk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    :cond_19
    if-eqz p2, :cond_1a

    const-string v7, "tv"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1b

    .line 914
    :cond_1a
    const-string v7, "tv"

    const-string v8, "0"

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_1b
    if-eqz p2, :cond_1c

    const-string v7, "ht"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_25

    .line 916
    :cond_1c
    const-string v7, "ht"

    invoke-interface {p1, v7, v6}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :goto_0
    if-eqz p2, :cond_1d

    const-string v7, "mya"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 927
    const-string v7, "mya"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #account:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 934
    .restart local v0       #account:Ljava/lang/String;
    :cond_1d
    if-eqz v0, :cond_20

    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    if-eqz v7, :cond_20

    if-eqz p2, :cond_1e

    const-string v7, "digest"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_20

    .line 936
    :cond_1e
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v0}, Lcom/htc/util/http/XMLRequest;->getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, digest:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 939
    sget-boolean v7, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v7, :cond_1f

    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] digest="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_1f
    const-string v7, "digest"

    invoke-interface {p1, v7, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .end local v1           #digest:Ljava/lang/String;
    :cond_20
    :goto_1
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    if-eqz v7, :cond_22

    if-eqz p2, :cond_21

    const-string v7, "uisdk"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_22

    .line 950
    :cond_21
    const-string v7, "uisdk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_22
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    if-eqz v7, :cond_24

    if-eqz p2, :cond_23

    const-string v7, "skn"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_24

    .line 955
    :cond_23
    const-string v7, "skn"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_24
    sget-boolean v7, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v7, :cond_27

    .line 960
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 961
    .local v3, hdIterator:Lorg/apache/http/HeaderIterator;
    const/4 v2, 0x0

    .line 962
    .local v2, hd:Lorg/apache/http/Header;
    :goto_2
    if-eqz v3, :cond_27

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 964
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 965
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] before UserEdit Header "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 918
    .end local v2           #hd:Lorg/apache/http/Header;
    .end local v3           #hdIterator:Lorg/apache/http/HeaderIterator;
    :cond_25
    const-string v7, "ht"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #timestamp:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #timestamp:Ljava/lang/String;
    goto/16 :goto_0

    .line 944
    .restart local v1       #digest:Ljava/lang/String;
    :cond_26
    const-string v7, "digest"

    const-string v8, ""

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 969
    .end local v1           #digest:Ljava/lang/String;
    :cond_27
    if-eqz p2, :cond_29

    .line 971
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 972
    .local v5, keys:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v7, v5

    if-ge v4, v7, :cond_29

    .line 974
    sget-boolean v7, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v7, :cond_28

    const-string v8, "XMLRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] UserEdit addHeader "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v5, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v7, v5, v4

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_28
    aget-object v7, v5, v4

    check-cast v7, Ljava/lang/String;

    aget-object v8, v5, v4

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 978
    .end local v4           #i:I
    .end local v5           #keys:[Ljava/lang/Object;
    :cond_29
    sget-boolean v7, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v7, :cond_2a

    .line 980
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 981
    .restart local v3       #hdIterator:Lorg/apache/http/HeaderIterator;
    const/4 v2, 0x0

    .line 982
    .restart local v2       #hd:Lorg/apache/http/Header;
    :goto_4
    if-eqz v3, :cond_2a

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 984
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 985
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] after UserEdit Header "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 989
    .end local v2           #hd:Lorg/apache/http/Header;
    .end local v3           #hdIterator:Lorg/apache/http/HeaderIterator;
    :cond_2a
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v7, :cond_2c

    const-string v7, "ii"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 991
    sget-boolean v7, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v7, :cond_2b

    const-string v7, "XMLRequest"

    const-string v8, "[XMLRequest] remove imeiTag"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_2b
    const-string v7, "ii"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 994
    :cond_2c
    const-string v7, "mya"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 996
    sget-boolean v7, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v7, :cond_2d

    const-string v7, "XMLRequest"

    const-string v8, "[XMLRequest] remove htcAccount"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_2d
    const-string v7, "mya"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 1002
    :cond_2e
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_37

    .line 1004
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    if-eqz v7, :cond_2f

    .line 1006
    const-string v7, "de"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1007
    const-string v7, "de"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_2f
    :goto_5
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    if-eqz v7, :cond_30

    .line 1013
    const-string v7, "sk"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 1014
    const-string v7, "sk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_30
    :goto_6
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    if-eqz v7, :cond_31

    .line 1020
    const-string v7, "ci"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1021
    const-string v7, "ci"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_31
    :goto_7
    iget-object v7, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    if-eqz v7, :cond_32

    .line 1027
    const-string v7, "ct"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1028
    const-string v7, "ct"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_32
    :goto_8
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v3

    .line 1034
    .restart local v3       #hdIterator:Lorg/apache/http/HeaderIterator;
    const/4 v2, 0x0

    .line 1035
    .restart local v2       #hd:Lorg/apache/http/Header;
    :goto_9
    if-eqz v3, :cond_37

    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1037
    invoke-interface {v3}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v2

    .line 1038
    const-string v7, "XMLRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[XMLRequest] after TestOW Header "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1009
    .end local v2           #hd:Lorg/apache/http/Header;
    .end local v3           #hdIterator:Lorg/apache/http/HeaderIterator;
    :cond_33
    const-string v7, "de"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWDeviceFlag:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1016
    :cond_34
    const-string v7, "sk"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWSku:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1023
    :cond_35
    const-string v7, "ci"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCid:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1030
    :cond_36
    const-string v7, "ct"

    iget-object v8, p0, Lcom/htc/util/http/XMLRequest;->mOWCert:Ljava/lang/String;

    invoke-interface {p1, v7, v8}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1042
    :cond_37
    return-void
.end method

.method private static final encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0x10

    .line 1138
    :try_start_0
    invoke-static {p0}, Lcom/htc/util/http/XMLRequest;->newBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1142
    .local v2, bytes:[B
    if-nez v2, :cond_0

    .line 1143
    const/4 v7, 0x0

    .line 1173
    .end local v2           #bytes:[B
    :goto_0
    return-object v7

    .line 1139
    :catch_0
    move-exception v3

    .line 1140
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0

    .line 1145
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #bytes:[B
    :cond_0
    const/4 v9, 0x0

    aget-byte v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 1147
    sget-object v8, Lcom/htc/util/http/XMLRequest;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 1148
    .local v8, urlsafe:Ljava/util/BitSet;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1149
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v2

    if-ge v6, v9, :cond_4

    .line 1150
    aget-byte v0, v2, v6

    .line 1151
    .local v0, b:I
    if-gez v0, :cond_1

    .line 1152
    add-int/lit16 v0, v0, 0x100

    .line 1154
    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1155
    const/16 v9, 0x20

    if-ne v0, v9, :cond_2

    .line 1156
    const/16 v0, 0x2b

    .line 1158
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1149
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1160
    :cond_3
    sget-byte v9, Lcom/htc/util/http/XMLRequest;->ESCAPE_CHAR:B

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1161
    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 1162
    .local v4, hex1:C
    and-int/lit8 v9, v0, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1163
    .local v5, hex2:C
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1164
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 1169
    .end local v0           #b:I
    .end local v4           #hex1:C
    .end local v5           #hex2:C
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/util/http/XMLRequest;->newString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .local v7, result:Ljava/lang/String;
    goto :goto_0

    .line 1170
    .end local v7           #result:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1171
    .restart local v3       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0
.end method

.method public static getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "currentTimeStamp"
    .parameter "imei"
    .parameter "myhtcAccount"

    .prologue
    .line 1130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1131
    .local v0, conbine:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1132
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/http/XMLRequest;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDigest(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .parameter "myhtcAccount"
    .parameter "handsetTime"

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1069
    .local v1, digest:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1070
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1072
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1073
    .local v2, digestA:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ISO-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1074
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1076
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/htc/util/http/XMLRequest;->toHexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1083
    .end local v0           #bytes:[B
    .end local v2           #digestA:Ljava/security/MessageDigest;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    .line 1078
    :catch_0
    move-exception v3

    .line 1081
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static newBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1176
    if-nez p0, :cond_0

    .line 1177
    const/4 v0, 0x0

    .line 1179
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static newString([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1183
    if-nez p0, :cond_0

    .line 1184
    const/4 v0, 0x0

    .line 1186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static toHexStr([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1093
    .local v1, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 1095
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 1096
    .local v2, v:I
    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    shr-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1097
    sget-object v3, Lcom/htc/util/http/XMLRequest;->Hexhars:[B

    and-int/lit8 v4, v2, 0xf

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1099
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public PrintMember()V
    .locals 3

    .prologue
    .line 1196
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mDeviceFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mDeviceFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mSku="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mSku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mCid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mRomVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mRomVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mApiLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mApiLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mImei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mUiSdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mUiSdk:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mMcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mKeyType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mKeyType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mHtcAccoutn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mHtcAccoutn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string v0, "XMLRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[XMLRequest] default mSkinVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/http/XMLRequest;->mSkinVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method

.method public getXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)I
    .locals 20
    .parameter "schema"
    .parameter "host"
    .parameter "service"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 651
    .local p4, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, request:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 652
    :cond_0
    const/16 v15, 0x190

    .line 750
    :cond_1
    :goto_0
    return v15

    .line 654
    :cond_2
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 655
    .local v7, httpParameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 657
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 659
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    .line 660
    .local v16, uriBuilder:Ljava/lang/StringBuilder;
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_3

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] schema="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " host"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " service="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_3
    sget-boolean v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v17, :cond_8

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 667
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    :goto_1
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_4

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] uriBuilder="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_4
    if-eqz p5, :cond_a

    .line 682
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 683
    .local v9, keys:[Ljava/lang/Object;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 684
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 686
    if-nez v8, :cond_9

    .line 687
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 669
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 671
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 672
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 674
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 678
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 689
    .restart local v8       #i:I
    .restart local v9       #keys:[Ljava/lang/Object;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 693
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_a
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_b

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] getXMLTable URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_b
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 698
    .local v6, httpGet:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v6, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    .line 700
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 702
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 704
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_d

    .line 706
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 707
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_c

    .line 709
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 710
    .local v11, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 711
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 717
    .end local v11           #ostream:Ljava/io/ByteArrayOutputStream;
    :goto_4
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_1

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] HTTP CLIENT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 737
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v3

    .line 738
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 739
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 740
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 715
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_c
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 741
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v3

    .line 742
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 743
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 744
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 721
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_d
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 722
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 724
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 727
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 729
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 746
    .end local v2           #content:Ljava/io/InputStream;
    .end local v10           #line:Ljava/lang/String;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #status:I
    :catch_2
    move-exception v3

    .line 748
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 749
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 750
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 731
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #content:Ljava/io/InputStream;
    .restart local v10       #line:Ljava/lang/String;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    .restart local v15       #status:I
    :cond_e
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 732
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public getXmlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    return-object v0
.end method

.method public postXMLTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)I
    .locals 20
    .parameter "schema"
    .parameter "host"
    .parameter "service"
    .parameter
    .parameter
    .parameter "post"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 783
    .local p4, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, request:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p6, :cond_2

    .line 784
    :cond_0
    const/16 v15, 0x190

    .line 877
    :cond_1
    :goto_0
    return v15

    .line 786
    :cond_2
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 787
    .local v6, httpParameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 789
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 791
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v16, 0x0

    .line 792
    .local v16, uriBuilder:Ljava/lang/StringBuilder;
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_3

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] schema="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " host"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " service="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_3
    sget-boolean v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v17, :cond_8

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 799
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    :goto_1
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_4

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] uriBuilder="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_4
    if-eqz p5, :cond_a

    .line 816
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v9

    .line 817
    .local v9, keys:[Ljava/lang/Object;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 818
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 820
    if-nez v8, :cond_9

    .line 821
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 801
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWSchema:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 803
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 804
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mOWHost:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 806
    :cond_7
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 810
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #uriBuilder:Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v16       #uriBuilder:Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 823
    .restart local v8       #i:I
    .restart local v9       #keys:[Ljava/lang/Object;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v8

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v17, v9, v8

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 826
    .end local v8           #i:I
    .end local v9           #keys:[Ljava/lang/Object;
    :cond_a
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_b

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] postXMLTable URL:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_b
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 830
    .local v7, httpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v17, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 831
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/htc/util/http/XMLRequest;->addHeaders(Lorg/apache/http/HttpRequest;Ljava/util/Map;)V

    .line 833
    invoke-virtual {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 835
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 837
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_d

    .line 839
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 840
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_c

    .line 842
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 843
    .local v11, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 844
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 850
    .end local v11           #ostream:Ljava/io/ByteArrayOutputStream;
    :goto_4
    sget-boolean v17, Lcom/htc/util/http/XMLRequest;->LOG_FLAG:Z

    if-eqz v17, :cond_1

    const-string v17, "XMLRequest"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[XMLRequest] HTTP CLIENT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 870
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_0
    move-exception v3

    .line 871
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 872
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 873
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 848
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_c
    :try_start_1
    const-string v17, "Empty entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 874
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_1
    move-exception v3

    .line 875
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 876
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 877
    const/16 v15, 0x1a1

    goto/16 :goto_0

    .line 854
    .end local v3           #e:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_d
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 855
    .local v2, content:Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 857
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    .local v14, sb:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 860
    .local v12, reader:Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, line:Ljava/lang/String;
    if-eqz v10, :cond_e

    .line 862
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 864
    :cond_e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/util/http/XMLRequest;->mXmlString:Ljava/lang/String;

    .line 865
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 619
    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mConnectTimeout:I

    .line 620
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 633
    iput p1, p0, Lcom/htc/util/http/XMLRequest;->mSocketTimeout:I

    .line 634
    return-void
.end method
