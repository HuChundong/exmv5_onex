.class Lcom/android/camera/component/RecordingLimitController$2;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingLimitController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/MediaEventArgs;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$100(Lcom/android/camera/component/RecordingLimitController;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$100(Lcom/android/camera/component/RecordingLimitController;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p3, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #setter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/android/camera/component/RecordingLimitController;->access$102(Lcom/android/camera/component/RecordingLimitController;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$200(Lcom/android/camera/component/RecordingLimitController;)Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$300(Lcom/android/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;
    invoke-static {v1}, Lcom/android/camera/component/RecordingLimitController;->access$200(Lcom/android/camera/component/RecordingLimitController;)Lcom/android/camera/io/StorageSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #setter for: Lcom/android/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/android/camera/io/StorageSlot;
    invoke-static {v0, v2}, Lcom/android/camera/component/RecordingLimitController;->access$202(Lcom/android/camera/component/RecordingLimitController;Lcom/android/camera/io/StorageSlot;)Lcom/android/camera/io/StorageSlot;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$2;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$300(Lcom/android/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/RecordingLimitController$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method
