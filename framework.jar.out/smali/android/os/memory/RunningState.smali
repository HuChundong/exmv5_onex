.class Landroid/os/memory/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/memory/RunningState$ServiceProcessComparator;,
        Landroid/os/memory/RunningState$MergedItem;,
        Landroid/os/memory/RunningState$ProcessItem;,
        Landroid/os/memory/RunningState$ServiceItem;,
        Landroid/os/memory/RunningState$BaseItem;,
        Landroid/os/memory/RunningState$OnRefreshUiListener;,
        Landroid/os/memory/RunningState$BackgroundHandler;,
        Landroid/os/memory/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Landroid/os/memory/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/memory/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/memory/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 589
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/memory/InterestingConfigChanges;

    invoke-direct {v0}, Landroid/os/memory/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/os/memory/RunningState$ServiceProcessComparator;

    invoke-direct {v0}, Landroid/os/memory/RunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 116
    iput v2, p0, Landroid/os/memory/RunningState;->mSequence:I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Landroid/os/memory/RunningState$1;

    invoke-direct {v0, p0}, Landroid/os/memory/RunningState$1;-><init>(Landroid/os/memory/RunningState;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 591
    iget-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Landroid/os/memory/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 592
    iget-object v0, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 593
    iput-boolean v2, p0, Landroid/os/memory/RunningState;->mResumed:Z

    .line 594
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 595
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 596
    new-instance v0, Landroid/os/memory/RunningState$BackgroundHandler;

    iget-object v1, p0, Landroid/os/memory/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/memory/RunningState$BackgroundHandler;-><init>(Landroid/os/memory/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    .line 597
    return-void
.end method

.method static synthetic access$000(Landroid/os/memory/RunningState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/memory/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Landroid/os/memory/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/os/memory/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static getInstance(Landroid/content/Context;)Landroid/os/memory/RunningState;
    .locals 2
    .parameter "context"

    .prologue
    .line 581
    sget-object v1, Landroid/os/memory/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    sget-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Landroid/os/memory/RunningState;

    invoke-direct {v0, p0}, Landroid/os/memory/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    .line 585
    :cond_0
    sget-object v0, Landroid/os/memory/RunningState;->sInstance:Landroid/os/memory/RunningState;

    monitor-exit v1

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 649
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 652
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 659
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 564
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 566
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 567
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 577
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 572
    :cond_2
    move-object v0, p1

    .line 573
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 574
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 575
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 664
    iget-object v0, p0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 665
    iget-object v0, p0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 666
    iget-object v0, p0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 667
    iget-object v0, p0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 668
    iget-object v0, p0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 669
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 58
    .parameter "context"
    .parameter "am"

    .prologue
    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    .line 674
    .local v40, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mSequence:I

    .line 676
    const/4 v15, 0x0

    .line 680
    .local v15, changed:Z
    const/16 v54, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v47

    .line 682
    .local v47, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v47, :cond_1

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    .line 683
    .local v9, NS:I
    :goto_0
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 684
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 688
    .local v48, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v54, v0

    if-nez v54, :cond_2

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-nez v54, :cond_2

    .line 689
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 690
    add-int/lit8 v22, v22, -0x1

    .line 691
    add-int/lit8 v9, v9, -0x1

    .line 683
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 682
    .end local v9           #NS:I
    .end local v22           #i:I
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 696
    .restart local v9       #NS:I
    .restart local v22       #i:I
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x8

    if-eqz v54, :cond_0

    .line 698
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 699
    add-int/lit8 v22, v22, -0x1

    .line 700
    add-int/lit8 v9, v9, -0x1

    .line 701
    goto :goto_2

    .line 707
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v42

    .line 709
    .local v42, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v42, :cond_4

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->size()I

    move-result v7

    .line 710
    .local v7, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 711
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    .line 712
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 713
    .local v36, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    new-instance v56, Landroid/os/memory/RunningState$AppProcessInfo;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v54 .. v56}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 711
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 709
    .end local v7           #NP:I
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 718
    .restart local v7       #NP:I
    :cond_5
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    .line 719
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 720
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_6

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_6

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .line 722
    .local v10, ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    if-eqz v10, :cond_6

    .line 723
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasServices:Z

    .line 724
    move-object/from16 v0, v48

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v54, v0

    if-eqz v54, :cond_6

    .line 725
    const/16 v54, 0x1

    move/from16 v0, v54

    iput-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 718
    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 732
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_13

    .line 733
    move-object/from16 v0, v47

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 740
    .restart local v48       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_b

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v54, v0

    if-lez v54, :cond_b

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .line 742
    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_b

    .line 748
    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x12c

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_b

    .line 752
    const/16 v50, 0x0

    .line 753
    .local v50, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .line 754
    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v10, :cond_9

    .line 755
    iget-boolean v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v54, v0

    if-nez v54, :cond_8

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_a

    .line 756
    :cond_8
    const/16 v50, 0x1

    .line 761
    :cond_9
    if-eqz v50, :cond_b

    .line 732
    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 759
    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    .restart local v50       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    iget-object v0, v10, Landroid/os/memory/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    check-cast v10, Landroid/os/memory/RunningState$AppProcessInfo;

    .restart local v10       #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    goto :goto_7

    .line 768
    .end local v10           #ainfo:Landroid/os/memory/RunningState$AppProcessInfo;
    .end local v50           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 769
    .local v43, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    if-nez v43, :cond_c

    .line 770
    new-instance v43, Ljava/util/HashMap;

    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    .line 771
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 773
    :cond_c
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 774
    .local v41, proc:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v41, :cond_d

    .line 775
    const/4 v15, 0x1

    .line 776
    new-instance v41, Landroid/os/memory/RunningState$ProcessItem;

    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 777
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    :cond_d
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_11

    .line 781
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x0

    cmp-long v54, v54, v56

    if-nez v54, :cond_12

    move-object/from16 v0, v48

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    .line 782
    .local v37, pid:I
    :goto_9
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v37

    move/from16 v1, v54

    if-eq v0, v1, :cond_10

    .line 783
    const/4 v15, 0x1

    .line 784
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move/from16 v1, v37

    if-eq v0, v1, :cond_10

    .line 785
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_e

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    .line 788
    :cond_e
    if-eqz v37, :cond_f

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v37

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 791
    :cond_f
    move/from16 v0, v37

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    .line 794
    :cond_10
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    .line 797
    .end local v37           #pid:I
    :cond_11
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v54

    or-int v15, v15, v54

    goto/16 :goto_8

    .line 781
    :cond_12
    const/16 v37, 0x0

    goto :goto_9

    .line 802
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    .end local v48           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_18

    .line 803
    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 804
    .restart local v36       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 805
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v41, :cond_15

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 810
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v41, :cond_14

    .line 811
    const/4 v15, 0x1

    .line 812
    new-instance v41, Landroid/os/memory/RunningState$ProcessItem;

    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v54, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move/from16 v2, v54

    move-object/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 813
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 816
    :cond_14
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 819
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/os/memory/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v54

    if-eqz v54, :cond_17

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_16

    .line 821
    const/4 v15, 0x1

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    .line 825
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    .line 826
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 831
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mRunningSeq:I

    .line 832
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 802
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 828
    :cond_17
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 837
    .end local v36           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 838
    .local v8, NRP:I
    add-int/lit8 v22, v8, -0x1

    :goto_c
    if-ltz v22, :cond_1d

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 840
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_1c

    .line 841
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    .line 842
    .local v17, clientPid:I
    if-eqz v17, :cond_1b

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/memory/RunningState$ProcessItem;

    .line 844
    .local v16, client:Landroid/os/memory/RunningState$ProcessItem;
    if-nez v16, :cond_19

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #client:Landroid/os/memory/RunningState$ProcessItem;
    check-cast v16, Landroid/os/memory/RunningState$ProcessItem;

    .line 847
    .restart local v16       #client:Landroid/os/memory/RunningState$ProcessItem;
    :cond_19
    if-eqz v16, :cond_1a

    .line 848
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    move-object/from16 v0, v54

    move/from16 v1, v55

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 838
    .end local v16           #client:Landroid/os/memory/RunningState$ProcessItem;
    .end local v17           #clientPid:I
    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .line 854
    .restart local v17       #clientPid:I
    :cond_1b
    const/16 v54, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mClient:Landroid/os/memory/RunningState$ProcessItem;

    goto :goto_d

    .line 857
    .end local v17           #clientPid:I
    :cond_1c
    const/4 v15, 0x1

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_d

    .line 863
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 864
    .local v6, NHP:I
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_20

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 866
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v54, v0

    if-eqz v54, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v54

    if-nez v54, :cond_1f

    .line 867
    :cond_1e
    const/4 v15, 0x1

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 869
    add-int/lit8 v22, v22, -0x1

    .line 870
    add-int/lit8 v6, v6, -0x1

    .line 864
    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 877
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 878
    .local v5, NAP:I
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_22

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 880
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_21

    .line 881
    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/memory/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v54

    or-int v15, v15, v54

    .line 878
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 886
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_22
    const/16 v53, 0x0

    .line 887
    .local v53, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2a

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/HashMap;

    .line 889
    .restart local v43       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .line 890
    .local v39, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_29

    .line 891
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    .line 892
    .local v36, pi:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_26

    .line 893
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 894
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-nez v54, :cond_24

    .line 897
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->clear()V

    .line 913
    :cond_24
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .line 914
    .local v49, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_23

    .line 915
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 916
    .local v48, si:Landroid/os/memory/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_25

    .line 917
    const/4 v15, 0x1

    .line 918
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 900
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    .end local v49           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ServiceItem;>;"
    :cond_26
    const/4 v15, 0x1

    .line 901
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    .line 902
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v54

    if-nez v54, :cond_28

    .line 903
    if-nez v53, :cond_27

    .line 904
    new-instance v53, Ljava/util/ArrayList;

    .end local v53           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .restart local v53       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_28
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-eqz v54, :cond_23

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 887
    .end local v36           #pi:Landroid/os/memory/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 924
    .end local v39           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/memory/RunningState$ProcessItem;>;"
    .end local v43           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/memory/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v53, :cond_2b

    .line 925
    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_2b

    .line 926
    move-object/from16 v0, v53

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v52

    .line 927
    .local v52, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 925
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 931
    .end local v52           #uid:I
    :cond_2b
    if-eqz v15, :cond_3c

    .line 933
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v51, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_30

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/util/HashMap;

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    .line 936
    .restart local v36       #pi:Landroid/os/memory/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    .line 937
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    .line 938
    const-wide v54, 0x7fffffffffffffffL

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    .line 939
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 940
    .restart local v48       #si:Landroid/os/memory/RunningState$ServiceItem;
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2d

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v54, v0

    and-int/lit8 v54, v54, 0x1

    if-eqz v54, :cond_2d

    .line 943
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsSystem:Z

    .line 945
    :cond_2d
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2c

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v54, v0

    if-eqz v54, :cond_2c

    .line 947
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mIsStarted:Z

    .line 948
    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v56, v0

    cmp-long v54, v54, v56

    if-lez v54, :cond_2c

    .line 949
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/os/memory/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 953
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 934
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v36           #pi:Landroid/os/memory/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 957
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mServiceProcessComparator:Landroid/os/memory/RunningState$ServiceProcessComparator;

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 959
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v30, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v31, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 962
    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_38

    .line 963
    move-object/from16 v0, v51

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/memory/RunningState$ProcessItem;

    .line 964
    .restart local v36       #pi:Landroid/os/memory/RunningState$ProcessItem;
    const/16 v54, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v36

    iput-boolean v0, v1, Landroid/os/memory/RunningState$BaseItem;->mNeedDivider:Z

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 968
    .local v18, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 970
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    move-object/from16 v0, v36

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    if-lez v54, :cond_31

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    :cond_31
    const/16 v25, 0x0

    .line 977
    .local v25, mergedItem:Landroid/os/memory/RunningState$MergedItem;
    const/16 v21, 0x0

    .line 978
    .local v21, haveAllMerged:Z
    const/16 v27, 0x0

    .line 979
    .local v27, needDivider:Z
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_34

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 980
    .restart local v48       #si:Landroid/os/memory/RunningState$ServiceItem;
    move/from16 v0, v27

    move-object/from16 v1, v48

    iput-boolean v0, v1, Landroid/os/memory/RunningState$BaseItem;->mNeedDivider:Z

    .line 981
    const/16 v27, 0x1

    .line 982
    move-object/from16 v0, v30

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-eqz v54, :cond_33

    .line 984
    if-eqz v25, :cond_32

    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_32

    .line 985
    const/16 v21, 0x0

    .line 987
    :cond_32
    move-object/from16 v0, v48

    iget-object v0, v0, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    .line 989
    :cond_33
    const/16 v21, 0x0

    goto :goto_18

    .line 993
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_34
    if-eqz v21, :cond_35

    if-eqz v25, :cond_35

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->size()I

    move-result v55

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_37

    .line 996
    :cond_35
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    .line 997
    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v54

    invoke-interface/range {v54 .. v54}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/memory/RunningState$ServiceItem;

    .line 998
    .restart local v48       #si:Landroid/os/memory/RunningState$ServiceItem;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    move-object/from16 v0, v25

    move-object/from16 v1, v48

    iput-object v0, v1, Landroid/os/memory/RunningState$ServiceItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    goto :goto_19

    .line 1001
    .end local v48           #si:Landroid/os/memory/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1002
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 1003
    move/from16 v26, v18

    .local v26, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    add-int/lit8 v54, v54, -0x1

    move/from16 v0, v26

    move/from16 v1, v54

    if-ge v0, v1, :cond_37

    .line 1004
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/lit8 v26, v26, 0x1

    goto :goto_1a

    .line 1008
    .end local v26           #mpi:I
    :cond_37
    const/16 v54, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1009
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 1014
    .end local v18           #firstProc:I
    .end local v21           #haveAllMerged:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v27           #needDivider:Z
    .end local v36           #pi:Landroid/os/memory/RunningState$ProcessItem;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1015
    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3b

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 1017
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mClient:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_3a

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/HashMap;->size()I

    move-result v54

    if-gtz v54, :cond_3a

    .line 1018
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    if-nez v54, :cond_39

    .line 1019
    new-instance v54, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v54 .. v54}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    .line 1020
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1022
    :cond_39
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1023
    const/16 v54, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v55, v0

    move-object/from16 v0, v31

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 1028
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1029
    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1030
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1031
    monitor-exit v55
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->clear()V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1038
    const/16 v32, 0x0

    .line 1039
    .local v32, numBackgroundProcesses:I
    const/16 v33, 0x0

    .line 1040
    .local v33, numForegroundProcesses:I
    const/16 v35, 0x0

    .line 1041
    .local v35, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1042
    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_40

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 1044
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_3f

    .line 1047
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_3d

    .line 1049
    add-int/lit8 v32, v32, 0x1

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 1031
    .end local v32           #numBackgroundProcesses:I
    .end local v33           #numForegroundProcesses:I
    .end local v35           #numServiceProcesses:I
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .restart local v30       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    .restart local v31       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v51       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v54

    :try_start_1
    monitor-exit v55
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v54

    .line 1051
    .end local v30           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$BaseItem;>;"
    .end local v31           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .end local v51           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$ProcessItem;>;"
    .restart local v32       #numBackgroundProcesses:I
    .restart local v33       #numForegroundProcesses:I
    .restart local v35       #numServiceProcesses:I
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_3e

    .line 1053
    add-int/lit8 v33, v33, 0x1

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1056
    :cond_3e
    const-string v54, "RunningState"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "Unknown non-service process: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " #"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1060
    :cond_3f
    add-int/lit8 v35, v35, 0x1

    goto :goto_1d

    .line 1064
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_40
    const-wide/16 v11, 0x0

    .line 1065
    .local v11, backgroundProcessMemory:J
    const-wide/16 v19, 0x0

    .line 1066
    .local v19, foregroundProcessMemory:J
    const-wide/16 v45, 0x0

    .line 1067
    .local v45, serviceProcessMemory:J
    const/16 v28, 0x0

    .line 1069
    .local v28, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 1070
    .local v34, numProc:I
    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 1071
    .local v38, pids:[I
    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_41

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v0, v54

    iget v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mPid:I

    move/from16 v54, v0

    aput v54, v38, v22

    .line 1071
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 1074
    :cond_41
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v44

    .line 1076
    .local v44, pss:[J
    const/4 v13, 0x0

    .line 1077
    .local v13, bgIndex:I
    const/16 v22, 0x0

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .local v29, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :goto_1f
    :try_start_3
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_48

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/memory/RunningState$ProcessItem;

    .line 1079
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    aget-wide v54, v44, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v56, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    move-wide/from16 v2, v54

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/memory/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v54

    or-int v15, v15, v54

    .line 1080
    move-object/from16 v0, v41

    iget v0, v0, Landroid/os/memory/RunningState$BaseItem;->mCurSeq:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/os/memory/RunningState;->mSequence:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_42

    .line 1081
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v45, v45, v54

    move-object/from16 v28, v29

    .line 1077
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v29, v28

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto :goto_1f

    .line 1082
    :cond_42
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0x190

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_47

    .line 1084
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0

    add-long v11, v11, v54

    .line 1086
    if-eqz v29, :cond_43

    .line 1087
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    .line 1088
    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1089
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v28, v29

    .line 1104
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :goto_21
    const/16 v54, 0x1

    :try_start_4
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/memory/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1105
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1106
    add-int/lit8 v13, v13, 0x1

    .line 1107
    goto :goto_20

    .line 1091
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :cond_43
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    if-ge v13, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_46

    .line 1093
    :cond_44
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1094
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .local v14, bgi:I
    :goto_22
    if-ge v14, v13, :cond_45

    .line 1095
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1097
    :cond_45
    new-instance v25, Landroid/os/memory/RunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/memory/RunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    iput-object v0, v1, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    .line 1098
    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mMergedItem:Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v54, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/os/memory/RunningState$MergedItem;->mProcess:Landroid/os/memory/RunningState$ProcessItem;

    .line 1099
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_21

    .line 1112
    .end local v13           #bgIndex:I
    .end local v14           #bgi:I
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .end local v44           #pss:[J
    :catch_0
    move-exception v54

    .line 1115
    :goto_23
    if-nez v28, :cond_49

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v54

    move/from16 v1, v32

    if-le v0, v1, :cond_49

    .line 1118
    new-instance v28, Ljava/util/ArrayList;

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1119
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    const/4 v14, 0x0

    .restart local v14       #bgi:I
    :goto_24
    move/from16 v0, v32

    if-ge v14, v0, :cond_49

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v28

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 1101
    .end local v14           #bgi:I
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    .restart local v44       #pss:[J
    :cond_46
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/memory/RunningState$MergedItem;

    .restart local v25       #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_21

    .line 1107
    .end local v25           #mergedItem:Landroid/os/memory/RunningState$MergedItem;
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :cond_47
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/os/memory/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v54, v0

    const/16 v55, 0xc8

    move/from16 v0, v54

    move/from16 v1, v55

    if-gt v0, v1, :cond_4d

    .line 1109
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/os/memory/RunningState$BaseItem;->mSize:J

    move-wide/from16 v54, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v19, v19, v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_20

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .end local v41           #proc:Landroid/os/memory/RunningState$ProcessItem;
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    :cond_48
    move-object/from16 v28, v29

    .line 1113
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto :goto_23

    .line 1125
    .end local v13           #bgIndex:I
    .end local v34           #numProc:I
    .end local v38           #pids:[I
    .end local v44           #pss:[J
    :cond_49
    const/16 v22, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v22

    move/from16 v1, v54

    if-ge v0, v1, :cond_4a

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/memory/RunningState$MergedItem;

    move-object/from16 v0, v54

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/memory/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1125
    add-int/lit8 v22, v22, 0x1

    goto :goto_25

    .line 1129
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v55, v0

    monitor-enter v55

    .line 1130
    :try_start_8
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumBackgroundProcesses:I

    .line 1131
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumForegroundProcesses:I

    .line 1132
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/os/memory/RunningState;->mNumServiceProcesses:I

    .line 1133
    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/os/memory/RunningState;->mBackgroundProcessMemory:J

    .line 1134
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/memory/RunningState;->mForegroundProcessMemory:J

    .line 1135
    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/os/memory/RunningState;->mServiceProcessMemory:J

    .line 1136
    if-eqz v28, :cond_4b

    .line 1137
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1138
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/memory/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v54, v0

    if-eqz v54, :cond_4b

    .line 1139
    const/4 v15, 0x1

    .line 1142
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/os/memory/RunningState;->mHaveData:Z

    move/from16 v54, v0

    if-nez v54, :cond_4c

    .line 1143
    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/os/memory/RunningState;->mHaveData:Z

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Object;->notifyAll()V

    .line 1146
    :cond_4c
    monitor-exit v55

    .line 1148
    return v15

    .line 1146
    :catchall_1
    move-exception v54

    monitor-exit v55
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v54

    .line 1112
    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v34       #numProc:I
    .restart local v38       #pids:[I
    .restart local v44       #pss:[J
    :catch_1
    move-exception v54

    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v28           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v41       #proc:Landroid/os/memory/RunningState$ProcessItem;
    :cond_4d
    move-object/from16 v28, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    .restart local v28       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/memory/RunningState$MergedItem;>;"
    goto/16 :goto_20
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1153
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/memory/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 624
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 641
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mResumed:Z

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    .line 644
    iget-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    monitor-exit v1

    .line 646
    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Landroid/os/memory/RunningState$OnRefreshUiListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 600
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mResumed:Z

    .line 602
    iput-object p1, p0, Landroid/os/memory/RunningState;->mRefreshUiListener:Landroid/os/memory/RunningState$OnRefreshUiListener;

    .line 603
    iget-object v0, p0, Landroid/os/memory/RunningState;->mInterestingConfigChanges:Landroid/os/memory/InterestingConfigChanges;

    iget-object v2, p0, Landroid/os/memory/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/memory/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z

    .line 605
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 606
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 612
    :cond_1
    iget-object v0, p0, Landroid/os/memory/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    monitor-exit v1

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1158
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_0
    iput-boolean p1, p0, Landroid/os/memory/RunningState;->mWatchingBackgroundItems:Z

    .line 1160
    monitor-exit v1

    .line 1161
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 617
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 619
    iget-object v0, p0, Landroid/os/memory/RunningState;->mBackgroundHandler:Landroid/os/memory/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/memory/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 620
    monitor-exit v1

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 630
    iget-object v1, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 631
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/os/memory/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 633
    :try_start_1
    iget-object v0, p0, Landroid/os/memory/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    goto :goto_0

    .line 637
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 638
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
