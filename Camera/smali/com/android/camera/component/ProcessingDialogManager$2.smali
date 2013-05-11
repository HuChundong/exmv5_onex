.class Lcom/android/camera/component/ProcessingDialogManager$2;
.super Lcom/android/camera/trigger/Trigger;
.source "ProcessingDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ProcessingDialogManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ProcessingDialogManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ProcessingDialogManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ProcessingDialogManager$2;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager$2;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    #getter for: Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/ProcessingDialogManager;->access$000(Lcom/android/camera/component/ProcessingDialogManager;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager$2;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    #getter for: Lcom/android/camera/component/ProcessingDialogManager;->m_CloseDialogWhenPausing:Z
    invoke-static {v0}, Lcom/android/camera/component/ProcessingDialogManager;->access$100(Lcom/android/camera/component/ProcessingDialogManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager$2;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ProcessingDialogManager;->access$200(Lcom/android/camera/component/ProcessingDialogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close dialog automatically"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/ProcessingDialogManager$2;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    iget-object v1, p0, Lcom/android/camera/component/ProcessingDialogManager$2;->this$0:Lcom/android/camera/component/ProcessingDialogManager;

    #getter for: Lcom/android/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/ProcessingDialogManager;->access$000(Lcom/android/camera/component/ProcessingDialogManager;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    :cond_0
    return-void
.end method
