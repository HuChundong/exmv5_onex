.class Lcom/android/camera/HTCCamera$25;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->setupEventHandlers()V
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
        "Lcom/android/camera/ExternalCommandEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/HTCCamera$25;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onExternalCommandReceived(Lcom/android/camera/ExternalCommandEventArgs;)V
    invoke-static {v0, p3}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/ExternalCommandEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera$25;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method
