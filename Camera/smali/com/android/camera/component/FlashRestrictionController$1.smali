.class Lcom/android/camera/component/FlashRestrictionController$1;
.super Lcom/android/camera/WorkerThread;
.source "FlashRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/FlashRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FlashRestrictionController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/FlashRestrictionController$1;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-direct {p0, p2}, Lcom/android/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$1;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/android/camera/component/FlashRestrictionController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$1;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->handleAsyncMessage(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/camera/component/FlashRestrictionController;->access$000(Lcom/android/camera/component/FlashRestrictionController;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method protected onEnter()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$1;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->checkAllRestrictions()V
    invoke-static {v0}, Lcom/android/camera/component/FlashRestrictionController;->access$100(Lcom/android/camera/component/FlashRestrictionController;)V

    iget-object v0, p0, Lcom/android/camera/component/FlashRestrictionController$1;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    iget-object v1, p0, Lcom/android/camera/component/FlashRestrictionController$1;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/FlashRestrictionController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    return-void
.end method
