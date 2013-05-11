.class Lcom/android/camera/component/RecordingLimitController$4$1;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingLimitController$4;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/RecordingLimitController$4;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$4$1;->this$1:Lcom/android/camera/component/RecordingLimitController$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$4$1;->this$1:Lcom/android/camera/component/RecordingLimitController$4;

    iget-object v0, v0, Lcom/android/camera/component/RecordingLimitController$4;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$400(Lcom/android/camera/component/RecordingLimitController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear cached storage information"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$4$1;->this$1:Lcom/android/camera/component/RecordingLimitController$4;

    iget-object v0, v0, Lcom/android/camera/component/RecordingLimitController$4;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$300(Lcom/android/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
