.class Lcom/android/camera/component/UIRotationManager$2;
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

    iput-object p1, p0, Lcom/android/camera/component/UIRotationManager$2;->this$0:Lcom/android/camera/component/UIRotationManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$2;->this$0:Lcom/android/camera/component/UIRotationManager;

    #getter for: Lcom/android/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/android/camera/component/UIRotationManager;->access$000(Lcom/android/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/android/camera/component/UIRotationManager$2;->this$0:Lcom/android/camera/component/UIRotationManager;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/UIRotationManager;->access$200(Lcom/android/camera/component/UIRotationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation listener disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
