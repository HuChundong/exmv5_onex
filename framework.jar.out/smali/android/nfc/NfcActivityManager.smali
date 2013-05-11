.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/INdefPushCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;,
        Landroid/nfc/NfcActivityManager$NfcApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean; = null

.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultEvent:Landroid/nfc/NfcEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/nfc/INdefPushCallback$Stub;-><init>()V

    .line 191
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    .line 194
    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    .line 195
    return-void
.end method


# virtual methods
.method public createMessage()Landroid/nfc/NdefMessage;
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v2

    .line 281
    .local v2, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    monitor-exit p0

    .line 291
    :cond_0
    :goto_0
    return-object v1

    .line 283
    :cond_1
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 284
    .local v0, callback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v1, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 285
    .local v1, message:Landroid/nfc/NdefMessage;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v1

    goto :goto_0

    .line 285
    .end local v0           #callback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    .end local v1           #message:Landroid/nfc/NdefMessage;
    .end local v2           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 184
    .local v0, activityState:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    .line 186
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    .end local v0           #activityState:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3
    .parameter "activity"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 156
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 160
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .locals 3
    .parameter "app"

    .prologue
    .line 76
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .line 77
    .local v0, appState:Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 81
    .end local v0           #appState:Landroid/nfc/NfcActivityManager$NfcApplicationState;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 175
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 179
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 2
    .parameter "activity"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 166
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    .line 168
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-object v0

    .line 165
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUris()[Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v5

    .line 302
    .local v5, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v5, :cond_1

    monitor-exit p0

    move-object v7, v8

    .line 325
    :cond_0
    :goto_0
    return-object v7

    .line 303
    :cond_1
    iget-object v7, v5, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 304
    .local v7, uris:[Landroid/net/Uri;
    iget-object v1, v5, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 305
    .local v1, callback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    if-eqz v1, :cond_0

    .line 307
    iget-object v9, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v1, v9}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    move-result-object v7

    .line 308
    if-eqz v7, :cond_0

    .line 309
    move-object v0, v7

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 310
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_2

    .line 311
    const-string v9, "NFC"

    const-string v10, "Uri not allowed to be null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 312
    goto :goto_0

    .line 305
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v1           #callback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #uris:[Landroid/net/Uri;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 314
    .restart local v0       #arr$:[Landroid/net/Uri;
    .restart local v1       #callback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #uris:[Landroid/net/Uri;
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, scheme:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v9, "file"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "content"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 317
    :cond_3
    const-string v9, "NFC"

    const-string v10, "Uri needs to have either scheme file or scheme content"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 319
    goto :goto_0

    .line 309
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 348
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 391
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 396
    :cond_1
    monitor-exit p0

    .line 397
    return-void

    .line 396
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 371
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    .line 376
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {p0, v4}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    goto :goto_0

    .line 374
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 359
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 362
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {p0, v4}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    goto :goto_0

    .line 362
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 384
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 352
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 380
    return-void
.end method

.method public onNdefPushComplete()V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 335
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-nez v1, :cond_1

    monitor-exit p0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 338
    .local v0, callback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v2}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    goto :goto_0

    .line 338
    .end local v0           #callback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 86
    .local v0, appState:Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    .end local v0           #appState:Landroid/nfc/NfcActivityManager$NfcApplicationState;
    invoke-direct {v0, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    .line 88
    .restart local v0       #appState:Landroid/nfc/NfcActivityManager$NfcApplicationState;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    .line 91
    return-void
.end method

.method requestNfcServiceCallback(Z)V
    .locals 3
    .parameter "request"

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v2

    if-eqz p1, :cond_0

    move-object v1, p0

    :goto_0
    invoke-interface {v2, v1}, Landroid/nfc/INfcAdapter;->setNdefPushCallback(Landroid/nfc/INdefPushCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    return-void

    .line 268
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "uris"

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 201
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 202
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 203
    .local v0, isResumed:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    .line 207
    :cond_0
    return-void

    .line 203
    .end local v0           #isResumed:Z
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 3
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 215
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 216
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 217
    .local v0, isResumed:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    .line 221
    :cond_0
    return-void

    .line 217
    .end local v0           #isResumed:Z
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 3
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 227
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 228
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 229
    .local v0, isResumed:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    .line 233
    :cond_0
    return-void

    .line 229
    .end local v0           #isResumed:Z
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V
    .locals 3
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 240
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 241
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 242
    .local v0, isResumed:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    .line 246
    :cond_0
    return-void

    .line 242
    .end local v0           #isResumed:Z
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 3
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v1

    .line 253
    .local v1, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iput-object p2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 254
    iget-boolean v0, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 255
    .local v0, isResumed:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback(Z)V

    .line 259
    :cond_0
    return-void

    .line 255
    .end local v0           #isResumed:Z
    .end local v1           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    .line 95
    .local v0, appState:Landroid/nfc/NfcActivityManager$NfcApplicationState;
    if-nez v0, :cond_0

    .line 96
    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    goto :goto_0
.end method
