.class public Lcom/htc/telephony/HtcTelephonyManager;
.super Ljava/lang/Object;
.source "HtcTelephonyManager.java"


# static fields
.field public static final SECTOR_ID_NETWORK_EHRPD:I = 0x0

.field public static final SECTOR_ID_NETWORK_LTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyManager"

.field private static sInstance:Lcom/htc/telephony/HtcTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/telephony/HtcTelephonyManager;

    invoke-direct {v0}, Lcom/htc/telephony/HtcTelephonyManager;-><init>()V

    sput-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDefault()Lcom/htc/telephony/HtcTelephonyManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/telephony/HtcTelephonyManager;->sInstance:Lcom/htc/telephony/HtcTelephonyManager;

    return-object v0
.end method

.method private getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;
    .locals 1

    .prologue
    .line 48
    const-string v0, "htctelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IHtcTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSectorId(I)Ljava/lang/String;
    .locals 3
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->getSectorId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 231
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 230
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 231
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetDOMAIN()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 110
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetGID1()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 246
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPI()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 95
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMPU()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 125
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 155
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    const/4 v1, 0x0

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 171
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCF()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 139
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "ifc_name"

    .prologue
    const/4 v1, 0x0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 80
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 81
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 62
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestGetVolteSipRegFailure()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 65
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHtcTelephony;->requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 194
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    :try_start_0
    invoke-direct {p0}, Lcom/htc/telephony/HtcTelephonyManager;->getIHtcTelephony()Lcom/android/internal/telephony/IHtcTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IHtcTelephony;->requestLtePermanentlyDetached()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 264
    :goto_0
    return v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 263
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendMTRejectMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method
