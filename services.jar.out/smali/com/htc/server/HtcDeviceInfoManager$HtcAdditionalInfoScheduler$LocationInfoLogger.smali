.class Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationInfoLogger"
.end annotation


# static fields
.field private static final MIN_LOGGING_INTERVAL:J = 0x7530L


# instance fields
.field private final mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

.field private mLastTimeOfLogging:J


# direct methods
.method public constructor <init>([Lcom/htc/server/HtcInfoOperator;)V
    .locals 2
    .parameter "infoOperators"

    .prologue
    .line 954
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .line 956
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mLastTimeOfLogging:J

    .line 957
    return-void
.end method


# virtual methods
.method public log()V
    .locals 10

    .prologue
    .line 959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 960
    .local v1, currentElapsedTime:J
    invoke-static {}, Lcom/htc/server/HtcDeviceInfoManager;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HtcDeviceInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentElapsedTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mLastTimeOfLogging: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mLastTimeOfLogging:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    iget-wide v6, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mLastTimeOfLogging:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 962
    iget-object v0, p0, Lcom/htc/server/HtcDeviceInfoManager$HtcAdditionalInfoScheduler$LocationInfoLogger;->mInfoOperators:[Lcom/htc/server/HtcInfoOperator;

    .local v0, arr$:[Lcom/htc/server/HtcInfoOperator;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 963
    .local v5, op:Lcom/htc/server/HtcInfoOperator;
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logLocationInfo()V

    .line 964
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logInstalledApp()V

    .line 965
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logStatusbarInfo()V

    .line 966
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logWallpaperInfo()V

    .line 967
    invoke-virtual {v5}, Lcom/htc/server/HtcInfoOperator;->logLockscreenShortcutInfo()V

    .line 962
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 970
    .end local v0           #arr$:[Lcom/htc/server/HtcInfoOperator;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #op:Lcom/htc/server/HtcInfoOperator;
    :cond_1
    return-void
.end method
