.class final Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsLocationProviderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 2091
    const-string v0, "GpsLocationProvider"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2092
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2095
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2096
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->initialize()V
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2097
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2099
    const-string v2, "GpsLocationProvider"

    const-string v3, "Create ProviderHandler Object..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    new-instance v3, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2802(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2102
    const-string v2, "GpsLocationProvider"

    const-string v3, "Create ProviderHandler no-ex!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2114
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2115
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2116
    return-void

    .line 2103
    :catch_0
    move-exception v0

    .line 2104
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Renew ProviderHandler..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2106
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    new-instance v3, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2802(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2107
    const-string v2, "GpsLocationProvider"

    const-string v3, "Renew ProviderHandler no-ex!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2108
    :catch_1
    move-exception v1

    .line 2109
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Renew ProviderHandler FAILED!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
