.class public Lcom/htc/wrap/com/android/internal/app/HtcWrapIUsageStats;
.super Ljava/lang/Object;
.source "HtcWrapIUsageStats.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllHtcWrapPkgUsageStats()[Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/htc/wrap/com/android/internal/app/HtcWrapIUsageStats;->getIUsageStats()Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v7

    .line 21
    .local v7, allPkgUsageStats:[Lcom/android/internal/os/PkgUsageStats;
    array-length v0, v7

    new-array v6, v0, [Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;

    .line 22
    .local v6, allHtcWrapPkgUsageStats:[Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    .line 23
    new-instance v0, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;

    aget-object v1, v7, v8

    iget-object v1, v1, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    aget-object v2, v7, v8

    iget v2, v2, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    aget-object v3, v7, v8

    iget-wide v3, v3, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    aget-object v5, v7, v8

    iget-object v5, v5, Lcom/android/internal/os/PkgUsageStats;->componentResumeTimes:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/htc/wrap/com/android/internal/os/HtcWrapPkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    aput-object v0, v6, v8

    .line 22
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-object v6
.end method

.method public static getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/wrap/com/android/internal/app/HtcWrapIUsageStats;->getIUsageStats()Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;

    move-result-object v0

    return-object v0
.end method

.method private static getIUsageStats()Lcom/android/internal/app/IUsageStats;
    .locals 1

    .prologue
    .line 12
    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IUsageStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v0

    return-object v0
.end method
