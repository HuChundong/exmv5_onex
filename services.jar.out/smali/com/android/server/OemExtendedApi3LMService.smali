.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXTRA_POLICY_STATUS:Ljava/lang/String; = "com.htc.3lm.intent.extra.POLICY_STATUS"

.field private static final INTENT_EMERGENCY_LOCK_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.EMERGENCY_LOCK_POLICY_STATUS_CHANGE"

.field private static final INTENT_FELICA_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.FELICA_POLICY_STATUS_CHANGE"

.field private static final INTENT_INFRARED_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.INFRARED_POLICY_STATUS_CHANGE"

.field private static final INTENT_ONESEG_POLICY_STATUS_CHANGE:Ljava/lang/String; = "com.htc.3lm.intent.ONESEG_POLICY_STATUS_CHANGE"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final THREELM_FELICA_POLICY_SETTINGS:Ljava/lang/String; = "threelm_felica_policy"

.field private static final THREELM_INFRARED_POLICY_SETTINGS:Ljava/lang/String; = "threelm_infrared_policy"

.field private static final THREELM_ONESEG_POLICY_SETTINGS:Ljava/lang/String; = "threelm_oneseg_policy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 1
    .parameter "context"
    .parameter "oem"

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    .line 167
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 170
    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IDeviceManager3LM;

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    .line 172
    new-instance v0, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-direct {v0, p1}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    .line 173
    return-void
.end method

.method private broadcastIntent(Ljava/lang/String;I)V
    .locals 2
    .parameter "strIntent"
    .parameter "result"

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.3lm.intent.extra.POLICY_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method private isAccessPermitted()Z
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 178
    .local v2, callerUid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    if-ne v2, v13, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v12

    .line 183
    :cond_1
    :try_start_0
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, packages:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v10, v0, v5

    .line 187
    .local v10, pkg:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v14, 0x40

    invoke-virtual {v13, v10, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 191
    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, arr$:[Landroid/content/pm/Signature;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v11, v1, v4

    .line 192
    .local v11, pkgSignature:Landroid/content/pm/Signature;
    iget-object v13, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;->comparePublicKey([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_0

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 185
    .end local v11           #pkgSignature:Landroid/content/pm/Signature;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 200
    .end local v1           #arr$:[Landroid/content/pm/Signature;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #packages:[Ljava/lang/String;
    .end local v10           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 201
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "OemExtendedApi3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error trying to verify package public key against 3LM pub key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const-string v12, "OemExtendedApi3LM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Access denied to UID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v12, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/IDeviceManager3LM;->setWifiState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFelicaState()I
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "threelm_felica_policy"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, state:I
    return v0
.end method

.method public getInfraredState()I
    .locals 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "threelm_infrared_policy"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, state:I
    return v0
.end method

.method public getOneSegState()I
    .locals 4

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "threelm_oneseg_policy"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    .local v0, state:I
    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 8
    .parameter "enable"
    .parameter "text"
    .parameter "alarm"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    :goto_0
    return v3

    .line 353
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 356
    if-eqz p1, :cond_1

    .line 357
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_lock"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    :goto_1
    if-eqz p1, :cond_3

    move v1, v3

    .line 370
    .local v1, nLockStatus:I
    :goto_2
    const-string v5, "com.htc.3lm.intent.EMERGENCY_LOCK_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v5, v1}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    .line 374
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v4

    :goto_3
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    if-eqz p1, :cond_5

    move v2, v4

    .line 383
    .local v2, newState:I
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setFelicaState(I)V

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setOneSegState(I)V

    .line 385
    invoke-virtual {p0, v2}, Lcom/android/server/OemExtendedApi3LMService;->setInfraredState(I)V

    .line 387
    :try_start_0
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    invoke-interface {v5, v2}, Landroid/os/IDeviceManager3LM;->setNfcState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 391
    goto :goto_0

    .line 360
    .end local v1           #nLockStatus:I
    .end local v2           #newState:I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_lock"

    invoke-static {v5, v6, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 364
    :cond_2
    iget-object v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "emergency_lock"

    const-string v7, " "

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    move v1, v4

    .line 369
    goto :goto_2

    .restart local v1       #nLockStatus:I
    :cond_4
    move v5, v3

    .line 374
    goto :goto_3

    :cond_5
    move v2, v3

    .line 382
    goto :goto_4

    .line 388
    .restart local v2       #newState:I
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setFelicaState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    .line 258
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 259
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "threelm_felica_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    const-string v0, "com.htc.3lm.intent.FELICA_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setInfraredState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    .line 319
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 321
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "threelm_infrared_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    const-string v0, "com.htc.3lm.intent.INFRARED_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setOneSegState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    .line 288
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 290
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "threelm_oneseg_policy"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    const-string v0, "com.htc.3lm.intent.ONESEG_POLICY_STATUS_CHANGE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/OemExtendedApi3LMService;->broadcastIntent(Ljava/lang/String;I)V

    goto :goto_0
.end method
