.class Lcom/android/camera/CameraThread$15;
.super Ljava/lang/Thread;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->deleteLatestMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$15;->this$0:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/CameraThread$15;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera/CameraThread$15;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraThread$15;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting media \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraThread$15;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread$15;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/CameraThread$15;->val$contentUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/camera/io/FileUtility;->deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v2, p0, Lcom/android/camera/CameraThread$15;->val$contentUri:Landroid/net/Uri;

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    :goto_0
    move-object v7, v0

    iget-object v1, p0, Lcom/android/camera/CameraThread$15;->this$0:Lcom/android/camera/CameraThread;

    new-instance v2, Lcom/android/camera/CameraThread$15$1;

    invoke-direct {v2, p0, v7}, Lcom/android/camera/CameraThread$15$1;-><init>(Lcom/android/camera/CameraThread$15;Lcom/android/camera/MediaEventArgs;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete media \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraThread$15;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-object v2, p0, Lcom/android/camera/CameraThread$15;->val$contentUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/camera/MediaDeletionFailedReason;->Unknown:Lcom/android/camera/MediaDeletionFailedReason;

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaEventArgs;-><init>(Lcom/android/camera/CaptureHandle;Landroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaDeletionFailedReason;)V

    goto :goto_0
.end method
