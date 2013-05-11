.class Lcom/android/internal/os/ZygoteInit$MyRunnable;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRunnable"
.end annotation


# instance fields
.field private final as:[Ljava/lang/String;

.field private end:I

.field private final runtime:Ldalvik/system/VMRuntime;

.field private start:I


# direct methods
.method constructor <init>(III[Ljava/lang/String;Ldalvik/system/VMRuntime;)V
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "len"
    .parameter "array"
    .parameter "runtime"

    .prologue
    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p1, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->start:I

    .line 302
    iput p2, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    .line 303
    if-le p2, p3, :cond_0

    iput p3, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    .line 304
    :cond_0
    iput-object p4, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->as:[Ljava/lang/String;

    .line 305
    iput-object p5, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->runtime:Ldalvik/system/VMRuntime;

    .line 306
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 308
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->start:I

    .line 311
    .local v1, k:I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->as:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 312
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 314
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 315
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_1

    .line 316
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 317
    iget-object v4, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->runtime:Ldalvik/system/VMRuntime;

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 318
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/android/internal/os/ZygoteInit$MyRunnable;->end:I

    if-lt v1, v4, :cond_0

    .line 330
    sget-wide v4, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    .line 331
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found for preloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 323
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Error;

    .end local v3           #t:Ljava/lang/Throwable;
    throw v3

    .line 325
    .restart local v3       #t:Ljava/lang/Throwable;
    :cond_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3           #t:Ljava/lang/Throwable;
    throw v3

    .line 326
    .restart local v3       #t:Ljava/lang/Throwable;
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
