.class Lcom/android/camera/component/RotateDialogManager$2;
.super Lcom/android/camera/trigger/Trigger;
.source "RotateDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/RotateDialogManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/RotateDialogManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/RotateDialogManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/RotateDialogManager$2;->this$0:Lcom/android/camera/component/RotateDialogManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$2;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #getter for: Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v0}, Lcom/android/camera/component/RotateDialogManager;->access$000(Lcom/android/camera/component/RotateDialogManager;)Lcom/android/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$2;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/RotateDialogManager;->access$100(Lcom/android/camera/component/RotateDialogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close dialog automatically"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/RotateDialogManager$2;->this$0:Lcom/android/camera/component/RotateDialogManager;

    iget-object v1, p0, Lcom/android/camera/component/RotateDialogManager$2;->this$0:Lcom/android/camera/component/RotateDialogManager;

    #getter for: Lcom/android/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/android/camera/Handle;
    invoke-static {v1}, Lcom/android/camera/component/RotateDialogManager;->access$000(Lcom/android/camera/component/RotateDialogManager;)Lcom/android/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/RotateDialogManager;->hideDialog(Lcom/android/camera/Handle;)V

    :cond_0
    return-void
.end method
