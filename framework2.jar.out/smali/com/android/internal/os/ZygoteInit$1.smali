.class final Lcom/android/internal/os/ZygoteInit$1;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 268
    :try_start_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "Zygote"

    const-string v2, "preload before preloadResources()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    #calls: Lcom/android/internal/os/ZygoteInit;->preloadResources()V
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$000()V

    .line 271
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, localException:Ljava/lang/Exception;
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preload preloadResources localException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isError:Z

    goto :goto_0
.end method
