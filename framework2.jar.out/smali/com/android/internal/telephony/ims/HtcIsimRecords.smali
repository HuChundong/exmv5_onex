.class public final Lcom/android/internal/telephony/ims/HtcIsimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcIsimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    }
.end annotation


# static fields
.field public static final ADDRESS_TYPE_FQDN_VALUE:I = 0x0

.field public static final ADDRESS_TYPE_IPV4_VALUE:I = 0x1

.field public static final ADDRESS_TYPE_IPV6_VALUE:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_APP_REFRESH:I = 0x14

.field private static final EVENT_CHANNEL_SELECTION_DONE:I = 0x15

.field private static final EVENT_GET_DOMAIN_DONE:I = 0x5

.field private static final EVENT_GET_GBABP_DONE:I = 0x8

.field private static final EVENT_GET_IMPI_DONE:I = 0x4

.field private static final EVENT_GET_IMPU_DONE:I = 0x6

.field private static final EVENT_GET_IST_DONE:I = 0x3

.field private static final EVENT_GET_P_CSCF_DONE:I = 0x7

.field private static final EVENT_ISIM_REFRESH:I = 0x9

.field private static final EVENT_MDMRST_SIM_HOT_SWAP_STATUS:I = 0xb

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SIM_HOT_SWAP_STATUS:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final HTC_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mBtid:Ljava/lang/String;

.field mDOMAIN:Ljava/lang/String;

.field mHasISIM:Z

.field mIMPI:Ljava/lang/String;

