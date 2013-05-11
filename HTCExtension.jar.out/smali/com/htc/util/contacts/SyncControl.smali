.class public Lcom/htc/util/contacts/SyncControl;
.super Ljava/lang/Object;
.source "SyncControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;,
        Lcom/htc/util/contacts/SyncControl$ExceptionSync;,
        Lcom/htc/util/contacts/SyncControl$PendingSync;,
        Lcom/htc/util/contacts/SyncControl$SyncUnit;,
        Lcom/htc/util/contacts/SyncControl$SyncControlHandler;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x3e9

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final INIT:I = 0x3e8

.field private static final LOG:Ljava/lang/String; = "SyncControl"

.field public static final START_PENDING_SYNC:I = 0x3ea

.field private static mInstance:Lcom/htc/util/contacts/SyncControl;


# instance fields
.field private mAutoCancelAuthority:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExceptionSyncs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/util/contacts/SyncControl$ExceptionSync;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPendingSyncs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/util/contacts/SyncControl$PendingSync;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/util/contacts/SyncControl;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncControl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    .line 85
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 89
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    invoke-virtual {p0}, Lcom/htc/util/contacts/SyncControl;->getNewWorkHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    .line 91
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncControl_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/htc/util/contacts/SyncControl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/util/contacts/SyncControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/util/contacts/SyncControl;Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/util/contacts/SyncControl;->locateActiveList(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/util/contacts/SyncControl;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/util/contacts/SyncControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;
    .locals 2
    .parameter "tag"

    .prologue
    .line 381
    const-class v1, Lcom/htc/util/contacts/SyncControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/util/contacts/SyncControl;->mInstance:Lcom/htc/util/contacts/SyncControl;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/htc/util/contacts/SyncControl;

    invoke-direct {v0, p0}, Lcom/htc/util/contacts/SyncControl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/util/contacts/SyncControl;->mInstance:Lcom/htc/util/contacts/SyncControl;

    .line 384
    :cond_0
    sget-object v0, Lcom/htc/util/contacts/SyncControl;->mInstance:Lcom/htc/util/contacts/SyncControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private locateActiveList(Ljava/lang/String;Ljava/util/List;)I
    .locals 6
    .parameter "authority"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 104
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 105
    .local v1, info:Landroid/content/SyncInfo;
    iget-object v3, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-static {}, Landroid/app/SyncConfig;->isAABEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    if-eqz v3, :cond_2

    const-string v3, "com.htc.addressbook"

    iget-object v4, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    sget-boolean v3, Lcom/htc/util/contacts/SyncControl;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v1           #info:Landroid/content/SyncInfo;
    :cond_1
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_2
    return v0
.end method


# virtual methods
.method public addExceptionAccountType(Ljava/lang/String;)V
    .locals 4
    .parameter "accountType"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    new-instance v1, Lcom/htc/util/contacts/SyncControl$ExceptionSync;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "*"

    invoke-direct {v2, v3, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "*"

    invoke-direct {v1, v2, v3}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public addExceptionAuthority(Ljava/lang/String;)V
    .locals 5
    .parameter "authority"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mExceptionSyncs:Ljava/util/HashSet;

    new-instance v1, Lcom/htc/util/contacts/SyncControl$ExceptionSync;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "*"

    const-string v4, "*"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lcom/htc/util/contacts/SyncControl$ExceptionSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public addPendingSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "acc"
    .parameter "auth"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mPendingSyncs:Ljava/util/HashSet;

    new-instance v2, Lcom/htc/util/contacts/SyncControl$PendingSync;

    invoke-direct {v2, p1, p2}, Lcom/htc/util/contacts/SyncControl$PendingSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    sget-boolean v0, Lcom/htc/util/contacts/SyncControl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPendingSync(), account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getNewSyncStatusObserver()Landroid/content/SyncStatusObserver;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;

    invoke-direct {v0, p0}, Lcom/htc/util/contacts/SyncControl$SyncControlSyncStatusObserver;-><init>(Lcom/htc/util/contacts/SyncControl;)V

    return-object v0
.end method

.method protected getNewWorkHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/util/contacts/SyncControl$SyncControlHandler;-><init>(Lcom/htc/util/contacts/SyncControl;Landroid/os/Looper;)V

    return-object v0
.end method

.method public removeAutoCancel()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 413
    sget-boolean v0, Lcom/htc/util/contacts/SyncControl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mTag:Ljava/lang/String;

    const-string v1, "Removed all auto sync killer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    return-void
.end method

.method public setCancel(Ljava/lang/String;Z)V
    .locals 3
    .parameter "authority"
    .parameter "autoCancel"

    .prologue
    const/16 v1, 0x3ea

    .line 388
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mAutoCancelAuthority:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method public startPendingSync()V
    .locals 4

    .prologue
    const/16 v3, 0x3ea

    .line 417
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/htc/util/contacts/SyncControl;->mWorkHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    return-void
.end method
