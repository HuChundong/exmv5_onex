.class Lcom/android/camera/component/ReviewAnimationUI$2$1;
.super Ljava/lang/Object;
.source "ReviewAnimationUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimationUI$2;->run()V
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
        "Lcom/android/camera/imaging/RawImageEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ReviewAnimationUI$2;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimationUI$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationUI$2$1;->this$1:Lcom/android/camera/component/ReviewAnimationUI$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/imaging/RawImageEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ReviewAnimationUI$2$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/imaging/RawImageEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/imaging/RawImageEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$2$1;->this$1:Lcom/android/camera/component/ReviewAnimationUI$2;

    iget-object v0, v0, Lcom/android/camera/component/ReviewAnimationUI$2;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$2$1;->this$1:Lcom/android/camera/component/ReviewAnimationUI$2;

    iget-object v1, v1, Lcom/android/camera/component/ReviewAnimationUI$2;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    const/16 v2, 0x2710

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ReviewAnimationUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    return-void
.end method
