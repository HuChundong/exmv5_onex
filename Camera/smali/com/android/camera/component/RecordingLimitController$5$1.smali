.class Lcom/android/camera/component/RecordingLimitController$5$1;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RecordingLimitController$5;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/RecordingLimitController$5;

.field final synthetic val$e:Lcom/android/camera/OneValueEventArgs;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RecordingLimitController$5;Lcom/android/camera/OneValueEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RecordingLimitController$5$1;->this$1:Lcom/android/camera/component/RecordingLimitController$5;

    iput-object p2, p0, Lcom/android/camera/component/RecordingLimitController$5$1;->val$e:Lcom/android/camera/OneValueEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$5$1;->this$1:Lcom/android/camera/component/RecordingLimitController$5;

    iget-object v0, v0, Lcom/android/camera/component/RecordingLimitController$5;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$500(Lcom/android/camera/component/RecordingLimitController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clear cached storage information for "

    iget-object v2, p0, Lcom/android/camera/component/RecordingLimitController$5$1;->val$e:Lcom/android/camera/OneValueEventArgs;

    iget-object v2, v2, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/component/RecordingLimitController$5$1;->this$1:Lcom/android/camera/component/RecordingLimitController$5;

    iget-object v0, v0, Lcom/android/camera/component/RecordingLimitController$5;->this$0:Lcom/android/camera/component/RecordingLimitController;

    #getter for: Lcom/android/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/camera/component/RecordingLimitController;->access$300(Lcom/android/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/RecordingLimitController$5$1;->val$e:Lcom/android/camera/OneValueEventArgs;

    iget-object v1, v1, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
