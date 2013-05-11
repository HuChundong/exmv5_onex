.class Lcom/android/camera/component/UIRotationManager$1;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/UIRotationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/UIRotationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$1;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$1;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/android/camera/component/UIRotationManager;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$1;->this$0:Lcom/android/camera/component/UIRotationManager;

    #getter for: Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/android/camera/component/UIRotationManager;->access$000(Lcom/android/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$1;->this$0:Lcom/android/camera/component/UIRotationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/UIRotationManager;->access$100(Lcom/android/camera/component/UIRotationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation listener enabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
