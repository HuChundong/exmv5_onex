.class public Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;
.super Ljava/lang/Object;
.source "HtcPolicyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPolicyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneUtil"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPolicyUtils-PhoneUtil"


# instance fields
.field private mTelephonyService:Lcom/android/internal/telephony/ITelephony;

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcPolicyUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcPolicyUtils;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->this$0:Lcom/android/internal/policy/impl/HtcPolicyUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "HtcPolicyUtils-PhoneUtil"

    const-string v1, "Unable to find ITelephony interface."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->mTelephonyService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method


# virtual methods
.method public endCall()Z
    .locals 6

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, hungUp:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 109
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_0

    .line 110
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "couldn\'t get ITelephony reference"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 126
    .end local v1           #hungUp:Z
    .local v2, hungUp:I
    :goto_0
    return v2

    .line 114
    .end local v2           #hungUp:I
    .restart local v1       #hungUp:Z
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 115
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->htcCdmaEndCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPolicyUtils;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 124
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "[ATS][?com.android.internal.policy.impl?][end_call][successful]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    .line 126
    .restart local v2       #hungUp:I
    goto :goto_0

    .line 117
    .end local v2           #hungUp:I
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "HtcPolicyUtils-PhoneUtil"

    const-string v5, "telephonyService.silenceRinger:"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getPowerKeyFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 61
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 62
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return v2

    .line 66
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPowerKeyFlag()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.getPowerKeyFlag:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 33
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 34
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return v2

    .line 38
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.isOffhook:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 47
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 48
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "couldn\'t get ITelephony reference"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return v2

    .line 52
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HtcPolicyUtils-PhoneUtil"

    const-string v4, "telephonyService.isRinging:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPowerKeyFlag()V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 75
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 76
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "couldn\'t get ITelephony reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->setPowerKeyFlag()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "telephonyService.setPowerKeyFlag:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 88
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 89
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "couldn\'t get ITelephony reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HtcPolicyUtils-PhoneUtil"

    const-string v3, "telephonyService.silenceRinger:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
