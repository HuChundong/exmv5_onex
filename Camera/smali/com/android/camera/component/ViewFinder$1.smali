.class Lcom/android/camera/component/ViewFinder$1;
.super Lcom/android/camera/WorkerThread;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$1;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct {p0, p2}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$1;->this$0:Lcom/android/camera/component/ViewFinder;

    #calls: Lcom/android/camera/component/ViewFinder;->handlePreviewThreadMessage(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/camera/component/ViewFinder;->access$000(Lcom/android/camera/component/ViewFinder;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
