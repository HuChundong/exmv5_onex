.class public Landroid/webkit/WebViewPerfUtil;
.super Ljava/lang/Object;
.source "WebViewPerfUtil.java"


# static fields
.field public static final LEVEL_WAKELOCK_BENCHMARK:I = 0x1

.field private static final LEVEL_WAKELOCK_NONE:I = 0x0

.field public static final LEVEL_WAKELOCK_PERFORMANCE:I = 0x2

.field public static final LEVEL_WAKELOCK_VSYNC:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "WebViewPerfUtil"

.field public static final WebSite_Enable_Perf:[Ljava/lang/String;

.field private static bInPerfWebSite:Z

.field private static bInit:Z

.field private static mBmCnt:I

.field private static mBmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentWakeLockLevel:I

.field private static mPfCnt:I

.field private static mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mVsCnt:I

.field private static mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

.field private static mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 14
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    .line 15
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .line 16
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    .line 19
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 22
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 24
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 25
    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 28
    sput v2, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    .line 29
    sput v2, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    .line 30
    sput v2, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    .line 41
    sput v2, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://www.webkit.org/perf/sunspider-0.9.1/sunspider-0.9.1/driver.html"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "http://www.webkit.org/perf/sunspider-0.9/sunspider-driver.html"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://browsermark.rightware.com/browsermark/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://v8.googlecode.com/svn/data/benchmarks/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://www.craftymind.com/factory/"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acquireLowerPriorityWakeLockIfExisted()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 132
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-lez v0, :cond_1

    .line 134
    invoke-static {v1}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 135
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-lez v0, :cond_2

    .line 138
    invoke-static {v2}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 139
    sput v2, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 140
    :cond_2
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-lez v0, :cond_0

    .line 142
    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 143
    sput v3, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0
.end method

.method private static acquireWakeLock(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 148
    packed-switch p0, :pswitch_data_0

    .line 165
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no acquire level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 154
    :pswitch_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 156
    :cond_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    .line 160
    :pswitch_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    .line 162
    :cond_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->acquire()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static acquireWebViewPerfWakeLock(Landroid/webkit/WebView;I)V
    .locals 7
    .parameter "v"
    .parameter "level"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 210
    invoke-static {p0, p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget-boolean v1, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    if-eqz v1, :cond_0

    .line 213
    invoke-static {p1}, Landroid/webkit/WebViewPerfUtil;->isAcquireByHigherPriority(I)Z

    move-result v0

    .line 214
    .local v0, bAcquire:Z
    if-ne p1, v4, :cond_3

    .line 215
    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Benchmark Wake Lock, Benchmark Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 218
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 219
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 221
    sput v4, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 223
    :cond_2
    sget v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    goto :goto_0

    .line 224
    :cond_3
    if-ne p1, v5, :cond_5

    .line 225
    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Performance Wake Lock, Perf Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 228
    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 229
    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 231
    sput v5, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 233
    :cond_4
    sget v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    goto :goto_0

    .line 234
    :cond_5
    if-ne p1, v6, :cond_7

    .line 235
    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquire Vsync Wake Lock, Vsync Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 238
    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->acquireWakeLock(I)V

    .line 239
    invoke-static {v6}, Landroid/webkit/WebViewPerfUtil;->releaseLowerPriorityWakeLock(I)V

    .line 241
    sput v6, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    .line 243
    :cond_6
    sget v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    goto/16 :goto_0

    .line 245
    :cond_7
    const-string v1, "WebViewPerfUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no wakelock level("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is matched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getCnt(I)I
    .locals 1
    .parameter "level"

    .prologue
    .line 298
    packed-switch p0, :pswitch_data_0

    .line 302
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 299
    :pswitch_0
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    goto :goto_0

    .line 300
    :pswitch_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    goto :goto_0

    .line 301
    :pswitch_2
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7
    .parameter "c"

    .prologue
    const/16 v6, 0x400

    const/16 v5, 0x100

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 52
    sget-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 53
    sput-object p0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    .line 54
    sget-object v1, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x40

    const-string v2, "BrowserBenchmark"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    const-string v1, "BrowserPerfCpuFreq"

    invoke-virtual {v0, v5, v4, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 59
    const-string v1, "BrowserPerfCpuNum"

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 61
    const-string v1, "BrowserVsyncCpuFreq"

    invoke-virtual {v0, v5, v4, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 62
    const-string v1, "BrowserVsyncCpuNum"

    invoke-virtual {v0, v6, v3, v1}, Landroid/os/PowerManager;->newHtcCpuCtrl(IILjava/lang/String;)Landroid/os/PowerManager$HtcCpuCtrl;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    .line 63
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    .line 65
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private static isAcquireByHigherPriority(I)Z
    .locals 2
    .parameter "acquire_level"

    .prologue
    const/4 v0, 0x0

    .line 100
    sget v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    sget v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-lt p0, v1, :cond_0

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isInBrowserApp()Z
    .locals 2

    .prologue
    .line 92
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInPerfWebSite()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    return v0
.end method

.method public static isLoadPerfWebSite(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 68
    if-eqz p0, :cond_1

    .line 69
    sget-object v4, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    array-length v1, v4

    .line 70
    .local v1, nLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 72
    const-string v3, "WebViewPerfUtil"

    const-string v4, "Perf WebSite Detect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .line 79
    .end local v0           #i:I
    .end local v1           #nLen:I
    :goto_1
    return v2

    .line 70
    .restart local v0       #i:I
    .restart local v1       #nLen:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0           #i:I
    .end local v1           #nLen:I
    :cond_1
    sput-boolean v3, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    move v2, v3

    .line 79
    goto :goto_1
.end method

.method public static isNeedPerf(Landroid/webkit/WebView;I)Z
    .locals 1
    .parameter "v"
    .parameter "level"

    .prologue
    .line 96
    if-eqz p0, :cond_1

    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->isInBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-static {p0}, Landroid/webkit/WebViewPerfUtil;->isReadLaterWebView(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReadLaterWebView(Landroid/webkit/WebView;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PureReaderManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static releaseLowerPriorityWakeLock(I)V
    .locals 1
    .parameter "new_level"

    .prologue
    .line 109
    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-eqz v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-lt p0, v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 119
    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 123
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static releaseWakeLock(I)V
    .locals 3
    .parameter "level"

    .prologue
    const/4 v1, 0x0

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 201
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no release level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-void

    .line 173
    :pswitch_0
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mBmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 176
    :cond_0
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 180
    :pswitch_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 184
    :cond_1
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPfCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 187
    :cond_2
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 191
    :pswitch_2
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_3

    .line 192
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuFreqWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 195
    :cond_3
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    if-eqz v0, :cond_4

    .line 196
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mVsyncCpuNumWakeLock:Landroid/os/PowerManager$HtcCpuCtrl;

    invoke-virtual {v0}, Landroid/os/PowerManager$HtcCpuCtrl;->release()V

    .line 198
    :cond_4
    sput v1, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static releaseWebViewPerfWakeLock(Landroid/webkit/WebView;I)V
    .locals 6
    .parameter "v"
    .parameter "level"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 253
    invoke-static {p0, p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInit:Z

    if-eqz v0, :cond_0

    .line 256
    if-ne p1, v3, :cond_2

    .line 257
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Benchmark Wake Lock, Benchmark Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-eqz v0, :cond_0

    .line 262
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    .line 264
    sget v0, Landroid/webkit/WebViewPerfUtil;->mBmCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v3, :cond_0

    .line 265
    invoke-static {v3}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 266
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto :goto_0

    .line 268
    :cond_2
    if-ne p1, v4, :cond_3

    .line 269
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Performance Wake Lock, Perf Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-eqz v0, :cond_0

    .line 274
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    .line 276
    sget v0, Landroid/webkit/WebViewPerfUtil;->mPfCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v4, :cond_0

    .line 277
    invoke-static {v4}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 278
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto :goto_0

    .line 280
    :cond_3
    if-ne p1, v5, :cond_4

    .line 281
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release Vsync Wake Lock, Vsync Cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-eqz v0, :cond_0

    .line 286
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    .line 288
    sget v0, Landroid/webkit/WebViewPerfUtil;->mVsCnt:I

    if-nez v0, :cond_0

    sget v0, Landroid/webkit/WebViewPerfUtil;->mCurrentWakeLockLevel:I

    if-ne v0, v5, :cond_0

    .line 289
    invoke-static {v5}, Landroid/webkit/WebViewPerfUtil;->releaseWakeLock(I)V

    .line 290
    invoke-static {}, Landroid/webkit/WebViewPerfUtil;->acquireLowerPriorityWakeLockIfExisted()V

    goto/16 :goto_0

    .line 293
    :cond_4
    const-string v0, "WebViewPerfUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no wakelock level("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
