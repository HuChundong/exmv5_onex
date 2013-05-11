.class public Lcom/htc/net/wimax/HTCWimax4GManager;
.super Lcom/htc/net/wimax/Wimax4GManager;
.source "HTCWimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/wimax/HTCWimax4GManager$1;,
        Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;
    }
.end annotation


# static fields
.field public static final AKA_FAIL_ACCESS_DENIED:I = 0x402

.field public static final AKA_FAIL_AFTER_AUTHEN_NO_POPUP:I = 0xe49

.field public static final AKA_FAIL_BEFORE_AUTHEN_NO_POPUP:I = 0x4e49

.field public static final AKA_FAIL_GENERAL_AFTER_AUTHEN:I = 0x0

.field public static final AKA_FAIL_GENERAL_BEFORE_AUTHEN:I = 0x4000

.field public static final AKA_FAIL_INVALID_ATTRIBUTE_INCLUDED_AFTER_AUTHEN:I = 0x7dc

.field public static final AKA_FAIL_INVALID_ATTRIBUTE_INCLUDED_BEFORE_AUTHEN:I = 0x47dc

.field public static final AKA_FAIL_INVALID_AT_CHECKCODE:I = 0x7e7

.field public static final AKA_FAIL_INVALID_AT_MAC:I = 0x7e5

.field public static final AKA_FAIL_INVALID_AT_RES:I = 0x7e6

.field public static final AKA_FAIL_INVALID_AUTHTYPE:I = 0xe4a

.field public static final AKA_FAIL_INVALID_IDENTITY:I = 0x4e35

.field public static final AKA_FAIL_INVALID_SUBTYPE_AFTER_AUTHEN:I = 0x7d1

.field public static final AKA_FAIL_INVALID_SUBTYPE_BEFORE_AUTHEN:I = 0x47d1

.field public static final AKA_FAIL_INVALID_USER:I = 0x4e42

.field public static final AKA_FAIL_LOST_TERMINAL:I = 0x4e46

.field public static final AKA_FAIL_LOST_UICC:I = 0x4e45

.field public static final AKA_FAIL_MISSING_ATTRIBUTE_AFTER_AUTHEN:I = 0x7db

.field public static final AKA_FAIL_MISSING_ATTRIBUTE_BEFORE_AUTHEN:I = 0x47db

.field public static final AKA_FAIL_NOT_SUBSCRIBED_SERVICE:I = 0x407

.field public static final AKA_FAIL_PREPATMENT_OVER_RECHARGEABLE:I = 0xe40

.field public static final AKA_FAIL_PREPAYMENT_GENERAL_AFTER_AUTHEN:I = 0xe48

.field public static final AKA_FAIL_PREPAYMENT_GENERAL_BEFORE_AUTHEN:I = 0x4e48

.field public static final AKA_FAIL_PREPAYMENT_OVER:I = 0xe3f

.field public static final AKA_FAIL_PSSMAC_NOT_MATCH:I = 0x4e43

.field public static final AKA_FAIL_TOO_MANY_SQN_FAIL:I = 0x4e44

.field public static final AKA_FAIL_UNAVAILABLE_BS:I = 0x4e4b

.field public static final AKA_FAIL_UNKNOWN_BS:I = 0x4e4c

.field public static final AKA_FAIL_USAGELIMIT_EXHAUSTED:I = 0x4e47

.field public static final AKA_SUCCESS:I = 0x8000

.field public static final AKA_SUCCESS_NO_POPUP:I = 0x8001

.field public static final EXTRA_4G_AVAILABLE:Ljava/lang/String; = "wimax_4G_available"

.field public static final EXTRA_EAP_AKA_NOTIFICATION_CODE:Ljava/lang/String; = "eap_aka_notification_code"

.field public static final EXTRA_EAP_NOTIFICATION_MSG:Ljava/lang/String; = "eap_notification_msg"

.field public static final KT_WIBRO_LINK_STATE:Ljava/lang/String; = "kt_wibro_link_state"

.field public static final KT_WIBRO_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.net.wimax.KT_WIBRO_STATE_CHANGED"

.field public static final PROFILE_GM:I = 0x0

.field public static final PROFILE_GM_DAYPASS:I = 0x3

.field public static final PROFILE_NONE:I = -0x1

.field public static final PROFILE_VEE:I = 0x1

.field public static final PROFILE_VEE_K512:I = 0x2

.field public static final PROFILE_VEE_TATUNG:I = 0x4

.field public static final PROFILE_VEE_VMAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HTCWimax4GManager"

.field public static final WIMAX_4G_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

.field public static final WIMAX_4G_NOT_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_4G_NOT_AVAILABLE"

.field public static final WIMAX_EAP_AKA_NOTIFICATION_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

