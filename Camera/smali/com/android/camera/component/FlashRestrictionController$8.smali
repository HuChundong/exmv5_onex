.class Lcom/android/camera/component/FlashRestrictionController$8;
.super Landroid/os/FileObserver;
.source "FlashRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/FlashRestrictionController;->startFileObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/FlashRestrictionController$8;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$8;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #getter for: Lcom/android/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/android/camera/WorkerThread;
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$500(Lcom/android/camera/component/FlashRestrictionController;)Lcom/android/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2715

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/WorkerThread;->sendMessage(IJZ)Z

    return-void
.end method
