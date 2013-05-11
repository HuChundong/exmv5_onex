.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# static fields
.field private static crash_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "t"
    .parameter "e"

    .prologue
    const/16 v5, 0xa

    .line 71
    sget v2, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    .line 73
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidRuntime_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_crash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "crash in the same process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 85
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 86
    const-string v2, "AndroidRuntime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :goto_1
    new-instance v0, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v0, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .local v0, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    const-string v3, "java.lang.OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    .line 97
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 109
    .end local v0           #crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    :goto_2
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 88
    :cond_2
    :try_start_1
    const-string v2, "AndroidRuntime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, t2:Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "AndroidRuntime"

    const-string v3, "Error reporting crash"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 108
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_2

    .end local v1           #t2:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 109
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 108
    throw v2

    .line 103
    .restart local v1       #t2:Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_3
.end method