.field public static final WIMAX_EAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.htc.net.wimax.WIMAX_EAP_NOTIFICATION"


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GManager;-><init>(Lcom/htc/net/wimax/IWimaxController;Landroid/os/Handler;)V

    .line 199
    sput-object p1, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;->mService:Lcom/htc/net/wimax/IWimaxController;

    .line 200
    return-void
.end method


# virtual methods
.method public addFrequency(III)Z
    .locals 2
    .parameter "frequencyHz"
    .parameter "bandWidth"
    .parameter "duration"

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/net/wimax/IWimaxController;->addFrequency(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeToCorpNapid(I)Z
    .locals 2
    .parameter "napid"

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->changeToCorpNapid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :goto_0
    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearChannelList()Z
    .locals 2

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->clearChannelList()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cli(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->cli(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createConnectionStatistics()Lcom/htc/net/FourG/FourGManager$ConnectionStatistics;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GManager$HTCWimaxConnectionStatistics;-><init>()V

    return-object v0
.end method

.method public getDecoration(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getDecoration(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInnerIdentity(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getInnerIdentity(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInnerMethodType(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getInnerMethodType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastAkaNotificationCode()I
    .locals 2

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getLastAkaNotificationCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLastEapNotificationMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getLastEapNotificationMsg()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 354
    :goto_0
    return-object v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, ""

    goto :goto_0
.end method

.method public getMethodType(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getMethodType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 473
    :goto_0
    return-object v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 572
    :goto_0
    return-object v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOuterIdentity(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getOuterIdentity(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPassword(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getPassword(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 455
    :goto_0
    return-object v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile()I
    .locals 2

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getProfile()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 535
    :goto_0
    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRealm(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getRealm(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 419
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettingAuthMode()I
    .locals 2

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingAuthMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSettingChannelList()[I
    .locals 2

    .prologue
    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingChannelList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 245
    :goto_0
    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSettingIdleModeTimer()I
    .locals 2

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingIdleModeTimer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSettingTxPower()F
    .locals 2

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->getSettingTxPower()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method public getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "propId"

    .prologue
    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 591
    :goto_0
    return-object v1

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 214
    :goto_0
    return v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrivateNetwork()Z
    .locals 2

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->isPrivateNetwork()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 383
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetAuthConfig()V
    .locals 1

    .prologue
    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->resetAuthConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetPacketErrorRate()Z
    .locals 2

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->resetPacketErrorRate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :goto_0
    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public revertToSprintNapid()Z
    .locals 2

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->revertToSprintNapid()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 374
    :goto_0
    return v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public set4GEnabled(ZZ)Z
    .locals 2
    .parameter "enabled"
    .parameter "persist"

    .prologue
    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxEnabledPersist(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    :goto_0
    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAuthMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setAuthMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDecoration(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "decoration"

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setDecoration(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 554
    :goto_0
    return v1

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIdleModeTimer(I)Z
    .locals 2
    .parameter "idleTimeoutMs"

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setIdleModeTimer(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 303
    :goto_0
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInnerIdentity(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "innerId"

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setInnerIdentity(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInnerMethodType(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "innerMethod"

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setInnerMethodType(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 518
    :goto_0
    return v1

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMethodType(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "methodType"

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setMethodType(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 482
    :goto_0
    return v1

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOuterIdentity(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "outerId"

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setOuterIdentity(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPassword(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "passwd"

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setPassword(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 464
    :goto_0
    return v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfile(I)Z
    .locals 2
    .parameter "profile"

    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 527
    :goto_0
    return v1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRealm(ILjava/lang/String;)Z
    .locals 2
    .parameter "index"
    .parameter "realm"

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setRealm(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 428
    :goto_0
    return v1

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setToggling(Z)Z
    .locals 2
    .parameter "isToogling"

    .prologue
    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setToggling(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 392
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTxPower(F)Z
    .locals 2
    .parameter "txPower"

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1}, Lcom/htc/net/wimax/IWimaxController;->setTxPower(F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "propId"
    .parameter "value"

    .prologue
    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1, p1, p2}, Lcom/htc/net/wimax/IWimaxController;->setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startAccessOmaDmConfig()V
    .locals 1

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->startAccessOmaDmConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAccessOmaDmConfig()V
    .locals 1

    .prologue
    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v0}, Lcom/htc/net/wimax/IWimaxController;->stopAccessOmaDmConfig()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wimaxRescan()I
    .locals 2

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/htc/net/wimax/Wimax4GManager;->mService:Lcom/htc/net/wimax/IWimaxController;

    invoke-interface {v1}, Lcom/htc/net/wimax/IWimaxController;->wimaxRescan()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method