.field mIMPUList:[Ljava/lang/String;

.field mIsGbaSupported:Z

.field mIsimRecordsLoaded:Z

.field mKeyLifetime:Ljava/lang/String;

.field mPCSCFList:Landroid/os/Bundle;

.field mPCSCF_FQDN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPCSCF_IPV4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPCSCF_IPV6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRand:[B

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 60
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 63
    iput-boolean v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 64
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 65
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 68
    iput-boolean v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 5
    .parameter "p"
    .parameter "iccHandler"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccFileHandler;)V

    .line 60
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 61
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 63
    iput-boolean v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 64
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 65
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 68
    iput-boolean v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 114
    return-void
.end method

.method private ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsRecordsLoad:Z

    .line 134
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0
.end method

.method private handleFileUpdate(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 813
    packed-switch p1, :pswitch_data_0

    .line 830
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    .line 833
    :goto_0
    return-void

    .line 815
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f02

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 816
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    goto :goto_0

    .line 819
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f03

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 820
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    .line 822
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f04

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 823
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    goto :goto_0

    .line 826
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f07

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 827
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    goto :goto_0

    .line 813
    :pswitch_data_0
    .packed-switch 0x6f02
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleISimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 1
    .parameter "refreshResponse"

    .prologue
    .line 776
    if-nez p1, :cond_0

    .line 777
    const-string v0, "handleISimRefresh without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->log(Ljava/lang/String;)V

    .line 810
    :goto_0
    return-void

    .line 787
    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    sparse-switch v0, :sswitch_data_0

    .line 807
    const-string v0, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :sswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    goto :goto_0

    .line 792
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->efId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 799
    :sswitch_1
    const-string v0, "handleISimRefresh with REFRESH_RESULT_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->log(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    goto :goto_0

    .line 803
    :sswitch_2
    const-string v0, "handleISimRefresh with REFRESH_RESULT_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private parserTLVRecord([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 620
    const/4 v1, 0x0

    .line 622
    .local v1, tlvValue:Ljava/lang/String;
    if-eqz p1, :cond_2

    array-length v3, p1

    if-le v3, v5, :cond_2

    .line 623
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, -0x80

    if-ne v3, v4, :cond_1

    .line 624
    aget-byte v0, p1, v5

    .line 626
    .local v0, tlvLength:I
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-lt v3, v0, :cond_0

    .line 627
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "UTF-8"

    invoke-direct {v2, p1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #tlvValue:Ljava/lang/String;
    .local v2, tlvValue:Ljava/lang/String;
    move-object v1, v2

    .line 639
    .end local v0           #tlvLength:I
    .end local v2           #tlvValue:Ljava/lang/String;
    .restart local v1       #tlvValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 629
    .restart local v0       #tlvLength:I
    :cond_0
    const-string v3, "GSM"

    const-string v4, "Wrong length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v3

    goto :goto_0

    .line 634
    .end local v0           #tlvLength:I
    :cond_1
    const-string v3, "GSM"

    const-string v4, "unknown tag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_2
    const-string v3, "GSM"

    const-string v4, "Empty tlv value or wrong length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearISimRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 739
    const-string v0, "GSM"

    const-string v1, "clearing ISIM records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 741
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPI(Ljava/lang/String;)V

    .line 742
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 743
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 744
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 745
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetDOMAIN(Ljava/lang/String;)V

    .line 746
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 747
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 748
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 749
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetIsGBASupported(Z)V

    .line 750
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 751
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 752
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 753
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 754
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 755
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 756
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 757
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccAppRefresh(Landroid/os/Handler;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 148
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 152
    return-void

    .line 142
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0
.end method

.method public fetchISimRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsRecordsLoad:Z

    .line 703
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    if-nez v0, :cond_1

    .line 705
    const-string v0, "GSM"

    const-string v1, "Started loading ISIM records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->ensureISimSession(Landroid/os/Message;)V

    .line 710
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 712
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    invoke-static {v0}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 713
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHasISIM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    const-string v0, "GSM"

    const-string v1, "ISIM record loading already done, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISIMRecords:fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsRequested:Z

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f07

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 723
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f02

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 726
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f03

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 729
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f04

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 732
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "GSM"

    const-string v1, "ISIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 266
    const/4 v13, 0x0

    .line 268
    .local v13, isRecordLoadResponse:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDestroyed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 269
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received message "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " while being destroyed. Ignoring."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->loge(Ljava/lang/String;)V

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v21, :pswitch_data_0

    .line 611
    :cond_2
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v21

    if-eqz v21, :cond_0

    if-eqz v13, :cond_0

    .line 612
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 279
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 280
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v14, v0

    .line 281
    .local v14, isSIMRemoved:[I
    array-length v0, v14

    move/from16 v21, v0

    if-lez v21, :cond_2

    const/16 v21, 0x0

    aget v21, v14, v21

    if-nez v21, :cond_2

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 606
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v14           #isSIMRemoved:[I
    :catch_0
    move-exception v8

    .line 608
    .local v8, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v21, "GSM"

    const-string v22, "Exception parsing RUIM record"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v21

    if-eqz v21, :cond_0

    if-eqz v13, :cond_0

    goto :goto_2

    .line 286
    .end local v8           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 611
    :catchall_0
    move-exception v21

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_3

    if-eqz v13, :cond_3

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRecordLoaded()V

    .line 611
    :cond_3
    throw v21

    .line 290
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 291
    .restart local v4       #ar:Landroid/os/AsyncResult;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ISIM REFRESH with exception: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->log(Ljava/lang/String;)V

    .line 292
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 293
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/IccRefreshResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->handleISimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 298
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v21, "GSM"

    const-string v22, "EVENT_CHANNEL_SELECTION_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v13, 0x1

    .line 301
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 302
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 303
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ISIM problem: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 306
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 307
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.movial.gba_initialized"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 312
    .end local v12           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    check-cast v21, [I

    const/16 v22, 0x0

    aget v19, v21, v22

    .line 313
    .local v19, sid:I
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sessionId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/HtcIsimData;->SetSessionId(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 316
    .local v3, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 317
    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v21, v0

    sput-object v21, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f02

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f03

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f04

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f07

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 328
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f02

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f03

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f04

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6f07

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 343
    .end local v3           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v19           #sid:I
    :pswitch_5
    const-string v21, "GSM"

    const-string v22, "EVENT_GET_IST_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v13, 0x1

    .line 346
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 347
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 348
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception ISIM records (IST): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    :cond_6
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 353
    .local v5, data:[B
    if-eqz v5, :cond_e

    array-length v0, v5

    move/from16 v21, v0

    if-lez v21, :cond_e

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 357
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 358
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    check-cast v21, [B

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_7

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetIsGBASupported(Z)V

    .line 360
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "data[0]:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-byte v23, v5, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mIsGbaSupported:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 363
    .restart local v3       #app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v3, :cond_9

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 365
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6fd5

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 358
    .end local v3           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_7
    const/16 v21, 0x0

    goto :goto_3

    .line 370
    .restart local v3       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6fd5

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 375
    :cond_9
    const-string v21, "GSM"

    const-string v22, "ISIM Application null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 377
    .end local v3           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_a
    const/16 v21, 0x0

    aget-byte v21, v5, v21

    and-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x6f09

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 381
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 382
    const/16 v21, 0x0

    aget-byte v21, v5, v21

    and-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x6f09

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 385
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 387
    :cond_c
    const-string v21, "GSM"

    const-string v22, "P-CSCF address service is not available."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 391
    :cond_d
    const-string v21, "GSM"

    const-string v22, "IccFileHandler is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 394
    :cond_e
    const-string v21, "GSM"

    const-string v22, "Empty EF_IST"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 407
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    :pswitch_6
    const-string v21, "GSM"

    const-string v22, "EVENT_GET_IMPI_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v13, 0x1

    .line 409
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    check-cast v0, Landroid/os/AsyncResult;

    move-object v4, v0

    .line 411
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 412
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 413
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception ISIM records (IMPI): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 417
    :cond_f
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 418
    .restart local v5       #data:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 419
    sget-boolean v21, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    if-eqz v21, :cond_10

    .line 420
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mIMPI = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 429
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    :pswitch_7
    const-string v21, "GSM"

    const-string v22, "EVENT_GET_DOMAIN_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v13, 0x1

    .line 431
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    check-cast v0, Landroid/os/AsyncResult;

    move-object v4, v0

    .line 433
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    .line 434
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 435
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception ISIM records (DOMAIN): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 439
    :cond_11
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 440
    .restart local v5       #data:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 441
    sget-boolean v21, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    if-eqz v21, :cond_12

    .line 442
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mDOMAIN = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetDOMAIN(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 451
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    :pswitch_8
    const-string v21, "GSM"

    const-string v22, "EVENT_GET_IMPU_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v13, 0x1

    .line 453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    check-cast v0, Landroid/os/AsyncResult;

    move-object v4, v0

    .line 454
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    .line 455
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 456
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception ISIM records (IMPU): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 459
    :cond_13
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .line 461
    .local v6, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v11, impuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_15

    .line 463
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, s:I
    :goto_4
    move/from16 v0, v18

    if-ge v9, v0, :cond_15

    .line 464
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    .line 465
    .local v16, record:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v20

    .line 467
    .local v20, uriValue:Ljava/lang/String;
    if-eqz v20, :cond_14

    .line 468
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-boolean v21, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    if-eqz v21, :cond_14

    .line 470
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "impuList["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 475
    .end local v9           #i:I
    .end local v16           #record:[B
    .end local v18           #s:I
    .end local v20           #uriValue:Ljava/lang/String;
    :cond_15
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_16

    .line 476
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 481
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 482
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.movial.gba_initialized"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 490
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v11           #impuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #intent:Landroid/content/Intent;
    :pswitch_9
    const-string v21, "GSM"

    const-string v22, "EVENT_GET_GBABP_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 492
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    .line 493
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception ISIM records (GBABP): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 495
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 496
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 499
    :cond_17
    :try_start_5
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 500
    .restart local v5       #data:[B
    const/4 v9, 0x0

    .line 501
    .restart local v9       #i:I
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    aget-byte v15, v5, v9

    .line 503
    .local v15, len:I
    new-array v0, v15, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v5, v10, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 506
    sget-boolean v21, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    if-eqz v21, :cond_18

    .line 507
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mRand = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_18
    add-int/lit8 v9, v15, 0x1

    .line 510
    .end local v10           #i:I
    .restart local v9       #i:I
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .restart local v10       #i:I
    aget-byte v15, v5, v9

    .line 511
    new-instance v21, Ljava/lang/String;

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v10, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 513
    sget-boolean v21, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    if-eqz v21, :cond_19

    .line 514
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBtid = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_19
    add-int v9, v10, v15

    .line 517
    .end local v10           #i:I
    .restart local v9       #i:I
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .restart local v10       #i:I
    aget-byte v15, v5, v9

    .line 518
    new-instance v21, Ljava/lang/String;

    const-string v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v10, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 520
    sget-boolean v21, Lcom/android/internal/telephony/ims/HtcIsimRecords;->HTC_DEBUG:Z

    if-eqz v21, :cond_2

    .line 521
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mKeyLifetime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 522
    .end local v5           #data:[B
    .end local v10           #i:I
    .end local v15           #len:I
    :catch_1
    move-exception v7

    .line 523
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to parse GBABP contents: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 525
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 526
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    goto/16 :goto_1

    .line 533
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v7           #e:Ljava/lang/Exception;
    :pswitch_a
    const-string v21, "GSM"

    const-string v22, "EVENT_APP_REFRESH"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 536
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 537
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    move-object/from16 v0, v21

    check-cast v0, [I

    move-object/from16 v17, v0

    .line 538
    .local v17, result:[I
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EVENT_APP_REFRESH: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v21, 0x0

    aget v21, v17, v21

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 541
    const/16 v21, 0x1

    aget v21, v17, v21

    sparse-switch v21, :sswitch_data_0

    .line 549
    const-string v21, "GSM"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not prepared to handle "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 545
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    goto/16 :goto_1

    .line 552
    :cond_1a
    const-string v21, "GSM"

    const-string v22, "Unexpected: Some refresh for some other logical channel"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 559
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v17           #result:[I
    :pswitch_b
    const-string v21, "GSM"

    const-string v22, "EVENT_GET_P_CSCF_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v13, 0x1

    .line 562
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/AsyncResult;

    move-object/from16 v0, v21

    check-cast v0, Landroid/os/AsyncResult;

    move-object v4, v0

    .line 563
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 566
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .line 568
    .restart local v6       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .line 570
    .local v2, addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    const/4 v9, 0x0

    .restart local v9       #i:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    .restart local v18       #s:I
    :goto_5
    move/from16 v0, v18

    if-ge v9, v0, :cond_1e

    .line 571
    new-instance v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;

    .end local v2           #addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;-><init>(Lcom/android/internal/telephony/ims/HtcIsimRecords;[B)V

    .line 572
    .restart local v2       #addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    if-eqz v2, :cond_1b

    iget v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1b

    iget-object v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1b

    .line 575
    iget v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v21, v0

    if-nez v21, :cond_1c

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_1b
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 577
    :cond_1c
    iget v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 579
    :cond_1d
    iget v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v2, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 585
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1f

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "address_type_fqdn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 590
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_20

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "address_type_ipv4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 595
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_21

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "address_type_ipv6"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 600
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/Bundle;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_2

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/HtcIsimData;->SetPCSCF(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
    .end packed-switch

    .line 541
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 684
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 689
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 220
    const-string v4, "GSM"

    const-string v5, "ISIMRecords: record load complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getIccPhoneType()I

    move-result v2

    .line 227
    .local v2, phoneType:I
    if-ne v2, v6, :cond_3

    .line 228
    const-string v4, "gsm.icc.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .end local v2           #phoneType:I
    :cond_1
    :goto_0
    const-string v4, "READY"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 239
    const-string v4, "GSM"

    const-string v5, "ISIMRecords: record load complete, but SIM is not ready state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    :goto_1
    return-void

    .line 229
    .restart local v2       #phoneType:I
    :cond_3
    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 230
    const-string v4, "gsm.icc.sub.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 231
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 232
    const-string v4, "gsm.icc.uim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 235
    .end local v2           #phoneType:I
    :cond_5
    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 245
    :cond_6
    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsRecordsLoad:Z

    .line 248
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, appId:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .line 252
    .local v1, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_2

    .line 253
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": record load complete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setAllRecordsLoaded(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v0, "GSM"

    const-string v1, "ISIMRecords onRadioOffOrNotAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsRequested:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsRecordsLoad:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 185
    return-void
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 770
    const-string v0, "GSM"

    const-string v1, "onReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    .line 772
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    .line 208
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onAllRecordsLoaded()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 211
    const-string v0, "GSM"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 2
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 164
    const-string v0, "GSM"

    const-string v1, "ISIMRecords onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 172
    const-string v0, "GSM"

    const-string v1, "ISIMRecords setVoiceMailNumber()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 191
    const-string v0, "GSM"

    const-string v1, "ISIMRecords setVoiceMessageWaiting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method
