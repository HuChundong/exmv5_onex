.class public Lcom/android/internal/os/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final NV_GPU_FILE:Ljava/lang/String; = "/sys/kernel/debug/tegra_host/scaling/gpubusy_time"

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final QCT_GPU_FILE:Ljava/lang/String; = "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gputime_in_state"

.field private static final STE_GPU_FILE:Ljava/lang/String; = "/sys/QAZ/WSX/QWE/ASD/ZXC"

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 68
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 240
    new-instance v0, Lcom/android/internal/os/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x2t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 68
    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 102
    :array_2
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 115
    :array_3
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 259
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessStatsData:[J

    .line 66
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mSinglePidStatsData:[J

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 100
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsData:[J

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mSystemCpuData:[J

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mLoadAverageData:[F

    .line 125
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    .line 126
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    .line 127
    iput v1, p0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 157
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    .line 260
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessStats;->mIncludeThreads:Z

    .line 261
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 27
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 347
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/ProcessStats$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v17

    .line 348
    .local v17, pids:[I
    if-nez v17, :cond_1

    const/4 v9, 0x0

    .line 349
    .local v9, NP:I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 350
    .local v10, NS:I
    const/4 v11, 0x0

    .line 351
    .local v11, curStatsIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v9, :cond_0

    .line 352
    aget v5, v17, v12

    .line 353
    .local v5, pid:I
    if-gez v5, :cond_2

    .line 354
    move v9, v5

    .line 510
    .end local v5           #pid:I
    :cond_0
    :goto_2
    if-ge v11, v10, :cond_f

    .line 512
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/ProcessStats$Stats;

    .line 513
    .local v20, st:Lcom/android/internal/os/ProcessStats$Stats;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 514
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 515
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 516
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 517
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    .line 518
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 519
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 520
    add-int/lit8 v10, v10, -0x1

    .line 522
    goto :goto_2

    .line 348
    .end local v9           #NP:I
    .end local v10           #NS:I
    .end local v11           #curStatsIndex:I
    .end local v12           #i:I
    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, v17

    array-length v9, v0

    goto :goto_0

    .line 357
    .restart local v5       #pid:I
    .restart local v9       #NP:I
    .restart local v10       #NS:I
    .restart local v11       #curStatsIndex:I
    .restart local v12       #i:I
    :cond_2
    if-ge v11, v10, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessStats$Stats;

    move-object/from16 v20, v3

    .line 359
    .restart local v20       #st:Lcom/android/internal/os/ProcessStats$Stats;
    :goto_3
    if-eqz v20, :cond_9

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v3, v5, :cond_9

    .line 361
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    .line 362
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 363
    add-int/lit8 v11, v11, 0x1

    .line 368
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_3

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 371
    .local v23, uptime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v18, v0

    .line 372
    .local v18, procStats:[J
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v6, v0, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 351
    .end local v18           #procStats:[J
    .end local v23           #uptime:J
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 357
    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 377
    .restart local v18       #procStats:[J
    .restart local v20       #st:Lcom/android/internal/os/ProcessStats$Stats;
    .restart local v23       #uptime:J
    :cond_5
    const/4 v3, 0x0

    aget-wide v15, v18, v3

    .line 378
    .local v15, minfaults:J
    const/4 v3, 0x1

    aget-wide v13, v18, v3

    .line 379
    .local v13, majfaults:J
    const/4 v3, 0x2

    aget-wide v25, v18, v3

    .line 380
    .local v25, utime:J
    const/4 v3, 0x3

    aget-wide v21, v18, v3

    .line 382
    .local v21, stime:J
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    cmp-long v3, v25, v3

    if-nez v3, :cond_6

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    cmp-long v3, v21, v3

    if-nez v3, :cond_6

    .line 383
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 384
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 385
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 387
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    if-eqz v3, :cond_3

    .line 388
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    goto :goto_4

    .line 393
    :cond_6
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    if-nez v3, :cond_7

    .line 394
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->active:Z

    .line 397
    :cond_7
    if-gez p2, :cond_8

    .line 398
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/ProcessStats;->getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 400
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    .line 411
    :cond_8
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    sub-long v3, v23, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    .line 412
    move-wide/from16 v0, v23

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    .line 413
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    sub-long v3, v25, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 414
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    sub-long v3, v21, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 415
    move-wide/from16 v0, v25

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 416
    move-wide/from16 v0, v21

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    .line 417
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    sub-long v3, v15, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 418
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 419
    move-object/from16 v0, v20

    iput-wide v15, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    .line 420
    move-object/from16 v0, v20

    iput-wide v13, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    .line 421
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .line 427
    .end local v13           #majfaults:J
    .end local v15           #minfaults:J
    .end local v18           #procStats:[J
    .end local v21           #stime:J
    .end local v23           #uptime:J
    .end local v25           #utime:J
    :cond_9
    if-eqz v20, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-le v3, v5, :cond_e

    .line 429
    :cond_a
    new-instance v20, Lcom/android/internal/os/ProcessStats$Stats;

    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mIncludeThreads:Z

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v0, v5, v1, v3}, Lcom/android/internal/os/ProcessStats$Stats;-><init>(IIZ)V

    .line 430
    .restart local v20       #st:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 431
    add-int/lit8 v11, v11, 0x1

    .line 432
    add-int/lit8 v10, v10, 0x1

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 438
    .local v19, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v18, v0

    .line 439
    .restart local v18       #procStats:[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_uptime:J

    .line 440
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v3, v4, v0, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 448
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    .line 449
    const/4 v3, 0x0

    aget-object v3, v19, v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 450
    const/4 v3, 0x1

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    .line 451
    const/4 v3, 0x2

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    .line 452
    const/4 v3, 0x3

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 453
    const/4 v3, 0x4

    aget-wide v3, v18, v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    .line 466
    :goto_5
    if-gez p2, :cond_d

    .line 467
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/ProcessStats;->getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 469
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurThreadPids:[I

    .line 481
    :cond_b
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 482
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 483
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 484
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 485
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    .line 486
    if-nez p3, :cond_3

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_3

    .line 487
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .line 460
    :cond_c
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unknown process pid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v3, "<unknown>"

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 462
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_stime:J

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_utime:J

    .line 463
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_majfaults:J

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->base_minfaults:J

    goto/16 :goto_5

    .line 472
    :cond_d
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->interesting:Z

    if-eqz v3, :cond_b

    .line 473
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 474
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/os/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    goto :goto_6

    .line 493
    .end local v18           #procStats:[J
    .end local v19           #procStatsString:[Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    .line 494
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    .line 495
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    .line 496
    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    .line 497
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    .line 498
    const/4 v3, 0x1

    move-object/from16 v0, v20

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    .line 499
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 500
    add-int/lit8 v10, v10, -0x1

    .line 506
    add-int/lit8 v12, v12, -0x1

    .line 507
    goto/16 :goto_4

    .line 524
    .end local v5           #pid:I
    .end local v20           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_f
    return-object v17
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .parameter "out"

    .prologue
    .line 839
    move-object v7, p1

    .line 840
    .local v7, tempTimes:[J
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    .line 842
    .local v6, tempSpeeds:[J
    const/16 v0, 0x20

    .line 843
    .local v0, MAX_SPEEDS:I
    if-nez p1, :cond_0

    .line 844
    const/16 v11, 0x20

    new-array v7, v11, [J

    .line 845
    const/16 v11, 0x20

    new-array v6, v11, [J

    .line 847
    :cond_0
    const/4 v4, 0x0

    .line 848
    .local v4, speed:I
    const-string v11, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, file:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 851
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v11, "\n "

    invoke-direct {v5, v2, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .local v5, st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 853
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 855
    .local v8, token:Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 856
    .local v9, val:J
    aput-wide v9, v6, v4

    .line 857
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 858
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 859
    aput-wide v9, v7, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 860
    add-int/lit8 v4, v4, 0x1

    .line 861
    const/16 v11, 0x20

    if-ne v4, v11, :cond_1

    .line 878
    .end local v5           #st:Ljava/util/StringTokenizer;
    .end local v8           #token:Ljava/lang/String;
    .end local v9           #val:J
    :cond_2
    if-nez p1, :cond_3

    .line 879
    new-array p1, v4, [J

    .line 880
    new-array v11, v4, [J

    iput-object v11, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    .line 881
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeeds:[J

    const/4 v13, 0x0

    invoke-static {v6, v11, v12, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, p1, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 884
    :cond_3
    return-object p1

    .line 866
    .restart local v5       #st:Ljava/util/StringTokenizer;
    .restart local v8       #token:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 867
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "ProcessStats"

    const-string v12, "Unable to parse time_in_state"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v11, "ProcessStats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file content =\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 872
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "ProcessStats"

    const-string v12, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state might be damaged"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v11, "ProcessStats"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file content =\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getGpuSpeedNum()I
    .locals 6

    .prologue
    .line 753
    const/4 v2, 0x0

    .line 754
    .local v2, speed:I
    const/16 v0, 0x14

    .line 761
    .local v0, MAX_GPU_SPEEDS:I
    invoke-static {}, Lcom/android/internal/os/ProcessStats;->readGpuFile()Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 766
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "\n "

    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 769
    .local v4, token:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 771
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 778
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 785
    add-int/lit8 v2, v2, 0x1

    .line 787
    const/16 v5, 0x14

    if-ne v2, v5, :cond_0

    .line 806
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    :cond_1
    if-gtz v2, :cond_2

    .line 808
    const/4 v2, 0x1

    .line 811
    .end local v2           #speed:I
    :cond_2
    return v2
.end method

.method public static getGpuSpeedTimes([J)[J
    .locals 14
    .parameter "out"

    .prologue
    const/16 v13, 0x14

    const/4 v12, 0x0

    .line 660
    const/4 v6, 0x0

    .line 661
    .local v6, tempTimes:[J
    const/16 v0, 0x14

    .line 668
    .local v0, MAX_GPU_SPEEDS:I
    if-nez p0, :cond_3

    .line 670
    new-array v6, v13, [J

    .line 677
    :goto_0
    const/4 v4, 0x0

    .line 679
    .local v4, speed:I
    invoke-static {}, Lcom/android/internal/os/ProcessStats;->readGpuFile()Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, file:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 684
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v5, v2, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .local v5, st:Ljava/util/StringTokenizer;
    const/4 v7, 0x0

    .line 686
    .local v7, token:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 688
    .local v8, val:J
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 690
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 699
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 701
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 709
    aput-wide v8, v6, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 711
    add-int/lit8 v4, v4, 0x1

    .line 713
    if-ne v4, v13, :cond_0

    .line 742
    .end local v5           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #val:J
    :cond_1
    if-nez p0, :cond_2

    .line 744
    new-array p0, v4, [J

    .line 745
    invoke-static {v6, v12, p0, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    :cond_2
    return-object p0

    .line 674
    .end local v2           #file:Ljava/lang/String;
    .end local v4           #speed:I
    :cond_3
    move-object v6, p0

    goto :goto_0

    .line 721
    .restart local v2       #file:Ljava/lang/String;
    .restart local v4       #speed:I
    .restart local v5       #st:Ljava/util/StringTokenizer;
    .restart local v7       #token:Ljava/lang/String;
    .restart local v8       #val:J
    :catch_0
    move-exception v3

    .line 723
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "ProcessStats"

    const-string v11, "Unable to parse"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 725
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 727
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ProcessStats"

    const-string v11, "file might be damaged"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getName(Lcom/android/internal/os/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 5
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    .line 1140
    iget-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 1141
    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1143
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/internal/os/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1145
    move-object v2, v0

    .line 1146
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1147
    .local v1, i:I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 1148
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1151
    .end local v1           #i:I
    :cond_1
    if-nez v2, :cond_2

    .line 1152
    iget-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 1155
    .end local v0           #cmdName:Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1156
    :cond_3
    iput-object v2, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 1157
    iget-object v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/os/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    .line 1159
    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 7
    .parameter "pw"
    .parameter "prefix"
    .parameter "pid"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    .line 1049
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 1051
    :cond_0
    add-int v1, p6, p7

    add-int/2addr v1, p8

    add-int v1, v1, p9

    add-int v1, v1, p10

    int-to-long v3, v1

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1052
    const-string v1, "% "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    if-ltz p3, :cond_1

    .line 1054
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1055
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    int-to-long v3, p6

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1060
    const-string v1, "% user + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    int-to-long v3, p7

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1062
    const-string v1, "% kernel"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    if-lez p8, :cond_2

    .line 1064
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    int-to-long v3, p8

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1066
    const-string v1, "% iowait"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    :cond_2
    if-lez p9, :cond_3

    .line 1069
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    move/from16 v0, p9

    int-to-long v3, v0

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1071
    const-string v1, "% irq"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    :cond_3
    if-lez p10, :cond_4

    .line 1074
    const-string v1, " + "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    move/from16 v0, p10

    int-to-long v3, v0

    int-to-long v5, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1076
    const-string v1, "% softirq"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    .line 1079
    :cond_5
    const-string v1, " / faults:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    if-lez p11, :cond_6

    .line 1081
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    move/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1083
    const-string v1, " minor"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    :cond_6
    if-lez p12, :cond_7

    .line 1086
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    move/from16 v0, p12

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1088
    const-string v1, " major"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1092
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .parameter "pw"
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    const-wide/16 v8, 0xa

    .line 1034
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .line 1035
    .local v4, thousands:J
    div-long v0, v4, v8

    .line 1036
    .local v0, hundreds:J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1037
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    .line 1038
    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .line 1039
    .local v2, remainder:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 1040
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1041
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1044
    .end local v2           #remainder:J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 1098
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 1099
    .local v4, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .local v1, is:Ljava/io/FileInputStream;
    move-object v2, v1

    .line 1104
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1105
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1106
    .local v3, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1108
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 1116
    if-lez v3, :cond_6

    .line 1118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 1119
    iget-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    aget-byte v5, v5, v0

    if-ne v5, p2, :cond_3

    .line 1123
    :cond_0
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1128
    if-eqz v1, :cond_1

    .line 1130
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1134
    :cond_1
    :goto_2
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1136
    .end local v0           #i:I
    .end local v3           #len:I
    :goto_3
    return-object v5

    .line 1110
    .restart local v3       #len:I
    :cond_2
    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v5

    .line 1111
    :try_start_3
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exceeds buffer size when reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", extend to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/android/internal/os/ProcessStats;->mBuffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v2, v1

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 1118
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v1, :cond_4

    .line 1130
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1134
    :cond_4
    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1128
    throw v5

    .line 1125
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 1128
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_6
    if-eqz v1, :cond_5

    .line 1130
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1134
    :cond_5
    :goto_7
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1136
    const/4 v5, 0x0

    goto :goto_3

    .line 1131
    :catch_1
    move-exception v5

    goto :goto_7

    .line 1126
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move-object v1, v2

    .line 1128
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_8
    if-eqz v1, :cond_5

    .line 1130
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 1131
    :catch_3
    move-exception v5

    goto :goto_7

    :catch_4
    move-exception v6

    goto :goto_5

    .restart local v0       #i:I
    .restart local v3       #len:I
    :catch_5
    move-exception v6

    goto :goto_2

    .line 1128
    .end local v0           #i:I
    :cond_6
    if-eqz v1, :cond_5

    .line 1130
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 1131
    :catch_6
    move-exception v5

    goto :goto_7

    .line 1128
    .end local v3           #len:I
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 1126
    :catch_7
    move-exception v5

    goto :goto_8

    .line 1125
    :catch_8
    move-exception v5

    goto :goto_6
.end method

.method private static readGpuFile()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    const/4 v0, 0x0

    .line 549
    .local v0, file:Ljava/lang/String;
    const-string v1, "/sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/gputime_in_state"

    invoke-static {v1, v2}, Lcom/android/internal/os/ProcessStats;->readGpuFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-object v0

    .line 556
    :cond_1
    const-string v1, "/sys/kernel/debug/tegra_host/scaling/gpubusy_time"

    invoke-static {v1, v2}, Lcom/android/internal/os/ProcessStats;->readGpuFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 558
    if-nez v0, :cond_0

    .line 563
    const-string v1, "/sys/QAZ/WSX/QWE/ASD/ZXC"

    invoke-static {v1, v2}, Lcom/android/internal/os/ProcessStats;->readGpuFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private static readGpuFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "endChar"

    .prologue
    .line 580
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 581
    .local v4, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 582
    .local v1, is:Ljava/io/FileInputStream;
    const/16 v6, 0x100

    new-array v5, v6, [B

    .line 591
    .local v5, tmpBuf:[B
    const/4 v3, 0x0

    .local v3, len:I
    move-object v2, v1

    .line 595
    .end local v1           #is:Ljava/io/FileInputStream;
    .local v2, is:Ljava/io/FileInputStream;
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 596
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 597
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 599
    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 611
    if-lez v3, :cond_6

    .line 614
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 616
    aget-byte v6, v5, v0

    if-ne v6, p1, :cond_3

    .line 621
    :cond_0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 641
    if-eqz v1, :cond_1

    .line 645
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 652
    :cond_1
    :goto_2
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 655
    .end local v0           #i:I
    :goto_3
    return-object v6

    .line 601
    :cond_2
    shr-int/lit8 v6, v3, 0x1

    add-int/2addr v3, v6

    .line 608
    :try_start_3
    new-array v5, v3, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v2, v1

    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    goto :goto_0

    .line 614
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 641
    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    move-object v1, v2

    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v1, :cond_4

    .line 645
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 652
    :cond_4
    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 641
    throw v6

    .line 625
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 641
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_6
    if-eqz v1, :cond_5

    .line 645
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 652
    :cond_5
    :goto_7
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 655
    const/4 v6, 0x0

    goto :goto_3

    .line 647
    :catch_1
    move-exception v6

    goto :goto_7

    .line 632
    .end local v1           #is:Ljava/io/FileInputStream;
    .restart local v2       #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v1, v2

    .line 641
    .end local v2           #is:Ljava/io/FileInputStream;
    .restart local v1       #is:Ljava/io/FileInputStream;
    :goto_8
    if-eqz v1, :cond_5

    .line 645
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 647
    :catch_3
    move-exception v6

    goto :goto_7

    :catch_4
    move-exception v7

    goto :goto_5

    .restart local v0       #i:I
    :catch_5
    move-exception v7

    goto :goto_2

    .line 641
    .end local v0           #i:I
    :cond_6
    if-eqz v1, :cond_5

    .line 645
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    .line 647
    :catch_6
    move-exception v6

    goto :goto_7

    .line 641
    :catchall_1
    move-exception v6

    goto :goto_4

    .line 632
    :catch_7
    move-exception v6

    goto :goto_8

    .line 625
    :catch_8
    move-exception v6

    goto :goto_6
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 920
    iget-boolean v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    .line 921
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 922
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 923
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 924
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessStats$Stats;

    .line 925
    .local v4, stats:Lcom/android/internal/os/ProcessStats$Stats;
    iget-boolean v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_2

    .line 926
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 928
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 929
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 930
    .local v0, M:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 931
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessStats$Stats;

    .line 932
    .local v5, tstats:Lcom/android/internal/os/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 933
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 936
    .end local v5           #tstats:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 923
    .end local v0           #M:I
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 940
    .end local v4           #stats:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/os/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 941
    iput-boolean v8, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    .line 943
    .end local v1           #N:I
    .end local v2           #i:I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessStats;->buildWorkingProcs()V

    .line 955
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 8
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/ProcessStats;->mSinglePidStatsData:[J

    .line 530
    .local v1, statsData:[J
    sget-object v4, Lcom/android/internal/os/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .line 536
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    .line 821
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_0

    .line 822
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/os/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    .line 823
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 824
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 825
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/android/internal/os/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 829
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 830
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .line 831
    .local v1, temp:J
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 832
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    .line 829
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 835
    .end local v1           #temp:J
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessStats$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    .line 912
    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    add-int v0, v1, v2

    .line 913
    .local v0, denom:I
    if-gtz v0, :cond_0

    .line 914
    const/4 v1, 0x0

    .line 916
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessStats$Stats;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessStats;->update()V

    .line 274
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    .line 264
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 3

    .prologue
    .line 963
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 964
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 965
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 967
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 969
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    iget v2, p0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 971
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .parameter "now"

    .prologue
    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessStats;->buildWorkingProcs()V

    .line 977
    new-instance v26, Ljava/io/StringWriter;

    invoke-direct/range {v26 .. v26}, Ljava/io/StringWriter;-><init>()V

    .line 978
    .local v26, sw:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 980
    .local v3, pw:Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 982
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 983
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 985
    const-string v2, "ms ago"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    :goto_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v23, v4, v6

    .line 994
    .local v23, sampleTime:J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleRealTime:J

    sub-long v21, v4, v6

    .line 995
    .local v21, sampleRealTime:J
    const-wide/16 v4, 0x0

    cmp-long v2, v21, v4

    if-lez v2, :cond_2

    const-wide/16 v4, 0x64

    mul-long v4, v4, v23

    div-long v19, v4, v21

    .line 996
    .local v19, percAwake:J
    :goto_1
    const-wide/16 v4, 0x64

    cmp-long v2, v19, v4

    if-eqz v2, :cond_0

    .line 997
    const-string v2, " with "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 999
    const-string v2, "% awake"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    :cond_0
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    add-int v27, v2, v4

    .line 1009
    .local v27, totalTime:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1010
    .local v16, N:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/ProcessStats$Stats;

    .line 1012
    .local v25, st:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_3

    const-string v4, " +"

    :goto_3
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    long-to-int v2, v7

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v25

    iget v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v25

    iget v13, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_minfaults:I

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_majfaults:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1015
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-nez v2, :cond_7

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 1016
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1017
    .local v15, M:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v15, :cond_7

    .line 1018
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/ProcessStats$Stats;

    .line 1019
    .local v28, tst:Lcom/android/internal/os/ProcessStats$Stats;
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_5

    const-string v4, "   +"

    :goto_5
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    long-to-int v2, v7

    div-int/lit8 v7, v2, 0xa

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1017
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 987
    .end local v15           #M:I
    .end local v16           #N:I
    .end local v17           #i:I
    .end local v18           #j:I
    .end local v19           #percAwake:J
    .end local v21           #sampleRealTime:J
    .end local v23           #sampleTime:J
    .end local v25           #st:Lcom/android/internal/os/ProcessStats$Stats;
    .end local v27           #totalTime:I
    .end local v28           #tst:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 988
    const-string v2, "ms to "

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 990
    const-string v2, "ms later"

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    .restart local v21       #sampleRealTime:J
    .restart local v23       #sampleTime:J
    :cond_2
    const-wide/16 v19, 0x0

    goto/16 :goto_1

    .line 1012
    .restart local v16       #N:I
    .restart local v17       #i:I
    .restart local v19       #percAwake:J
    .restart local v25       #st:Lcom/android/internal/os/ProcessStats$Stats;
    .restart local v27       #totalTime:I
    :cond_3
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_4

    const-string v4, " -"

    goto/16 :goto_3

    :cond_4
    const-string v4, "  "

    goto/16 :goto_3

    .line 1019
    .restart local v15       #M:I
    .restart local v18       #j:I
    .restart local v28       #tst:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_5
    move-object/from16 v0, v28

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_6

    const-string v4, "   -"

    goto :goto_5

    :cond_6
    const-string v4, "    "

    goto :goto_5

    .line 1010
    .end local v15           #M:I
    .end local v18           #j:I
    .end local v28           #tst:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1027
    .end local v25           #st:Lcom/android/internal/os/ProcessStats$Stats;
    :cond_8
    const-string v4, ""

    const/4 v5, -0x1

    const-string v6, "TOTAL"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v7, v27

    invoke-direct/range {v2 .. v14}, Lcom/android/internal/os/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1030
    invoke-virtual/range {v26 .. v26}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update()V
    .locals 26

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleTime:J

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleTime:J

    .line 280
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mLastSampleRealTime:J

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mCurrentSampleRealTime:J

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v21, v0

    .line 284
    .local v21, sysCpu:[J
    const-string v3, "/proc/stat"

    sget-object v4, Lcom/android/internal/os/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v3, v4, v5, v0, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const/4 v3, 0x0

    aget-wide v3, v21, v3

    const/4 v5, 0x1

    aget-wide v5, v21, v5

    add-long v24, v3, v5

    .line 289
    .local v24, usertime:J
    const/4 v3, 0x2

    aget-wide v22, v21, v3

    .line 291
    .local v22, systemtime:J
    const/4 v3, 0x3

    aget-wide v9, v21, v3

    .line 293
    .local v9, idletime:J
    const/4 v3, 0x4

    aget-wide v11, v21, v3

    .line 294
    .local v11, iowaittime:J
    const/4 v3, 0x5

    aget-wide v13, v21, v3

    .line 295
    .local v13, irqtime:J
    const/4 v3, 0x6

    aget-wide v19, v21, v3

    .line 297
    .local v19, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseUserTime:J

    sub-long v3, v24, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelUserTime:I

    .line 298
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseSystemTime:J

    sub-long v3, v22, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelSystemTime:I

    .line 299
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIoWaitTime:J

    sub-long v3, v11, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIoWaitTime:I

    .line 300
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIrqTime:J

    sub-long v3, v13, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIrqTime:I

    .line 301
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v3, v19, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelSoftIrqTime:I

    .line 302
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/os/ProcessStats;->mBaseIdleTime:J

    sub-long v3, v9, v3

    long-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/os/ProcessStats;->mRelIdleTime:I

    .line 313
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseUserTime:J

    .line 314
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseSystemTime:J

    .line 315
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/android/internal/os/ProcessStats;->mBaseIoWaitTime:J

    .line 316
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/internal/os/ProcessStats;->mBaseIrqTime:J

    .line 317
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/ProcessStats;->mBaseSoftIrqTime:J

    .line 318
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/internal/os/ProcessStats;->mBaseIdleTime:J

    .line 321
    .end local v9           #idletime:J
    .end local v11           #iowaittime:J
    .end local v13           #irqtime:J
    .end local v19           #softirqtime:J
    .end local v22           #systemtime:J
    .end local v24           #usertime:J
    :cond_0
    const-string v4, "/proc"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/ProcessStats;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/os/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/os/ProcessStats;->mCurPids:[I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v18, v0

    .line 324
    .local v18, loadAverages:[F
    const-string v3, "/proc/loadavg"

    sget-object v4, Lcom/android/internal/os/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v3, v4, v5, v6, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    const/4 v3, 0x0

    aget v15, v18, v3

    .line 327
    .local v15, load1:F
    const/4 v3, 0x1

    aget v17, v18, v3

    .line 328
    .local v17, load5:F
    const/4 v3, 0x2

    aget v16, v18, v3

    .line 329
    .local v16, load15:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    cmpl-float v3, v15, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    cmpl-float v3, v17, v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    cmpl-float v3, v16, v3

    if-eqz v3, :cond_2

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/os/ProcessStats;->mLoad1:F

    .line 331
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessStats;->mLoad5:F

    .line 332
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/ProcessStats;->mLoad15:F

    .line 333
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/os/ProcessStats;->onLoadChanged(FFF)V

    .line 340
    .end local v15           #load1:F
    .end local v16           #load15:F
    .end local v17           #load5:F
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mWorkingProcsSorted:Z

    .line 341
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/os/ProcessStats;->mFirst:Z

    .line 342
    return-void
.end method
