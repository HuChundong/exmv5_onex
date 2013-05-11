.class Lcom/android/camera/component/StorageWatcher;
.super Lcom/android/camera/component/IntentReceiver;
.source "StorageWatcher.java"


# static fields
.field static final NAME:Ljava/lang/String; = "Storage Watcher"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6

    const-string v1, "Storage Watcher"

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V

    return-void
.end method


# virtual methods
.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/component/StorageWatcher;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->storageMountedEvent:Lcom/android/camera/event/Event;

    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v5}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v5, v5, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    :cond_0
    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown mounted path : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->storageUnmountedEvent:Lcom/android/camera/event/Event;

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v2, v1, Lcom/android/camera/HTCCamera;->storageEjectedEvent:Lcom/android/camera/event/Event;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v5, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method
