.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 78
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, permOwner:Landroid/os/IBinder;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 96
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v2, userFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void

    .line 90
    .end local v2           #userFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 8
    .parameter "uid"
    .parameter "pkg"

    .prologue
    .line 304
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 305
    .local v4, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, p1}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 306
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not own package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 310
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 312
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 313
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 314
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 315
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 316
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v5, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v5, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3
    .parameter "data"
    .parameter "uid"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 275
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 276
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2
    .parameter "item"
    .parameter "uid"

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 268
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 271
    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 5
    .parameter "uri"
    .parameter "uid"

    .prologue
    .line 250
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 256
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 257
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private final clearActiveOwnersLocked()V
    .locals 4

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 346
    .local v1, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 347
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v3, :cond_1

    .line 354
    :cond_0
    return-void

    .line 350
    :cond_1
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 351
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 352
    iget-object v3, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 5
    .parameter "userId"

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 127
    :try_start_0
    const-string v1, "ClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got clipboard for user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .line 129
    .local v0, puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .end local v0           #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    .line 131
    .restart local v0       #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    :cond_0
    monitor-exit v2

    return-object v0

    .line 134
    .end local v0           #puc:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .locals 2
    .parameter "item"
    .parameter "pkg"

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 299
    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "pkg"

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 283
    .local v6, ident:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    return-void

    .line 287
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeClipboard(I)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 339
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 342
    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 325
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 328
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 2
    .parameter "pkg"

    .prologue
    .line 182
    monitor-enter p0

    .line 184
    :try_start_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v0

    .line 187
    .local v0, dm:Lcom/android/server/DeviceManager3LMService;
    invoke-virtual {v0, p1}, Lcom/android/server/DeviceManager3LMService;->checkPrimaryClipAccess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    .line 194
    .end local v0           #dm:Lcom/android/server/DeviceManager3LMService;
    :goto_0
    return-object v1

    .line 191
    .restart local v0       #dm:Lcom/android/server/DeviceManager3LMService;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 197
    .end local v0           #dm:Lcom/android/server/DeviceManager3LMService;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 193
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 203
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasClipboardText()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 241
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 243
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit p0

    .line 245
    .end local v1           #text:Ljava/lang/CharSequence;
    :goto_0
    return v2

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 246
    .end local v0           #clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasPrimaryClip()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 208
    monitor-enter p0

    .line 210
    :try_start_0
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v7, :cond_1

    .line 212
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v1

    .line 213
    .local v1, dm:Lcom/android/server/DeviceManager3LMService;
    iget-object v7, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, packages:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 215
    .local v5, pkg:Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/android/server/DeviceManager3LMService;->checkPrimaryClipAccess(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 216
    monitor-exit p0

    .line 222
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dm:Lcom/android/server/DeviceManager3LMService;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packages:[Ljava/lang/String;
    .end local v5           #pkg:Ljava/lang/String;
    :goto_1
    return v6

    .line 214
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dm:Lcom/android/server/DeviceManager3LMService;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #packages:[Ljava/lang/String;
    .restart local v5       #pkg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dm:Lcom/android/server/DeviceManager3LMService;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #packages:[Ljava/lang/String;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    :cond_2
    monitor-exit p0

    goto :goto_1

    .line 223
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 233
    monitor-enter p0

    .line 234
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 235
    monitor-exit p0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 9
    .parameter "clip"

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-gtz v7, :cond_0

    .line 146
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No items"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 148
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 149
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    .line 152
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v7, :cond_1

    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 155
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 158
    .local v4, token:J
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v1

    .line 159
    .local v1, dm:Lcom/android/server/DeviceManager3LMService;
    invoke-virtual {v1, v6}, Lcom/android/server/DeviceManager3LMService;->setPrimaryClipOwner(I)V

    .line 161
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    .end local v1           #dm:Lcom/android/server/DeviceManager3LMService;
    .end local v4           #token:J
    .end local v6           #uid:I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 166
    .local v0, clipboard:Lcom/android/server/ClipboardService$PerUserClipboard;
    iput-object p1, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 167
    iget-object v7, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 168
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 170
    :try_start_2
    iget-object v7, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v7}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_2
    :try_start_3
    iget-object v7, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 178
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    return-void

    .line 171
    :catch_0
    move-exception v7

    goto :goto_1
.end method
