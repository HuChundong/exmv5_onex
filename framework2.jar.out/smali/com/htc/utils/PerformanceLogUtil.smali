.class public Lcom/htc/utils/PerformanceLogUtil;
.super Ljava/lang/Object;
.source "PerformanceLogUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final Enabled:Z = false

.field private static final TAG:Ljava/lang/String; = "Performance"

.field private static mCurRotatingAppTokenStr:Ljava/lang/String;

.field private static mInitedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    .line 47
    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    .line 181
    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "pkg"
    .parameter "id"

    .prologue
    .line 212
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 214
    invoke-static {v1, p2}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 219
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Performance"

    const-string v3, "getUsLabel failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "labelRes"

    .prologue
    const/4 v3, 0x0

    .line 188
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v3

    .line 207
    :goto_0
    return-object v0

    .line 191
    :cond_1
    const/4 v0, 0x0

    .line 193
    .local v0, label:Ljava/lang/String;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 194
    .local v2, org:Landroid/content/res/Configuration;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 195
    .local v1, mod:Landroid/content/res/Configuration;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 198
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 199
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    throw v4

    .line 200
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static logAddAppToken(Ljava/lang/String;)V
    .locals 3
    .parameter "winToken"

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[AutoProf](103) Add new Window App Token { HistoryRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static logCheckPendingRotate()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "Performance"

    const-string v1, "[AutoProf](220) Rotate animation stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public static logDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 83
    .local v0, keyCode:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 84
    const-string v1, "Performance"

    const-string v2, "[AutoProf](112) Back key triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0           #keyCode:I
    :cond_0
    return-void
.end method

.method public static logDisplayActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "componentName"

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[AutoProf](133) Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logFinishDrawing(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 67
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    .local v2, resources:Landroid/content/res/Resources;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "[AutoProf](111) Finish drawing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v4, "Performance"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 70
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static logHandleConfigurationChangedEnd(J)V
    .locals 4
    .parameter "startTime"

    .prologue
    .line 146
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](214) Top app configuration change finished { Duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public static logHandleConfigurationChangedStart(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "at"
    .parameter "cfg"

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 122
    .local v1, application:Landroid/app/Application;
    const/4 v2, 0x0

    .line 123
    .local v2, label:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 125
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 127
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v3, v5}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "[AutoProf](212) Going to change top app configuration, orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v5, "Performance"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public static logHomeKeyTriggered()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Performance"

    const-string v1, "[AutoProf](114) Home key triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public static logHtcHandleRotateAnimation(F)V
    .locals 3
    .parameter "animationScale"

    .prologue
    .line 161
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AutoProf](219) Rotate animation start, token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    .line 167
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logHtcHandleRotateAnimation(Landroid/view/IApplicationToken;I)V
    .locals 3
    .parameter "appToken"
    .parameter "duration"

    .prologue
    .line 170
    if-eqz p0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[AutoProf](219) Rotate animation start, token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logMoveAppTokensToTop(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    .local p1, allWindows:Ljava/util/List;,"Ljava/util/List<Landroid/view/WindowManagerPolicy$WindowState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[AutoProf](104) Move Window App token to top { tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public static logNoteStartWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "wakeLockType"

    .prologue
    .line 112
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "SCREEN_FROZEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "partial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "Performance"

    const-string v1, "[AutoProf](211) Start rotating, SCREEN_FROZEN partial wakelock held"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logNoteStopWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "wakeLockType"

    .prologue
    .line 151
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v0, "SCREEN_FROZEN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "partial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "Performance"

    const-string v1, "[AutoProf](215) Finish rotating, SCREEN_FROZEN partial wakelock released "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logOnCreateActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 50
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    .line 53
    :cond_0
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[AutoProf](107) First time instantiate this activity { ActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public static logPerformConfigurationChange(Landroid/content/ComponentCallbacks;J)V
    .locals 5
    .parameter "cb"
    .parameter "startTime"

    .prologue
    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v0, v3, p1

    .line 137
    .local v0, duration:J
    const-wide/16 v3, 0x32

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "[AutoProf](213) Configutation change callback { Callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v3, "Performance"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logSetRotation(Landroid/view/IApplicationToken;)V
    .locals 3
    .parameter "appToken"

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    .line 184
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](224) Set rotation, activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public static logShowActionBarOverflowMenu()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "Performance"

    const-string v1, "[AutoProf](134) Show Action Bar Overflow Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static logStartProcessLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "processName"
    .parameter "activityName"
    .parameter "pid"

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[AutoProf](102) Starting process { Process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ActivityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "}, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "Performance"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public static logWindowAnimationStop(Ljava/lang/String;)V
    .locals 3
    .parameter "appToken"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    const-string v0, "Performance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AutoProf](130) Window animation stop, record="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method
