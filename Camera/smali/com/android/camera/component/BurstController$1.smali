.class Lcom/android/camera/component/BurstController$1;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->deleteLatestImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;

.field final synthetic val$contentUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;[Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$1;->val$contentUris:[Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    invoke-virtual {v3}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->val$contentUris:[Landroid/net/Uri;

    array-length v3, v3

    add-int/lit8 v9, v3, -0x1

    :goto_0
    if-ltz v9, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->val$contentUris:[Landroid/net/Uri;

    aget-object v2, v3, v9

    if-nez v9, :cond_0

    const/4 v5, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$300(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-static {v3, v2}, Lcom/android/camera/io/FileUtility;->deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/android/camera/MediaEventArgs;

    sget-object v4, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    :goto_2
    move-object v8, v0

    new-instance v3, Lcom/android/camera/component/BurstController$1$1;

    invoke-direct {v3, p0, v7, v8}, Lcom/android/camera/component/BurstController$1$1;-><init>(Lcom/android/camera/component/BurstController$1;Lcom/android/camera/CameraThread;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v7, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/BurstController$1;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete content \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/MediaEventArgs;

    sget-object v4, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    sget-object v6, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaDeletionFailedReason;)V

    goto :goto_2

    :cond_2
    return-void
.end method
