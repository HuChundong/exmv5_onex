.class public final Lcom/htc/utils/usage/FragmentRecord;
.super Ljava/lang/Object;
.source "FragmentRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentRecord"

.field private static sIsHtcApp:Z

.field private static volatile sIsInit:Z


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private mUsageTime:J


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/htc/utils/usage/FragmentRecord;->mFragment:Landroid/app/Fragment;

    .line 30
    return-void
.end method

.method private static isHtcApp(Landroid/app/Fragment;)Z
    .locals 8
    .parameter "f"

    .prologue
    .line 34
    sget-boolean v5, Lcom/htc/utils/usage/FragmentRecord;->sIsInit:Z

    if-nez v5, :cond_1

    .line 35
    const-class v6, Lcom/htc/utils/usage/FragmentRecord;

    monitor-enter v6

    .line 36
    :try_start_0
    sget-boolean v5, Lcom/htc/utils/usage/FragmentRecord;->sIsInit:Z

    if-nez v5, :cond_0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 39
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 43
    .local v4, pManager:Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_0

    .line 44
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 47
    .local v3, pInfo:Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 48
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 51
    .local v1, apInfo:Landroid/content/pm/ApplicationInfo;
    iget-boolean v5, v1, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v5, :cond_2

    .line 52
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/utils/usage/FragmentRecord;->sIsHtcApp:Z

    .line 56
    :goto_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/utils/usage/FragmentRecord;->sIsInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #apInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #pManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :cond_1
    sget-boolean v5, Lcom/htc/utils/usage/FragmentRecord;->sIsHtcApp:Z

    return v5

    .line 54
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #apInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #pInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #pManager:Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    sput-boolean v5, Lcom/htc/utils/usage/FragmentRecord;->sIsHtcApp:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 59
    .end local v1           #apInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 60
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v5, "FragmentRecord"

    const-string v7, "NameNotFound"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 65
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #pManager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method


# virtual methods
.method public onPause()V
    .locals 8

    .prologue
    .line 82
    iget-object v4, p0, Lcom/htc/utils/usage/FragmentRecord;->mFragment:Landroid/app/Fragment;

    invoke-static {v4}, Lcom/htc/utils/usage/FragmentRecord;->isHtcApp(Landroid/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/htc/utils/usage/FragmentRecord;->mUsageTime:J

    sub-long v1, v4, v6

    .line 86
    .local v1, totalTime:J
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v3

    .line 88
    .local v3, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    iget-object v4, p0, Lcom/htc/utils/usage/FragmentRecord;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 90
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 91
    const-string v4, "system_server"

    invoke-virtual {v3, v4}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "fragment_history"

    invoke-interface {v4, v5}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "activity_name"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "fragment_name"

    iget-object v6, p0, Lcom/htc/utils/usage/FragmentRecord;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "fragment_tag"

    iget-object v6, p0, Lcom/htc/utils/usage/FragmentRecord;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v4

    const-string v5, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 97
    invoke-static {v3}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 98
    invoke-virtual {v3}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 101
    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/utils/usage/FragmentRecord;->mUsageTime:J

    .line 104
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #totalTime:J
    .end local v3           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/utils/usage/FragmentRecord;->mFragment:Landroid/app/Fragment;

    invoke-static {v0}, Lcom/htc/utils/usage/FragmentRecord;->isHtcApp(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/utils/usage/FragmentRecord;->mUsageTime:J

    .line 77
    :cond_0
    return-void
.end method
