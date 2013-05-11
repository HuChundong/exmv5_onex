.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v12, 0x2

    :try_start_1
    const-string v7, "MountService"

    const-string v8, "Disabling UMS after cable disconnect"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForUmsProceeding()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)V

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_6e

    :try_start_14
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v6, :cond_38

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_38
    monitor-exit v8
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_6b

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v6, :cond_121

    :try_start_3c
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v7

    if-nez v7, :cond_52

    aget-object v7, v4, v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_77

    :cond_52
    aget-object v7, v4, v1

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_77

    invoke-static {}, Lcom/android/server/MountService;->access$800()Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_65} :catch_6e

    move-result v7

    if-eqz v7, :cond_77

    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :catchall_6b
    move-exception v7

    :try_start_6c
    monitor-exit v8
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v7
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception v0

    const-string v7, "MountService"

    const-string v8, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_76
    return-void

    :cond_77
    const/4 v3, 0x0

    :goto_78
    if-ge v3, v12, :cond_b0

    :try_start_7a
    const-string v7, "MountService"

    const-string v8, "Prepare to mount back to device"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "shared"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    const-string v9, "ums"

    const/4 v10, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v7, "MountService"

    const-string v8, "unshare the sdcard"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    const/4 v3, 0x0

    :goto_b1
    if-ge v3, v12, :cond_68

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "unmounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f6

    const-string v7, "MountService"

    const-string v8, "Switch to MEDIA_UNMOUNTED"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_cb
    const-string v7, "MountService"

    const-string v8, "Wait for switch to MEDIA_SHARED (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_e2} :catch_6e

    :try_start_e2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x190

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ea
    .catch Ljava/lang/InterruptedException; {:try_start_e2 .. :try_end_ea} :catch_ed
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ea} :catch_6e

    :goto_ea
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    :catch_ed
    move-exception v2

    :try_start_ee
    const-string v7, "MountService"

    const-string v8, "Fail to wait for switch to MEDIA_SHARED"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    :cond_f6
    const-string v7, "MountService"

    const-string v8, "Wait for switch to MEDIA_UNMOUNTED (%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10d} :catch_6e

    :try_start_10d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_115
    .catch Ljava/lang/InterruptedException; {:try_start_10d .. :try_end_115} :catch_118
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_115} :catch_6e

    :goto_115
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :catch_118
    move-exception v2

    :try_start_119
    const-string v7, "MountService"

    const-string v8, "Fail to wait for switch to MEDIA_UNMOUNTED"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    :cond_121
    add-int/lit8 v1, v6, -0x1

    :goto_123
    if-ltz v1, :cond_15d

    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "unmounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_138

    :cond_135
    :goto_135
    add-int/lit8 v1, v1, -0x1

    goto :goto_123

    :cond_138
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    aget-object v8, v4, v1

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v7, v8}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_135

    const-string v7, "MountService"

    const-string v8, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v11, v4, v1

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    :cond_15d
    iget-object v7, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->UmsProceedingDone()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_162} :catch_6e

    goto/16 :goto_76
.end method
