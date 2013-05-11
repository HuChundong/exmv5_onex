.class Lcom/android/camera/component/ViewFinder$14;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ViewFinder;->setupUIEventHandlers(Lcom/android/camera/HTCCamera;)V
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ViewFinder$14;->this$0:Lcom/android/camera/component/ViewFinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$14;->this$0:Lcom/android/camera/component/ViewFinder;

    const/16 v1, 0x2719

    #calls: Lcom/android/camera/component/ViewFinder;->sendPreviewThreadMessage(I)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ViewFinder;->access$1300(Lcom/android/camera/component/ViewFinder;I)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$14;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/component/ViewFinder;->m_PreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$1400(Lcom/android/camera/component/ViewFinder;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/component/ViewFinder$14;->this$0:Lcom/android/camera/component/ViewFinder;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ViewFinder;->access$1500(Lcom/android/camera/component/ViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stoppingEvent  m_PreviewSurfaceView INVISIBLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
