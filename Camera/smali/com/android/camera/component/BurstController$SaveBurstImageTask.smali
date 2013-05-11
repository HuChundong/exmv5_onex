.class Lcom/android/camera/component/BurstController$SaveBurstImageTask;
.super Lcom/android/camera/io/SaveImageTask;
.source "BurstController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBurstImageTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/BurstController;[B)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    invoke-virtual {p1}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/camera/io/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    return-void
.end method


# virtual methods
.method protected onMediaStoreDataInserted(ZLcom/android/camera/MediaInfo;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I
    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$100(Lcom/android/camera/component/BurstController;)I

    move-result v3

    iget-object v5, p2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$104(Lcom/android/camera/component/BurstController;)I

    iget-object v0, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$100(Lcom/android/camera/component/BurstController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CaptureCount:I
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$200(Lcom/android/camera/component/BurstController;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$SaveBurstImageTask;->this$0:Lcom/android/camera/component/BurstController;

    #setter for: Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I
    invoke-static {v0, v4}, Lcom/android/camera/component/BurstController;->access$102(Lcom/android/camera/component/BurstController;I)I

    :cond_0
    return-void
.end method
