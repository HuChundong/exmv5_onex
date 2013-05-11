.class Lcom/android/camera/component/ObjectTrackingUI$8;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingUI;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$8;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

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

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingUI$8;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->onFaceUpdated([Lcom/android/camera/ObjectTrackingInfo;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ObjectTrackingUI;->access$500(Lcom/android/camera/component/ObjectTrackingUI;[Lcom/android/camera/ObjectTrackingInfo;)V

    return-void
.end method
