.class Lcom/android/camera/component/ObjectTrackingRenderer$1;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingRenderer;->initializeOverride()V
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
        "Lcom/android/camera/DrawPreviewFilterEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$1;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/DrawPreviewFilterEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/DrawPreviewFilterEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/DrawPreviewFilterEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer$1;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    #calls: Lcom/android/camera/component/ObjectTrackingRenderer;->drawObjects(Lcom/android/camera/DrawPreviewFilterEventArgs;)V
    invoke-static {v0, p3}, Lcom/android/camera/component/ObjectTrackingRenderer;->access$000(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/DrawPreviewFilterEventArgs;)V

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/DrawPreviewFilterEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ObjectTrackingRenderer$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/DrawPreviewFilterEventArgs;)V

    return-void
.end method
