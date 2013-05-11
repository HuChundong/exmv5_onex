.class public Lcom/android/internal/telephony/sip/SipPhone;
.super Lcom/android/internal/telephony/sip/SipPhoneBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$1;,
        Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;,
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection;,
        Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"

.field private static final S_DEBUG:Z = false

.field private static final TIMEOUT_ANSWER_CALL:I = 0x8

.field private static final TIMEOUT_HOLD_CALL:I = 0xf

.field private static final TIMEOUT_MAKE_CALL:I = 0xf


# instance fields
.field private backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 2
    .parameter "context"
    .parameter "notifier"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 61
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    .locals 2
    .parameter "context"
    .parameter "notifier"
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 61
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 75
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    .line 76
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 186
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    .local v0, c:Lcom/android/internal/telephony/Connection;
    return-object v0

    .line 193
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Landroid/net/sip/SipException;
    const-string v2, "SipPhone"

    const-string v3, "dial()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 4
    .parameter "sipAudioCall"

    .prologue
    .line 892
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 904
    :goto_0
    return-object v1

    .line 893
    :cond_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 894
    .local v0, sessionState:I
    packed-switch v0, :pswitch_data_0

    .line 903
    :pswitch_0
    const-string v1, "SipPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 895
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 897
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 898
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 899
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 900
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 901
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, domain:Ljava/lang/String;
    const-string v1, ":5060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 364
    .end local v0           #domain:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 144
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    .line 147
    :cond_0
    const-string v0, "SipPhone"

    const-string v2, "acceptCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 152
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTake(Ljava/lang/Object;)Z
    .locals 10
    .parameter "incomingCall"

    .prologue
    const/4 v5, 0x0

    .line 106
    const-class v6, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v6

    .line 107
    :try_start_0
    instance-of v7, p1, Landroid/net/sip/SipAudioCall;

    if-nez v7, :cond_0

    monitor-exit v6

    .line 139
    :goto_0
    return v5

    .line 108
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v6

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 112
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Landroid/net/sip/SipAudioCall;

    move-object v4, v0

    .line 119
    .local v4, sipAudioCall:Landroid/net/sip/SipAudioCall;
    const-string v7, "SipPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+++ taking call from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, localUri:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v7}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 124
    .local v3, makeCallWait:Z
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7, v4, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Landroid/net/sip/SipAudioCall;Z)V

    .line 125
    invoke-virtual {v4}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 128
    const-string v7, "SipPhone"

    const-string v8, "    call cancelled !!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 131
    :cond_3
    const/4 v5, 0x1

    :try_start_3
    monitor-exit v6

    goto/16 :goto_0

    .line 133
    .end local v2           #localUri:Ljava/lang/String;
    .end local v3           #makeCallWait:Z
    .end local v4           #sipAudioCall:Landroid/net/sip/SipAudioCall;
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCBFacility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1047
    return-void
.end method

.method public bridge synthetic checkFDNCapability()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->checkFDNCapability()Z

    move-result v0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 2

    .prologue
    .line 243
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearVoiceMessageWaiting()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public conference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 213
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_1

    .line 216
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state to merge calls: fg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 220
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 221
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "that"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 225
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 226
    :try_start_0
    instance-of v0, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cannot merge with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    .end local p1
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 230
    .restart local p1
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 231
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    return-void
.end method

.method public confirmFirstDataRoaming()V
    .locals 0

    .prologue
    .line 1378
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 169
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialVT(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1007
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public enableMpdp(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1312
    return-void
.end method

.method public equals(Lcom/android/internal/telephony/sip/SipPhone;)Z
    .locals 2
    .parameter "phone"

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 87
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 90
    :goto_0
    return v1

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .line 90
    .local v0, that:Lcom/android/internal/telephony/sip/SipPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 240
    return-void
.end method

.method public getActivePDPList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 1033
    return-void
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallType()Lcom/android/internal/telephony/Phone$CallType;
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 298
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 1019
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getDetailIccStatus()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter "appType"

    .prologue
    .line 1371
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessageWaitingIndicatorEnhanced()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicatorEnhanced()I

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 284
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void
.end method

.method public getPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1102
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 0
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 1144
    return-void
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 0

    .prologue
    .line 1258
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .parameter "dis"

    .prologue
    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 0

    .prologue
    .line 1156
    return-void
.end method

.method public isConcurrentVoiceAndData()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1270
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1210
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1186
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1240
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1174
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1282
    return-void
.end method

.method public registerForNoDunDataPlan(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1348
    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1198
    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1222
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1336
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1324
    return-void
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 158
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "SipPhone"

    const-string v2, "rejectCall"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1234
    return-void
.end method

.method public requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "response"

    .prologue
    .line 1126
    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1168
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "gpsOneMode"
    .parameter "response"

    .prologue
    .line 1162
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1252
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :cond_2
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSetPushMailDormantTime(IILandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "time"
    .parameter "response"

    .prologue
    .line 1132
    return-void
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 278
    const-string v0, "SipPhone"

    const-string v1, "[SipPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 254
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 260
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 0
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 1072
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1
    .parameter "enable"
    .parameter "dialNumber"

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCBFacility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1040
    return-void
.end method

.method public bridge synthetic setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 302
    const-string v0, "SipPhone"

    const-string v1, "call waiting not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public setDataCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1027
    return-void
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1053
    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 312
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 314
    monitor-exit v1

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 318
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 291
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 0
    .parameter "power"

    .prologue
    .line 1366
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 1150
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 0
    .parameter "plmn"
    .parameter "ef_ad"

    .prologue
    .line 1078
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 265
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "SipPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "SipPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->backgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->foregroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 205
    :cond_1
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOnRadioDueToECC()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1276
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1216
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1192
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1246
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1180
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1288
    return-void
.end method

.method public unregisterForNoDunDataPlan(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1354
    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1204
    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1228
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1342
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1330
    return-void
.end method

.method public bridge synthetic updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateCurrentCarrierInProvider()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updatePhoneState()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updatePhoneState()V

    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method
