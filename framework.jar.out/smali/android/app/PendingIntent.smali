.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static final CS_KEEPALIVE_PROPERTY:Ljava/lang/String; = "missedKeepalive"

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000

.field private static final TAG:Ljava/lang/String; = "PendingIntent"


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 789
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 830
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 832
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 834
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 835
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 836
    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 12
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, packageName:Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 340
    .local v7, resolvedTypes:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, p2

    if-ge v10, v0, :cond_0

    .line 341
    aget-object v0, p2, v10

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 342
    aget-object v0, p2, v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    .line 340
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 345
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    move v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v11

    .line 349
    .local v11, target:Landroid/content/IIntentSender;
    if-eqz v11, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v11           #target:Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 349
    .restart local v11       #target:Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 350
    .end local v11           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 352
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 12
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 237
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v10, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v7, v5

    :goto_1
    move v5, p1

    move v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v11

    .line 243
    .local v11, target:Landroid/content/IIntentSender;
    if-eqz v11, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v11}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v11           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 233
    .end local v10           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 237
    .restart local v10       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 243
    .restart local v11       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 244
    .end local v11           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 246
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 16
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, packageName:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 397
    .local v11, OriCheckAlarmString:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    .line 400
    .local v13, resolvedType:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 401
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object p2, v7, v6

    if-eqz v13, :cond_3

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v8, v6

    :goto_2
    const/4 v10, 0x0

    move/from16 v6, p1

    move/from16 v9, p3

    invoke-interface/range {v1 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v15

    .line 410
    .local v15, target:Landroid/content/IIntentSender;
    if-eqz v15, :cond_4

    .line 411
    new-instance v14, Landroid/app/PendingIntent;

    invoke-direct {v14, v15}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 415
    .local v14, returnPendingIntent:Landroid/app/PendingIntent;
    :goto_3
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 432
    .end local v14           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v15           #target:Landroid/content/IIntentSender;
    :goto_4
    return-object v14

    .line 391
    .end local v11           #OriCheckAlarmString:Ljava/lang/String;
    .end local v13           #resolvedType:Ljava/lang/String;
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .restart local v11       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_0

    .line 394
    .end local v11           #OriCheckAlarmString:Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .restart local v11       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_0

    .line 397
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 401
    .restart local v13       #resolvedType:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 413
    .restart local v15       #target:Landroid/content/IIntentSender;
    :cond_4
    const/4 v14, 0x0

    .restart local v14       #returnPendingIntent:Landroid/app/PendingIntent;
    goto :goto_3

    .line 430
    .end local v14           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v15           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v1

    .line 432
    const/4 v14, 0x0

    goto :goto_4
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 17
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, packageName:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 469
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 479
    .local v11, OriCheckAlarmString:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 482
    .local v14, resolvedType:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 483
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object p2, v7, v6

    if-eqz v14, :cond_4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v8, v6

    :goto_2
    const/4 v10, 0x0

    move/from16 v6, p1

    move/from16 v9, p3

    invoke-interface/range {v1 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v16

    .line 493
    .local v16, target:Landroid/content/IIntentSender;
    if-eqz v16, :cond_5

    .line 494
    new-instance v15, Landroid/app/PendingIntent;

    invoke-direct/range {v15 .. v16}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 498
    .local v15, returnPendingIntent:Landroid/app/PendingIntent;
    :goto_3
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v12

    .line 503
    .local v12, alarmInterface:Landroid/app/IAlarmManager;
    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "missedKeepalive"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const-string v1, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    .line 508
    .local v13, mAlarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v13, v15}, Landroid/app/AlarmManager;->setAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v12           #alarmInterface:Landroid/app/IAlarmManager;
    .end local v13           #mAlarmManager:Landroid/app/AlarmManager;
    .end local v15           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v16           #target:Landroid/content/IIntentSender;
    :cond_0
    :goto_4
    return-object v15

    .line 472
    .end local v11           #OriCheckAlarmString:Ljava/lang/String;
    .end local v14           #resolvedType:Ljava/lang/String;
    :cond_1
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .restart local v11       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_0

    .line 475
    .end local v11           #OriCheckAlarmString:Ljava/lang/String;
    :cond_2
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .restart local v11       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_0

    .line 479
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 483
    .restart local v14       #resolvedType:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 496
    .restart local v16       #target:Landroid/content/IIntentSender;
    :cond_5
    const/4 v15, 0x0

    .restart local v15       #returnPendingIntent:Landroid/app/PendingIntent;
    goto :goto_3

    .line 515
    .end local v15           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v16           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v1

    .line 517
    const/4 v15, 0x0

    goto :goto_4
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "in"

    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 827
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 1
    .parameter "sender"
    .parameter "out"

    .prologue
    .line 811
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 813
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIntentHtcFlag(I)V
    .locals 3
    .parameter "iHtcFlag"

    .prologue
    .line 877
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->addIntentHtcFlag(Landroid/content/IIntentSender;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PendingIntent"

    const-string v2, "[GhostScreen] Append intent htc flag fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 536
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "otherObj"

    .prologue
    .line 758
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1
    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 762
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 845
    :try_start_0
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 847
    :goto_0
    return-object v1

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .prologue
    .line 527
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getIntentSenderPerformType()I
    .locals 3

    .prologue
    .line 856
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getIntentSenderPerformType(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 858
    :goto_0
    return v1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 711
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 715
    :goto_0
    return-object v1

    .line 713
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActivity()Z
    .locals 3

    .prologue
    .line 739
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 743
    :goto_0
    return v1

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTargetedToPackage()Z
    .locals 3

    .prologue
    .line 725
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 729
    :goto_0
    return v1

    .line 727
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public send()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 550
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public send(I)V
    .locals 7
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 564
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .parameter "code"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 605
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 584
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 641
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .parameter "requiredPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 684
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, resolvedType:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz p4, :cond_0

    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;

    invoke-direct {v4, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    :cond_0
    move v1, p2

    move-object v2, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I

    move-result v7

    .line 692
    .local v7, res:I
    if-gez v7, :cond_2

    .line 693
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v3           #resolvedType:Ljava/lang/String;
    .end local v7           #res:I
    :catch_0
    move-exception v6

    .line 696
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0, v6}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v3, v4

    .line 684
    goto :goto_0

    .line 698
    .restart local v3       #resolvedType:Ljava/lang/String;
    .restart local v7       #res:I
    :cond_2
    return-void
.end method

.method public setIntentHtcFlag(I)V
    .locals 3
    .parameter "iHtcFlag"

    .prologue
    .line 865
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setIntentHtcFlag(Landroid/content/IIntentSender;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PendingIntent"

    const-string v2, "[GhostScreen] Write intent htc flag fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 773
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 776
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 786
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 787
    return-void
.end method
